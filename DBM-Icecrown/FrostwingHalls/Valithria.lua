local mod	= DBM:NewMod("Valithria", "DBM-Icecrown", 4)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20261125000000")
mod:SetCreatureID(36789)
mod:SetEncounterID(854)
mod:SetUsedIcons(8)
mod.onlyHighest = true--Instructs DBM health tracking to literally only store highest value seen during fight, even if it drops below that

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 70754 71748 72023 72024 71189",
	"SPELL_CAST_SUCCESS 71179 71741 70588",
	"SPELL_AURA_APPLIED 70633 71283 72025 72026 70751 71738 72022 72023 69325 71730 70873 71941",
	"SPELL_AURA_APPLIED_DOSE 70751 71738 72022 72023 70873 71941",
	"SPELL_AURA_REMOVED 70633 71283 72025 72026 69325 71730 70873 71941",
	"SPELL_DAMAGE 71086 71743 71086 72030",
	"SPELL_MISSED 71086 71743 71086 72030",
	"CHAT_MSG_MONSTER_YELL",
	"UNIT_SPELLCAST_SUCCEEDED boss1"
)

local warnCorrosion			= mod:NewStackAnnounce(70751, 2, nil, false)
local warnGutSpray			= mod:NewTargetAnnounce(70633, 3, nil, "Tank|Healer")
local warnManaVoid			= mod:NewSpellAnnounce(71179, 2, nil, "ManaUser")
local warnSupression		= mod:NewSpellAnnounce(70588, 3)
local warnPortalSoon		= mod:NewSoonAnnounce(72483, 2, nil)
local warnPortal			= mod:NewCountAnnounce(72483, 3, nil)
local warnPortalOpen		= mod:NewAnnounce("WarnPortalOpen", 4, 72483, nil, nil, nil, 72483)

local specWarnGutSpray		= mod:NewSpecialWarningDefensive(70633, nil, nil, nil, 1, 2)
local specWarnLayWaste		= mod:NewSpecialWarningSpell(69325, nil, nil, nil, 2, 2)
local specWarnGTFO			= mod:NewSpecialWarningGTFO(71179, nil, nil, nil, 1, 8)
local specWarnSuppressers	= mod:NewSpecialWarningSpell(70935)

local timerLayWaste			= mod:NewBuffActiveTimer(12, 69325, nil, nil, nil, 2)
local timerNextPortal		= mod:NewCDCountTimer(45, 72483, nil, nil, nil, 5, nil, DBM_COMMON_L.HEALER_ICON) -- ~3s variance. (25H Lordearon 2022/10/06 || 25H Lordearon 2022/10/09) - pull:45.0, 45.6, 47.9, 46.6 || pull:45.4, 45.4, 45.1, 46.5
local timerPortalsOpen		= mod:NewTimer(15, "TimerPortalsOpen", 72483, nil, nil, 6, nil, nil, nil, nil, nil, nil, nil, 72483)
local timerPortalsClose		= mod:NewTimer(10, "TimerPortalsClose", 72483, nil, nil, 6, nil, nil, nil, nil, nil, nil, nil, 72483)
local timerHealerBuff		= mod:NewBuffFadesTimer(40, 70873, nil, nil, nil, 5, nil, DBM_COMMON_L.HEALER_ICON)
local timerGutSpray			= mod:NewBuffFadesTimer(12, 70633, nil, "Tank|Healer", nil, 5)
local timerCorrosion		= mod:NewBuffFadesTimer(6, 70751, nil, false, nil, 3)
local timerBlazingSkeleton	= mod:NewNextCountTimer(55, 70933, "TimerBlazingSkeleton", nil, nil, 1, 17204)
local timerAbom				= mod:NewNextCountTimer(59, 70922, "TimerAbom", nil, nil, 1)
local timerSuppressers		= mod:NewNextCountTimer(59, 70935, nil, nil, nil, 1)
local timerZombie			= mod:NewNextCountTimer(30, 71031, nil, nil, nil, 1)
local timerArchmage			= mod:NewNextCountTimer(29, 71076, nil, nil, nil, 1)

local soundSpecWarnSuppressers	= mod:NewSound(70935)

local berserkTimer			= mod:NewBerserkTimer(420)

mod:AddSetIconOption("SetIconOnBlazingSkeleton", 70933, true, 5, {8})

mod.vb.portalCount = 0
local portalNameN = GetSpellInfo(71305)
local portalNameH = GetSpellInfo(71987)

-- AzerothCore (npc_the_lich_king_controller): on engage the Lich King casts the
-- "Summon Timer" auras at 5/10/15/20/30s. Every aura except Suppresser also force-casts
-- a spawn immediately. Periodic amplitudes come from Spell.dbc; spell_dreamwalker_decay_periodic_timer_aura
-- subtracts 1s (5s for skeleton) from the periodic timer on every tick, but the amplitude
-- itself never changes, so after the first period the interval stays constant.
--   Abomination  70915: 5,  +60, then every 59
--   Suppressers  70912: 10 (no instant spawn) +60 = 70, then every 59
--   Zombie       70914: 15, +30, then every 30 (no decay)
--   Archmage     70916: 20, +30, then every 29
--   Skeleton     70913: 30, +60, then every 55
local waves = {
	Abom		= {timer = timerAbom,				first = 5,	second = 60, rest = 59},
	Suppressers	= {timer = timerSuppressers,		first = 70,	second = 59, rest = 59},
	Zombie		= {timer = timerZombie,				first = 15,	second = 30, rest = 30},
	Archmage	= {timer = timerArchmage,			first = 20,	second = 30, rest = 29},
	Skeleton	= {timer = timerBlazingSkeleton,	first = 30,	second = 60, rest = 55},
}

local function WaveSpawned(self, key)
	local w = waves[key]
	local count = (self.vb[key.."Count"] or 0) + 1
	self.vb[key.."Count"] = count
	if key == "Suppressers" then
		specWarnSuppressers:Show()
		soundSpecWarnSuppressers:Play("Interface\\AddOns\\DBM-Core\\sounds\\RaidAbilities\\suppressersSpawned.mp3")
	end
	local nextIn = count == 1 and w.second or w.rest
	w.timer:Start(nextIn, count + 1)
	self:Schedule(nextIn, WaveSpawned, self, key)
end

local function Portals(self)
	self.vb.portalCount = self.vb.portalCount + 1
	warnPortal:Show(self.vb.portalCount)
	warnPortalOpen:Cancel()
	timerPortalsOpen:Cancel()
	warnPortalSoon:Cancel()
	warnPortalOpen:Schedule(15)
	timerPortalsOpen:Start()
	timerPortalsClose:Schedule(15)
	warnPortalSoon:Schedule(40)
	timerNextPortal:Start(nil, self.vb.portalCount+1)
--	self:Unschedule(Portals)
--	self:Schedule(45.4, Portals, self)--This will never be perfect, since it's never same. 45-48sec variations
end

function mod:OnCombatStart(delay)
	if self:IsHeroic() then
		berserkTimer:Start(-delay)
	end
	self.vb.portalCount = 0
	timerNextPortal:Start(nil, 1) -- Hardcode 1 on combatStart, there's no need to calculate self.vb.portalCount+1
	warnPortalSoon:Schedule(40)
--	self:Schedule(45.4, Portals, self)--This will never be perfect, since it's never same. 45-48sec variations
	for key, w in pairs(waves) do
		self.vb[key.."Count"] = 0
		w.timer:Start(w.first - delay, 1)
		self:Schedule(w.first - delay, WaveSpawned, self, key)
	end
end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if args:IsSpellID(70754, 71748, 72023, 72024) then--Fireball (its the first spell Blazing SKeleton's cast upon spawning)
		if self.Options.SetIconOnBlazingSkeleton then
			self:ScanForMobs(args.sourceGUID, 2, 8, 1, nil, 12, "SetIconOnBlazingSkeleton")
		end
	elseif spellId == 71189 then
		DBM:EndCombat(self)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if args:IsSpellID(71179, 71741) then--Mana Void
		warnManaVoid:Show()
	elseif spellId == 70588 and self:AntiSpam(5, 1) then--Supression
		warnSupression:Show(args.destName)
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(70633, 71283, 72025, 72026) and args:IsDestTypePlayer() then--Gut Spray
		timerGutSpray:Start(args.destName)
		warnGutSpray:CombinedShow(0.3, args.destName)
		if args:IsPlayer() and self:IsTank() then
			specWarnGutSpray:Show()
			specWarnGutSpray:Play("defensive")
		end
	elseif args:IsSpellID(70751, 71738, 72022, 72023) and args:IsDestTypePlayer() then--Corrosion
		warnCorrosion:Show(args.destName, args.amount or 1)
		timerCorrosion:Start(args.destName)
	elseif args:IsSpellID(69325, 71730) then--Lay Waste
		specWarnLayWaste:Show()
		specWarnLayWaste:Play("aesoon")
		timerLayWaste:Start()
	elseif args:IsSpellID(70873, 71941) and args:IsPlayer() then	--Emerald Vigor/Twisted Nightmares (portal healers)
		timerHealerBuff:Stop()
		timerHealerBuff:Start()
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(70633, 71283, 72025, 72026) then--Gut Spray
		timerGutSpray:Cancel(args.destName)
	elseif args:IsSpellID(69325, 71730) then--Lay Waste
		timerLayWaste:Cancel()
	elseif args:IsSpellID(70873, 71941) and args:IsPlayer() then	--Emerald Vigor/Twisted Nightmares (portal healers)
		timerHealerBuff:Stop()
	end
end

function mod:SPELL_DAMAGE(_, _, _, destGUID, _, _, spellId, spellName)
	if (spellId == 71086 or spellId == 71743 or spellId == 71086 or spellId == 72030) and destGUID == UnitGUID("player") and self:AntiSpam(2, 2) then		-- Mana Void
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_MISSED = mod.SPELL_DAMAGE

function mod:UNIT_SPELLCAST_SUCCEEDED(_, spellName)
	if (spellName == portalNameN or spellName == portalNameH) and self:AntiSpam(2, 3) then -- Summon Dream Portal / Summon Nightmare Portal
		Portals(self)
	end
end

-- I have multiple logs where Yell event is missing due to a bad flag in the SQL, most likely. Best to use boss1 unit events that have proven to be reliable for Warmane, which is also much more efficient
--[[function mod:CHAT_MSG_MONSTER_YELL(msg)
	if (msg == L.YellPortals or msg:find(L.YellPortals)) and self:LatencyCheck() then
		self:SendSync("NightmarePortal")
	end
end

function mod:OnSync(msg)
	if msg == "NightmarePortal" and self:IsInCombat() then
		self:Unschedule(Portals)
		Portals(self)
	end
end]]
