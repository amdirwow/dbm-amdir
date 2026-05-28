local mod	= DBM:NewMod("Deathwhisper", "DBM-Icecrown", 1)
local L		= mod:GetLocalizedStrings()

local CancelUnitBuff, GetSpellInfo = CancelUnitBuff, GetSpellInfo
local UnitGUID = UnitGUID

mod:SetRevision("20260528120000")
mod:SetCreatureID(36855)
mod:SetEncounterID(846)
mod:SetUsedIcons(1, 2, 3, 7, 8)
mod:SetMinSyncRevision(20220905000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 71420 72007 72501 72502 70900 70901 72499 72500 72497 72496",
	"SPELL_CAST_SUCCESS 71289 71204 72905 72906 72907 72908",
	"SPELL_AURA_APPLIED 71289 71001 72108 72109 72110 71237 70674 71204",
	"SPELL_AURA_APPLIED_DOSE 71204",
	"SPELL_AURA_REMOVED 70842 71289",
	"SPELL_INTERRUPT",
	"SPELL_SUMMON 71363 71426",
	"SPELL_DAMAGE 71544 72010 72011 72012",
	"SWING_DAMAGE",
	"CHAT_MSG_MONSTER_YELL",
	"UNIT_SPELLCAST_SUCCEEDED boss1"
)

local canShadowmeld = select(2, UnitRace("player")) == "NightElf"
local canVanish = select(2, UnitClass("player")) == "ROGUE"

-- General
local specWarnWeapons				= mod:NewSpecialWarning("WeaponsStatus", false)

local berserkTimer					= mod:NewBerserkTimer(600)

mod:RemoveOption("HealthFrame")
mod:AddBoolOption("ShieldHealthFrame", false, "misc")

-- Adds
mod:AddTimerLine(DBM_COMMON_L.ADDS)
local warnAddsSoon					= mod:NewAnnounce("WarnAddsSoon", 2, 61131)
local warnReanimating				= mod:NewAnnounce("WarnReanimating", 3, 34018)
local warnDarkTransformation		= mod:NewSpellAnnounce(70900, 4)
local warnDarkEmpowerment			= mod:NewSpellAnnounce(70901, 4)

local specWarnVampricMight			= mod:NewSpecialWarningDispel(70674, "MagicDispeller", nil, nil, 1, 2)
local specWarnDarkMartyrdom			= mod:NewSpecialWarningRun(71236, "Melee", nil, nil, 4, 2)

local timerAdds						= mod:NewTimer(60, "TimerAdds", 61131, nil, nil, 1, DBM_COMMON_L.TANK_ICON..DBM_COMMON_L.DAMAGE_ICON)

-- Boss
mod:AddTimerLine(L.name)
-- Stage One
mod:AddTimerLine(DBM_CORE_L.SCENARIO_STAGE:format(1))
local warnDominateMind				= mod:NewTargetNoFilterAnnounce(71289, 3)

local specWarnDeathDecay			= mod:NewSpecialWarningGTFO(71001, nil, nil, nil, 1, 8)

local timerDominateMind				= mod:NewBuffActiveTimer(12, 71289, nil, nil, nil, 5)
local timerDominateMindCD			= mod:NewCDTimer(43, 71289, nil, nil, nil, 3) -- Client-only fallback. Recent logs on this server land MC around 41.5-44.2s, so 43s is the closest fixed bar.

local soundSpecWarnDominateMind		= mod:NewSound(71289, nil, canShadowmeld or canVanish)

mod:AddInfoFrameOption(70842, false)
mod:AddSetIconOption("SetIconOnDeformedFanatic", 70900, true, 5, {8})
mod:AddSetIconOption("SetIconOnEmpoweredAdherent", 70901, true, 5, {7})
mod:AddSetIconOption("SetIconOnDominateMind", 71289, true, 0, {1, 2, 3})
mod:AddDropdownOption("RemoveBuffsOnMC", {"Never", "Gift", "CCFree", "ShortOffensiveProcs", "MostOffensiveBuffs"}, "Never", "misc", nil, 71289)

-- Stage Two
mod:AddTimerLine(DBM_CORE_L.SCENARIO_STAGE:format(2))
local warnSummonSpirit				= mod:NewSpellAnnounce(71426, 2)
local warnSummonSpiritSoon			= mod:NewSoonAnnounce(71426, 2)
local warnSummonSpiritTarget		= mod:NewTargetNoFilterAnnounce(71426, 3)
local warnPhase2					= mod:NewPhaseAnnounce(2, 1, nil, nil, nil, nil, nil, 2)
local warnTouchInsignificance		= mod:NewStackAnnounce(71204, 2, nil, "Tank|Healer")

local specWarnCurseTorpor			= mod:NewSpecialWarningYou(71237, nil, nil, nil, 1, 2)
local specWarnTouchInsignificance	= mod:NewSpecialWarningStack(71204, nil, 3, nil, nil, 1, 6)
local specWarnFrostbolt				= mod:NewSpecialWarningInterrupt(72007, "HasInterrupt", nil, 2, 1, 2)
local specWarnVengefulShade			= mod:NewSpecialWarning("SpecWarnVengefulShade", true, nil, nil, nil, 1, 2, nil, 71426, 71426)
local specWarnVengefulShadeOnYou	= mod:NewSpecialWarningRun(71426, nil, nil, nil, 4, 2)
local yellVengefulShadeOnMe			= mod:NewYellMe(71426, nil, true, 1)

local timerSummonSpiritCD			= mod:NewVarTimer("v12-15", 71426, nil, true, nil, 3) -- SUMMON cleu event is fired much later than UNIT_SPELLCAST_SUCCEEDED (11.0-13.8), and with higher variance too. Initially using CLEU, but switched to UNIT event. ~5s variance for CLEU [9.4-14.1]. Added "keep" arg (10H Lordaeron 2022/10/02) - 9.9, 12.1, 11.7, 14.1, 10.1, 11.1, 11.7, 11.7, 13.1, 12.1, 9.4 ||| Stage 2/11.4, 11.3, 11.6, 11.3, 11.1, 11.1, 11.2, 11.5, 12.0, 11.3, 11.5, 11.7, 11.1, 11.7, 11.9, 11.4, 11.2, 11.7, 11.8, 11.1, 13.8
local timerFrostboltCast			= mod:NewCastTimer(2, 72007, nil, "HasInterrupt")
local timerFrostboltCD				= mod:NewVarTimer("v10-12", 72007, nil, "HasInterrupt", nil, 3) -- First phase 2 Frostbolt is 10-12s, then repeats every 12s on AzerothCore.
local timerFrostboltVolleyCD		= mod:NewVarTimer("v13-15", 72905, nil, nil, nil, 2) -- Script repeats 13-15s in phase 2
local timerTouchInsignificance		= mod:NewTargetTimer(30, 71204, nil, "Tank|Healer", nil, 5)
local timerTouchInsignificanceCD	= mod:NewVarTimer("v6-9", 71204, nil, "Tank|Healer", nil, 5) -- ~6s variance [9.0-14.7]. Added "keep" arg (25H Lordaeron [2022-09-04]@[19:35:18] || 25H Lordaeron [2022-09-14]@[19:18:07] || 25H Lordaeron [2022-11-16]@[21:20:38]) - "Touch of Insignificance-71204-npc:36855-224 = pull:143.2/Stage 2/8.2, 11.3, 9.6, 14.7, 9.8, 9.9, 10.9, 11.8, 10.7, 10.2, 9.8, 11.3, 11.9, 10.9, 12.7, 11.6, 12.1, 11.5, 11.5, 10.4, 10.7, 10.4" || pull:132.1/Stage 2/6.0, 12.7, 12.2, 9.9, 13.0, 10.9, 9.1, 10.8, 12.1, 10.0, 11.6, 11.2, 10.0, 10.3, 9.2, 11.0, 12.3, 9.3, 12.6, 11.8, 12.9" || pull:136.6/Stage 2/6.5, 12.5, 9.4, 11.0, 13.7, 10.4, 13.5, 11.2, 10.7, 9.5, 9.0, 12.1, 12.2

local soundWarnSpirit				= mod:NewSound(71426)

local dominateMindTargets = {}
local personalShadeWarnings = {}
mod.vb.dominateMindIcon = 1
local shieldName = DBM:GetSpellInfo(70842)
local summonShadeName = DBM:GetSpellInfo(71363)
local summonSpiritName = DBM:GetSpellInfo(71426)

local playerClass = select(2, UnitClass("player"))
local isHunter = playerClass == "HUNTER"

local RaidWarningFrame = RaidWarningFrame
local GetFramesRegisteredForEvent, RaidNotice_AddMessage = GetFramesRegisteredForEvent, RaidNotice_AddMessage
local function selfWarnMissingSet()
	if mod.Options.EqUneqWeapons and mod:IsHeroic() and not mod:IsEquipmentSetAvailable("pve") then
		for i = 1, select("#", GetFramesRegisteredForEvent("CHAT_MSG_RAID_WARNING")) do
			local frame = select(i, GetFramesRegisteredForEvent("CHAT_MSG_RAID_WARNING"))
			if frame.AddMessage then
				frame.AddMessage(frame, L.setMissing)
			end
		end
		RaidNotice_AddMessage(RaidWarningFrame, L.setMissing, ChatTypeInfo["RAID_WARNING"])
	end
end

mod:AddMiscLine(L.EqUneqLineDescription)
mod:AddBoolOption("EqUneqWeapons", mod:IsDps(), nil, selfWarnMissingSet)
mod:AddBoolOption("EqUneqTimer", false)
mod:AddDropdownOption("EqUneqFilter", {"OnlyDPS", "DPSTank", "NoFilter"}, "OnlyDPS", "misc")

local function selfSchedWarnMissingSet(self)
	if self.Options.EqUneqWeapons and self:IsHeroic() and not self:IsEquipmentSetAvailable("pve") then
		for i = 1, select("#", GetFramesRegisteredForEvent("CHAT_MSG_RAID_WARNING")) do
			local frame = select(i, GetFramesRegisteredForEvent("CHAT_MSG_RAID_WARNING"))
			if frame.AddMessage then
				self:Schedule(10, frame.AddMessage, frame, L.setMissing)
			end
		end
		self:Schedule(10, RaidNotice_AddMessage, RaidWarningFrame, L.setMissing, ChatTypeInfo["RAID_WARNING"])
	end
end

local startSpiritCD
local shouldPredictSpiritTimer

local function spiritTimerExpired(self, token)
	if not self:GetStage(2) or self.vb.spiritTimerToken ~= token then
		return
	end
	startSpiritCD(self)
end

startSpiritCD = function(self, initial)
	warnSummonSpiritSoon:Cancel()
	self:Unschedule(spiritTimerExpired)
	if initial and not shouldPredictSpiritTimer() then
		timerSummonSpiritCD:Cancel()
		return
	end
	timerSummonSpiritCD:Start(initial and "v12-15" or 12)
	warnSummonSpiritSoon:Schedule(9)
end
local function personalShadeWarning(self, sourceGUID)
	local now = GetTime()
	if self.vb.lastShadePersonalAt and (now - self.vb.lastShadePersonalAt) < 5.5 then
		if sourceGUID then
			personalShadeWarnings[sourceGUID] = true
		end
		return
	end
	if sourceGUID then
		if personalShadeWarnings[sourceGUID] then
			return
		end
		personalShadeWarnings[sourceGUID] = true
	elseif self.vb.lastShadePersonalAt and (now - self.vb.lastShadePersonalAt) < 2 then
		return
	end
	self.vb.lastShadePersonalAt = now
	specWarnVengefulShadeOnYou:Show()
	specWarnVengefulShadeOnYou:Play("runaway")
	yellVengefulShadeOnMe:Yell()
end


shouldPredictSpiritTimer = function()
	local raidMembers = GetNumRaidMembers()
	if raidMembers > 0 then
		return raidMembers > 2
	end
	return GetNumPartyMembers() > 1
end

local function getGroupSize()
	local raidMembers = GetNumRaidMembers()
	if raidMembers > 0 then
		return raidMembers
	end
	local partyMembers = GetNumPartyMembers()
	if partyMembers > 0 then
		return partyMembers + 1
	end
	return 1
end

local function isSmallGroup()
	return getGroupSize() <= 2
end

local function shadeTargetsPlayerInSmallGroup()
	if not isSmallGroup() or UnitIsDeadOrGhost("player") then
		return false
	end
	local bossTarget = "boss1target"
	if UnitExists(bossTarget) then
		return not UnitIsUnit("player", bossTarget)
	end
	if UnitExists("boss1") then
		local tanking, status = UnitDetailedThreatSituation("player", "boss1")
		return not (tanking or status == 3)
	end
	return getGroupSize() == 1
end

local function forceLocalShadeWarning(self, sourceGUID)
	local playerName = UnitName("player")
	if not playerName then
		return false
	end
	self.vb.lastShadeTargetName = playerName
	self.vb.lastShadeTargetAt = GetTime()
	warnSummonSpiritTarget:Show(playerName)
	personalShadeWarning(self, sourceGUID)
	return true
end

local function inferShadeTarget()
	local tankGUID = UnitGUID("boss1target") or UnitGUID("boss2target") or UnitGUID("boss3target") or UnitGUID("boss4target") or UnitGUID("boss5target")
	local candidates = {}
	local function addCandidate(unit)
		if not UnitExists(unit) or not UnitIsPlayer(unit) or UnitIsDeadOrGhost(unit) then
			return
		end
		local guid = UnitGUID(unit)
		if not guid then
			return
		end
		if not tankGUID then
			local tanking, status = UnitDetailedThreatSituation(unit, "boss1")
			if tanking or status == 3 then
				tankGUID = guid
				return
			end
		end
		if guid ~= tankGUID then
			candidates[#candidates + 1] = DBM:GetUnitFullName(unit)
		end
	end
	local raidMembers = GetNumRaidMembers()
	if raidMembers > 0 then
		for i = 1, raidMembers do
			addCandidate("raid" .. i)
		end
	else
		addCandidate("player")
		for i = 1, GetNumPartyMembers() do
			addCandidate("party" .. i)
		end
	end
	if #candidates == 1 then
		return candidates[1]
	end
end
mod:Schedule(0.5, selfSchedWarnMissingSet, mod) -- mod options default values were being read before SV ones, so delay this

local function checkWeaponRemovalSetting(self)
	if not self.Options.EqUneqWeapons then return false end

	local removalOption = self.Options.EqUneqFilter
	if removalOption == "OnlyDPS" and self:IsDps() then return true
	elseif removalOption == "DPSTank" and not self:IsHealer() then return true
	elseif removalOption == "NoFilter" then return true
	end
	return false
end

local function UnW(self)
	if self:IsEquipmentSetAvailable("pve") then
		PickupInventoryItem(16)
		PutItemInBackpack()
		PickupInventoryItem(17)
		PutItemInBackpack()
		DBM:Debug("MH and OH unequipped", 2)
		if isHunter then
			PickupInventoryItem(18)
			PutItemInBackpack()
			DBM:Debug("Ranged unequipped", 2)
		end
	end
end

local function EqW(self)
	if self:IsEquipmentSetAvailable("pve") then
		DBM:Debug("trying to equip pve")
		UseEquipmentSet("pve")
		if not self:IsTank() then
			CancelUnitBuff("player", (GetSpellInfo(25780))) -- Righteous Fury
		end
	end
end

local aurastoRemove = { -- ordered by aggressiveness {degree, classFilter}
	-- 1 (Gift)
	[48469] = {1, nil}, -- Mark of the Wild
	[48470] = {1, nil}, -- Gift of the Wild
	[69381] = {1, nil}, -- Drums of the Wild
	-- 2 (CCFree)
	[48169] = {2, nil}, -- Shadow Protection
	[48170] = {2, nil}, -- Prayer of Shadow Protection
	-- 3 (ShortOffensiveProcs)
	[13877] = {3, "ROGUE"}, -- Blade Flurry (Combat Rogue)
	[70721] = {3, "DRUID"}, -- Omen of Doom (Balance Druid)
	[48393] = {3, "DRUID"}, -- Owlkin Frenzy (Balance Druid)
	[53201] = {3, "DRUID"}, -- Starfall (Balance Druid)
	[50213] = {3, "DRUID"}, -- Tiger's Fury (Feral Druid)
	[31572] = {3, "MAGE"}, -- Arcane Potency (Arcane Mage)
	[54490] = {3, "MAGE"}, -- Missile Barrage (Arcane Mage)
	[48108] = {3, "MAGE"}, -- Hot Streak (Fire Mage)
	[71165] = {3, "WARLOCK"}, -- Molten Core (Warlock)
	[63167] = {3, "WARLOCK"}, -- Decimation (Warlock)
	[70840] = {3, "WARLOCK"}, -- Devious Minds (Warlock)
	[17941] = {3, "WARLOCK"}, -- Shadow Trance (Warlock)
	[47197] = {3, "WARLOCK"}, -- Eradication (Affliction Warlock)
	[34939] = {3, "WARLOCK"}, -- Backlash (Destruction Warlock)
	[47260] = {3, "WARLOCK"}, -- Backdraft (Destruction Warlock)
	[16246] = {3, "SHAMAN"}, -- Clearcasting (Elemental Shaman)
	[64701] = {3, "SHAMAN"}, -- Elemental Mastery (Elemental Shaman)
	[26297] = {3, nil}, -- Berserking (Troll racial)
	[54758] = {3, nil}, -- Hyperspeed Acceleration (Hands engi enchant)
	[59626] = {3, nil}, -- Black Magic (Weapon enchant)
	[72416] = {3, nil}, -- Frostforged Sage (ICC Rep ring)
	[64713] = {3, nil}, -- Flame of the Heavens (Flare of the Heavens)
	[67669] = {3, nil}, -- Elusive Power (Trinket Abyssal Rune)
	[60064] = {3, nil}, -- Now is the Time! (Trinket Sundial of the Exiled/Mithril Pocketwatch)
	-- 4 (MostOffensiveBuffs)
	[48168] = {4, "PRIEST"}, -- Inner Fire (Priest)
	[15258] = {4, "PRIEST"}, -- Shadow Weaving (Shadow Priest)
	[48420] = {4, "DRUID"}, -- Master Shapeshifter (Druid)
	[24932] = {4, "DRUID"}, -- Leader of the Pack (Feral Druid)
	[67355] = {4, "DRUID"}, -- Agile (Feral Druid idol)
	[52610] = {4, "DRUID"}, -- Savage Roar (Feral Druid)
	[24907] = {4, "DRUID"}, -- Moonkin Aura (Balance Druid)
	[71199] = {4, "DRUID"}, -- Furious (Shaman EoF: Bizuri's Totem of Shattered Ice)
	[67360] = {4, "DRUID"}, -- Blessing of the Moon Goddess (Druid EoT: Idol of Lunar Fury)
	[48943] = {4, "PALADIN"}, -- Shadow Resistance Aura (Paladin)
	[43046] = {4, "MAGE"}, -- Molten Armor (Mage)
	[47893] = {4, "WARLOCK"}, -- Fel Armor (Warlock)
	[63321] = {4, "WARLOCK"}, -- Life Tap (Warlock)
	[55637] = {4, nil}, -- Lightweave (Back tailoring enchant)
	[71572] = {4, nil}, -- Cultivated Power (Muradin Spyglass)
	[60235] = {4, nil}, -- Greatness (Darkmoon Card: Greatness)
	[71644] = {4, nil}, -- Surge of Power (Dislodged Foreign Object)
	[75473] = {4, nil}, -- Twilight Flames (Charred Twilight Scale)
	[71636] = {4, nil}, -- Siphoned Power (Phylactery of the Nameless Lich)
}
local optionToDegree = {
	["Gift"] = 1, -- Cyclones resists
	["CCFree"] = 2, -- CC Shadow resists, life Fear from Psychic Scream
	["ShortOffensiveProcs"] = 3, -- Short-term procs that would expire during Mind Control anyway
	["MostOffensiveBuffs"] = 4, -- Most offensive buffs that are easily renewable but would expire after Mind Control ends
}

local function RemoveBuffs(option) -- Spell is removed based on name so no longer need SpellID for each rank
	if not option then return end
	local degreeOption = optionToDegree[option]
	for aura, infoTable in pairs(aurastoRemove) do
		local degree, classFilter = unpack(infoTable)
		if degree <= degreeOption then
			if not classFilter or classFilter == playerClass then
				CancelUnitBuff("player", (GetSpellInfo(aura)))
			end
		end
	end
	DBM:Debug("Buffs removed, using option \"" .. option .. "\" and degree: " .. tostring(degreeOption), 2)
end

local function showDominateMindWarning(self)
	warnDominateMind:Show(table.concat(dominateMindTargets, "<, >"))
	timerDominateMind:Start()
	if checkWeaponRemovalSetting(self) then
		if not tContains(dominateMindTargets, UnitName("player")) then
			DBM:Debug("Equipping scheduled")
			self:Schedule(0.1, EqW, self)
			self:Schedule(1.7, EqW, self)
			self:Schedule(3.3, EqW, self)
			self:Schedule(5.5, EqW, self)
			self:Schedule(7.5, EqW, self)
			self:Schedule(9.9, EqW, self)
		end
		if self.Options.EqUneqTimer then
			self:Schedule(39, UnW, self)
		end
	end
	table.wipe(dominateMindTargets)
	self.vb.dominateMindIcon = 1
end

local function handleDominateMindOnPlayer(self)
	if self.Options.RemoveBuffsOnMC ~= "Never" then
		RemoveBuffs(self.Options.RemoveBuffsOnMC)
	end
	if canShadowmeld then
		soundSpecWarnDominateMind:Play("Interface\\AddOns\\DBM-Core\\sounds\\PlayerAbilities\\Shadowmeld.ogg")
	elseif canVanish then
		soundSpecWarnDominateMind:Play("Interface\\AddOns\\DBM-Core\\sounds\\PlayerAbilities\\Vanish.ogg")
	end
	if checkWeaponRemovalSetting(self) then
		UnW(self)
		UnW(self)
		self:Schedule(0.01, UnW, self)
		DBM:Debug("Unequipping", 2)
	end
end

local function getVisibleP1AddCD(self, initial)
	if self:IsDifficulty("heroic10") then
		return initial and 7 or 46
	end
	return self:IsHeroic() and 45 or 60
end

local function getVisibleP2AddCD(self, initial)
	if self:IsDifficulty("heroic10") then
		return initial and 52 or 44
	end
	return 45
end

local addsTimer

local function handleExactAddWaveSync(self, phaseTwo)
	if not self:IsHeroic() then
		return
	end
	local addCD = phaseTwo and 45.5 or 45.5
	timerAdds:Cancel()
	warnAddsSoon:Cancel()
	self:Unschedule(addsTimer)
	timerAdds:Start(addCD)
	warnAddsSoon:Schedule(addCD - 5)
	self:Schedule(addCD, addsTimer, self)
end

addsTimer = function(self)
	timerAdds:Cancel()
	warnAddsSoon:Cancel()
	if self:IsHeroic() then
		local addCD = self:GetStage(2) and getVisibleP2AddCD(self) or getVisibleP1AddCD(self)
		warnAddsSoon:Schedule(addCD - 5)	-- 5 secs prewarning
		self:Schedule(addCD, addsTimer, self)
		timerAdds:Start(addCD)
	else
		warnAddsSoon:Schedule(55)	-- 5 secs prewarning
		self:Schedule(60, addsTimer, self)
		timerAdds:Start()
	end
end

do	-- add the additional Shield Bar
	local last = 100
	local function getShieldPercent()

		local unitId = "boss1"
		local guid = UnitGUID(unitId)
		if mod:GetCIDFromGUID(guid) == 36855 then
			last = math.floor(UnitMana(unitId)/UnitManaMax(unitId) * 100)
			return last
		end

		unitId = "boss1"
		guid = UnitGUID(unitId)
		if mod:GetCIDFromGUID(guid) == 36855 then
			last = math.floor(UnitMana(unitId)/UnitManaMax(unitId) * 100)
			return last
		end

		for i = 0, GetNumRaidMembers(), 1 do
			unitId = ((i == 0) and "target") or ("raid"..i.."target")
			guid = UnitGUID(unitId)
			if mod:GetCIDFromGUID(guid) == 36855 then
				last = math.floor(UnitMana(unitId)/UnitManaMax(unitId) * 100)
				return last
			end
		end

		return last
	end
	function mod:CreateShildHPFrame()
		DBM.BossHealth:AddBoss(getShieldPercent, L.ShieldPercent)
	end
end

function mod:OnCombatStart(delay)
	self:SetStage(1)
	self.vb.spiritTimerToken = 0
	self.vb.lastShadePersonalAt = 0
	self.vb.lastShadeTargetAt = 0
	self.vb.lastShadeTargetName = nil
	table.wipe(personalShadeWarnings)
	if self.Options.ShieldHealthFrame then
		DBM.BossHealth:Show(L.name)
		DBM.BossHealth:AddBoss(36855, L.name)
		self:ScheduleMethod(0.5, "CreateShildHPFrame")
	end
	berserkTimer:Start(-delay)
	local firstAddCD = self:IsHeroic() and getVisibleP1AddCD(self, true) or 5
	timerAdds:Start(firstAddCD-delay)
	warnAddsSoon:Schedule(firstAddCD-5-delay)
	self:Schedule(firstAddCD-delay, addsTimer, self)
	if not self:IsDifficulty("normal10") then
		timerDominateMindCD:Start(32.5-delay)	-- First MC in recent logs lands about 31-33s after actual combat start.
		specWarnWeapons:Show(checkWeaponRemovalSetting(self) and ENABLE or ADDON_DISABLED, (self.Options.EqUneqWeapons and self.Options.EqUneqTimer and (SLASH_STOPWATCH2):sub(2)) or (self.Options.EqUneqWeapons and COMBAT_LOG) or NONE, self.Options.EqUneqFilter)
		if checkWeaponRemovalSetting(self) and self.Options.EqUneqTimer then
			self:Schedule(29.5-delay, UnW, self)
		end
	end
	table.wipe(dominateMindTargets)
	self.vb.dominateMindIcon = 6
	if self.Options.InfoFrame then
		DBM.InfoFrame:SetHeader(shieldName)
		DBM.InfoFrame:Show(1, "enemypower", 2)
	end
end

function mod:OnCombatEnd()
	DBM.BossHealth:Clear()
	self:Unschedule(UnW)
	self:Unschedule(EqW)
	self:Unschedule(spiritTimerExpired)
	if self.Options.InfoFrame then
		DBM.InfoFrame:Hide()
	end
	self:UnregisterShortTermEvents()
end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if args:IsSpellID(71420, 72007, 72501, 72502) then
		timerFrostboltCD:Start(12)
		if self:CheckInterruptFilter(args.sourceGUID) then
			specWarnFrostbolt:Show(args.sourceName)
			specWarnFrostbolt:Play("kickcast")
			timerFrostboltCast:Start()
		end
	elseif spellId == 70900 then
		warnDarkTransformation:Show()
		if self.Options.SetIconOnDeformedFanatic then
			self:ScanForMobs(args.sourceGUID, 2, 8, 1, nil, 12, "SetIconOnDeformedFanatic")
		end
	elseif spellId == 70901 then
		warnDarkEmpowerment:Show()
		if self.Options.SetIconOnEmpoweredAdherent then
			self:ScanForMobs(args.sourceGUID, 2, 7, 1, nil, 12, "SetIconOnEmpoweredAdherent")
		end
	elseif args:IsSpellID(72499, 72500, 72497, 72496) then
		specWarnDarkMartyrdom:Show()
		specWarnDarkMartyrdom:Play("justrun")
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 71289 then -- Some 3.3.5 logs only expose the aura application, so CAST_SUCCESS cannot be trusted for timing.
		DBM:Debug("MC on "..tostring(args.destName), 2)
	elseif args:IsSpellID(72905, 72906, 72907, 72908) then -- Frostbolt Volley
		timerFrostboltVolleyCD:Start()
	elseif spellId == 71204 then -- Touch of Insignificance
		timerTouchInsignificanceCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 71289 then
		if self:AntiSpam(5, 2) then
			timerDominateMindCD:Start()
		end
		dominateMindTargets[#dominateMindTargets + 1] = args.destName
		if args.destName == UnitName("player") then
			handleDominateMindOnPlayer(self)
		end
		if self.Options.SetIconOnDominateMind then
			self:SetIcon(args.destName, self.vb.dominateMindIcon, 12)
		end
		self.vb.dominateMindIcon = self.vb.dominateMindIcon + 1
		self:Unschedule(showDominateMindWarning)
		if self:IsDifficulty("heroic10", "normal25") or (self:IsDifficulty("heroic25") and #dominateMindTargets >= 3) then
			showDominateMindWarning(self)
		else
			self:Schedule(0.9, showDominateMindWarning, self)
		end
	elseif args:IsSpellID(71001, 72108, 72109, 72110) then
		if args:IsPlayer() then
			specWarnDeathDecay:Show()
			specWarnDeathDecay:Play("watchfeet")
		end
	elseif spellId == 71237 and args:IsPlayer() then
		specWarnCurseTorpor:Show()
		specWarnCurseTorpor:Play("targetyou")
	elseif spellId == 70674 and not args:IsDestTypePlayer() and UnitGUID("target") == args.destGUID then
		specWarnVampricMight:Show(args.destName)
		specWarnVampricMight:Play("helpdispel")
	elseif spellId == 71204 then
		timerTouchInsignificance:Start(args.destName)
		local amount = args.amount or 1
		if args:IsPlayer() and amount >= 3 then
			specWarnTouchInsignificance:Show(amount)
			specWarnTouchInsignificance:Play("stackhigh")
		else
			warnTouchInsignificance:Show(args.destName, amount)
		end
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 70842 then
		self:SetStage(2)
		warnPhase2:Show()
		warnPhase2:Play("ptwo")
		-- Dominate Mind event is not phase-bound in AzerothCore and continues its 40-45s cycle
		self:Unschedule(UnW)
		startSpiritCD(self, true)
		timerTouchInsignificanceCD:Start("v6-9") -- 3.4s variance [6.0-9.4] (25H Lordaeron [2022-09-23]@[20:40:18] || 25H Lordaeron [2022-10-05]@[20:21:27]) - Stage 2/6.0 || Stage 2/9.4
		timerFrostboltCD:Start("v10-12")
		timerAdds:Cancel()
		timerFrostboltVolleyCD:Start("v19-21")
		warnAddsSoon:Cancel()
		self:Unschedule(addsTimer)
		if self:IsHeroic() then -- Calibrated to the first visible P2 add event in local combat logs, not the internal 45s scheduler.
			local firstP2AddTimer = getVisibleP2AddCD(self, true)
			timerAdds:Start(firstP2AddTimer)
			warnAddsSoon:Schedule(firstP2AddTimer - 5)
			self:Schedule(firstP2AddTimer, addsTimer, self)
		end
		if self.Options.InfoFrame then
			DBM.InfoFrame:Hide()
		end
	elseif spellId == 71289 then
		if (args.destName == UnitName("player") or args:IsPlayer()) and checkWeaponRemovalSetting(self) then
			DBM:Debug("Equipping scheduled", 2)
			self:Schedule(0.1, EqW, self)
			self:Schedule(1.7, EqW, self)
			self:Schedule(3.3, EqW, self)
			self:Schedule(5.0, EqW, self)
			self:Schedule(8.0, EqW, self)
			self:Schedule(9.9, EqW, self)
		end
	end
end

function mod:SPELL_INTERRUPT(args)
	local extraSpellId = args.extraSpellId
	if type(extraSpellId) == "number" and (extraSpellId == 71420 or extraSpellId == 72007 or extraSpellId == 72501 or extraSpellId == 72502) then
		timerFrostboltCast:Cancel()
	end
end

--[[very inconsistent timer due to spirit travel distance until spawn. Moved to UNIT_SPELLCAST_SUCCEEDED
function mod:SPELL_SUMMON(args)
	if args.spellId == 71426 and self:AntiSpam(5, 1) then -- Summon Vengeful Shade
		warnSummonSpirit:Show()
		timerSummonSpiritCD:Start()
		soundWarnSpirit:Play("Interface\AddOns\DBM-Core\sounds\RaidAbilities\spirits.mp3")
	end
end]]

function mod:ShadeTarget(targetname, targetuId, sourceGUID, authoritative)
	if not targetname then return end
	local now = GetTime()
	local playerName = UnitName("player")
	local playerFullName = DBM:GetUnitFullName("player")
	if self.vb.lastShadeTargetName == targetname and self.vb.lastShadeTargetAt and (now - self.vb.lastShadeTargetAt) < 2 then
		return
	end
	self.vb.lastShadeTargetName = targetname
	self.vb.lastShadeTargetAt = now
	warnSummonSpiritTarget:Show(targetname)
	if targetname == playerName or targetname == playerFullName then
		if authoritative then
			personalShadeWarning(self, sourceGUID)
		end
	elseif self:CheckNearby(10, targetname) then
		specWarnVengefulShade:Show()
		specWarnVengefulShade:Play("watchstep")
	end
end

function mod:SPELL_SUMMON(args)
	if args.spellId == 71363 or args.spellId == 71426 or self:GetCIDFromGUID(args.destGUID) == 38222 then
		if shadeTargetsPlayerInSmallGroup() then
			forceLocalShadeWarning(self, args.destGUID)
		else
			local inferredTarget = inferShadeTarget()
			if inferredTarget then
				self:ShadeTarget(inferredTarget, nil, args.destGUID)
			end
		end
		if self:AntiSpam(5, 1) then
			warnSummonSpirit:Show()
			startSpiritCD(self)
			soundWarnSpirit:Play("Interface\\AddOns\\DBM-Core\\sounds\\RaidAbilities\\spirits.mp3")
		end
		self:BossTargetScanner(args.destGUID, "ShadeTarget", 0.05, 80, nil, nil, nil, nil, nil, true)
	end
end

function mod:SPELL_DAMAGE(sourceGUID, _, _, destGUID)
	if destGUID == UnitGUID("player") and self:GetCIDFromGUID(sourceGUID) == 38222 then
		personalShadeWarning(self, sourceGUID)
	end
end

function mod:SWING_DAMAGE(sourceGUID, _, _, destGUID)
	if destGUID == UnitGUID("player") and self:GetCIDFromGUID(sourceGUID) == 38222 then
		personalShadeWarning(self, sourceGUID)
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.YellReanimatedFanatic or msg:find(L.YellReanimatedFanatic) then
		warnReanimating:Show()
	end
end

-- "<235.53 ...> [UNIT_SPELLCAST_SUCCEEDED] Lady Deathwhisper(54.8%-0.0%){Target:...} -Summon Spirit- [[boss1:Summon Spirit::0:]]", -- [20525]
-- "<235.53 ...> [DBM_Announce] Summon Spirit:Interface\\Icons\\Spell_Holy_SenseUndead:spell:71426:Deathwhisper:false:", -- [20526]
-- "<235.53 ...> [DBM_Debug] PlaySoundFile playing with media Sound\\Doodad\\BellTollNightElf.wav:3:", -- [20527]
-- "<235.53 ...> [DBM_Debug] Timer Summon Spirit CD(Timer71426cd) (Stage 2) refreshed after zero. Remaining time is : -0.92:2:", -- [20528]
-- "<235.53 ...> [DBM_TimerStart] Timer71426cd:Summon Spirit CD:11:Interface\\Icons\\Spell_Holy_SenseUndead:cd:71426:3:Deathwhisper:true:nil:Summon Spirit:nil:", -- [20529]
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, spellName)
	if spellName == summonShadeName or spellName == summonSpiritName then -- AzerothCore uses 71363, older logs/cores may report 71426.
		if shadeTargetsPlayerInSmallGroup() then
			forceLocalShadeWarning(self)
		else
			local inferredTarget = inferShadeTarget()
			if inferredTarget then
				self:ShadeTarget(inferredTarget)
			end
		end
		local bossGuid = UnitGUID(uId)
		if bossGuid then
			self:BossTargetScanner(bossGuid, "ShadeTarget", 0.02, 4, true, nil, nil, nil, nil, true)
		end
		if self:AntiSpam(5, 1) then
			warnSummonSpirit:Show()
			startSpiritCD(self)
			soundWarnSpirit:Play("Interface\\AddOns\\DBM-Core\\sounds\\RaidAbilities\\spirits.mp3")
		end
		self:BossUnitTargetScanner(uId, "ShadeTarget", 1.2)
	end
end

function mod:OnSync(msg, targetname, sourceGUID)
	if msg == "ShadeTarget" and targetname and targetname ~= "" then
		local playerName = UnitName("player")
		local playerFullName = DBM:GetUnitFullName("player")
		if targetname == playerName or targetname == playerFullName then
			if sourceGUID then
				personalShadeWarnings[sourceGUID] = nil
			end
			self.vb.lastShadePersonalAt = 0
			self.vb.lastShadeTargetName = targetname
			self.vb.lastShadeTargetAt = GetTime()
			warnSummonSpiritTarget:Show(targetname)
			personalShadeWarning(self, sourceGUID)
		else
			self:ShadeTarget(targetname, nil, sourceGUID, true)
		end
	elseif msg == "AddWaveP1" then
		handleExactAddWaveSync(self, false)
	elseif msg == "AddWaveP2" then
		handleExactAddWaveSync(self, true)
	end
end
