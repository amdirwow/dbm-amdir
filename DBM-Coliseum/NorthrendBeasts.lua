local mod	= DBM:NewMod("NorthrendBeasts", "DBM-Coliseum")
local L		= mod:GetLocalizedStrings()

local UnitExists, UnitGUID, UnitName = UnitExists, UnitGUID, UnitName
local GetSpellInfo = GetSpellInfo
local GetPlayerMapPosition, SetMapToCurrentZone = GetPlayerMapPosition, SetMapToCurrentZone

mod:SetRevision("20260320235500")
mod:SetCreatureID(34796, 35144, 34799, 34797)
mod:SetEncounterID(629)
mod:SetUsedIcons(1, 2, 3, 4, 5, 6, 7, 8)
mod:SetMinSyncRevision(20220925000000)
mod:SetMinCombatTime(30)
mod:SetBossHPInfoToHighest()

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"CHAT_MSG_MONSTER_YELL",
	"SPELL_CAST_START 66313 66330 67647 67648 67649 66794 67644 67645 67646 66821 66818 66880 66796 66901 67615 67616 67617 66902 67627 67628 67629",
	"SPELL_CAST_SUCCESS 67641 66883 67642 67643 66824 67612 67613 67614 66879 67624 67625 67626 66689 67650 67651 67652",
	"SPELL_AURA_APPLIED 67477 66331 67478 67479 67657 66759 67658 67659 66823 67618 67619 67620 66869 66758 66636 68335",
	"SPELL_AURA_APPLIED_DOSE 67477 66331 67478 67479 66636",
	"SPELL_AURA_REMOVED 66869 66758",
	"SPELL_DAMAGE 66320 67472 67473 67475 66317 66881 67638 67639 67640",
	"SPELL_MISSED 66320 67472 67473 67475 66317 66881 67638 67639 67640",
	"SWING_DAMAGE",
	"SWING_MISSED",
	"CHAT_MSG_RAID_BOSS_EMOTE",
	"UNIT_DIED",
	"UNIT_SPELLCAST_START boss1",
	"UNIT_SPELLCAST_SUCCEEDED boss1 boss2"
)

local gormok = L.Gormok
local dreadscale = L.Dreadscale
local acidmaw = L.Acidmaw
local icehowl = L.Icehowl
local GORMOK_FIRST_IMPALE = "v9-10"
local GORMOK_FIRST_STOMP = 15
local GORMOK_NEXT_STOMP = "v20-25"
local TOGC_WORM_PHASE_DEATH_FALLBACK = 18
local TOGC_ICEHOWL_PHASE_DEATH_FALLBACK = 15
local WORM_FIRST_BURNING_BITE = 15
local WORM_FIRST_MOLTEN_SPEW = "v15-30"
local WORM_FIRST_PARALYTIC_SPRAY = 20
local WORM_FIRST_SWEEP = "v15-30"
local WORM_FIRST_SLIME_POOL = 15
local ICEHOWL_FIRST_BREATH = 14
local ICEHOWL_FIRST_CRASH = 32
local ICEHOWL_NEXT_BREATH = "v20-30"
local ICEHOWL_NEXT_CRASH = "v32-52"
local ICEHOWL_BREATH_AFTER_DAZE = "v5-8"

-- General
local enrageTimer			= mod:NewBerserkTimer(223) -- REVIEW! 2022/09/05 log with 233s fight time. Does Icehowl actually gets enraged or just the next massive crash will wipe the raid?
local timerCombatStart		= mod:NewCombatTimer(11)
local timerNextBoss			= mod:NewTimer(150, "TimerNextBoss", 2457, nil, nil, 1) -- 2min 30s, as per TC.

mod:AddRangeFrameOption("10")

-- Stage One: Gormok the Impaler
mod:AddTimerLine(DBM_CORE_L.SCENARIO_STAGE:format(1)..": "..gormok)
local warnImpaleOn			= mod:NewStackAnnounce(66331, 2, nil, "Tank|Healer")
local warnFireBomb			= mod:NewSpellAnnounce(66317, 3, nil, false)
local WarningSnobold		= mod:NewAnnounce("WarningSnobold", 4)

local specWarnImpale3		= mod:NewSpecialWarningStack(66331, nil, 3, nil, nil, 1, 6)
local specWarnAnger3		= mod:NewSpecialWarningStack(66636, "Tank|Healer", 3, nil, nil, 1, 6)
local specWarnGTFO			= mod:NewSpecialWarningGTFO(66317, nil, nil, nil, 1, 8)
local specWarnSilence		= mod:NewSpecialWarningSpell(66330, "SpellCaster")
local specWarnStompPreWarn	= mod:NewSpecialWarningPreWarn(66330, "SpellCaster", 3, nil, nil, 1, 2)

local timerFirstStomp		= mod:NewNextTimer(15, 66330, nil, nil, nil, 2, nil, DBM_COMMON_L.INTERRUPT_ICON)
local timerNextStomp		= mod:NewVarTimer("v20-25", 66330, nil, nil, nil, 2, nil, DBM_COMMON_L.INTERRUPT_ICON, nil, mod:IsSpellCaster() and 3 or nil, 3) -- Server schedules first stomp at 15s, then repeats every 20-25s.
local timerImpaleCD			= mod:NewVarTimer("v9-10", 66331, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON, true) -- Server schedules Impale every 9-10s from engage.
local soundAuraMastery		= mod:NewSound(66330, "soundConcAuraMastery")

-- Stage Two: Acidmaw & Dreadscale
mod:AddTimerLine(DBM_CORE_L.SCENARIO_STAGE:format(2)..": "..dreadscale.." & "..acidmaw)
local warnSlimePool			= mod:NewSpellAnnounce(66883, 2, nil, "Melee")
local warnToxin				= mod:NewTargetAnnounce(66823, 3)
local warnBile				= mod:NewTargetAnnounce(66869, 3)
local warnEnrageWorm		= mod:NewSpellAnnounce(68335, 3)

local specWarnToxin			= mod:NewSpecialWarningMoveTo(66823, nil, nil, nil, 1, 2)
local specWarnBile			= mod:NewSpecialWarningYou(66869, nil, nil, nil, 1, 2)

local timerSubmerge			= mod:NewVarSourceTimer("v45-50", 66948, nil, nil, nil, 6, "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp")
local timerEmerge			= mod:NewNextSourceTimer(5, 66947, nil, nil, nil, 6, "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp")
local timerSweepCD			= mod:NewVarSourceTimer("v15-30", 66794, nil, "Melee", nil, 3) -- Stationary worms repeat Sweep every 15-30s.
local timerAcidicSpewCD		= mod:NewVarTimer("v15-30", 66819, nil, "Tank", 2, 5, nil, DBM_COMMON_L.TANK_ICON)
local timerMoltenSpewCD		= mod:NewVarTimer("v15-30", 66820, nil, "Tank", 2, 5, nil, DBM_COMMON_L.TANK_ICON)
local timerBurningSprayCD	= mod:NewCDTimer(20, 66902, nil, nil, nil, 3)
local timerParalyticBiteCD	= mod:NewCDTimer(20, 66824, nil, "Melee", nil, 3)
local timerBurningBiteCD	= mod:NewCDTimer(20, 66879, nil, "Melee", nil, 3)
local timerSlimePoolCD		= mod:NewCDSourceTimer(30, 66883, nil, "Melee", nil, 3) -- Slime Pool repeats every 30s after the first cast on this core.

mod:AddSetIconOption("SetIconOnBileTarget", 66869, false, 0, {1, 2, 3, 4, 5, 6, 7, 8})

-- Stage Three: Icehowl
mod:AddTimerLine(DBM_CORE_L.SCENARIO_STAGE:format(3)..": "..icehowl)
local warnBreath			= mod:NewSpellAnnounce(66689, 2)
local warnRage				= mod:NewSpellAnnounce(66759, 3)
local warnCharge			= mod:NewTargetNoFilterAnnounce(52311, 4)

local specWarnCharge		= mod:NewSpecialWarningRun(52311, nil, nil, nil, 4, 2)
local specWarnChargeNear	= mod:NewSpecialWarningClose(52311, nil, nil, nil, 3, 2)
local specWarnFrothingRage	= mod:NewSpecialWarningDispel(66759, "RemoveEnrage", nil, nil, 1, 2)

local timerBreath			= mod:NewCastTimer(5, 66689, nil, nil, nil, 3) -- 5s channel. is it random target or tank?
local timerBreathCD			= mod:NewVarTimer("v20-30", 66689, nil, nil, nil, 3)
local timerStaggeredDaze	= mod:NewBuffActiveTimer(15, 66758, nil, nil, nil, 5, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerNextCrash		= mod:NewVarTimer("v32-52", 66683, nil, nil, nil, 2, nil, DBM_COMMON_L.MYTHIC_ICON) -- Server jumps middle in 30-50s, then casts Crash 2s later.

mod:AddSetIconOption("SetIconOnChargeTarget", 52311, true, 0, {8})
mod:AddBoolOption("ClearIconsOnIceHowl", true)
mod:AddBoolOption("IcehowlArrow")

mod:GroupSpells(66902, 66869)--Burning Spray with Burning Bile
mod:GroupSpells(66901, 66823)--Paralytic Spray with Toxic Bile
mod:GroupSpells(52311, 66758, 66759)--Furious Charge, Staggering Daze, and Frothing Rage

local bileName = DBM:GetSpellInfo(66869)
local phases = {}
local acidmawSubmerged = false
mod.vb.burnIcon = 1
mod.vb.DreadscaleMobile = true
mod.vb.AcidmawMobile = false
mod.vb.DreadscaleDead = false
mod.vb.AcidmawDead = false

local function ensureCombatStarted(self, reason)
	if self:IsInCombat() then
		return
	end
	timerCombatStart:Stop()
	DBM:StartCombat(self, 0, reason)
end

local function stopGormokPhaseTimers()
	specWarnStompPreWarn:Cancel()
	specWarnStompPreWarn:CancelVoice()
	soundAuraMastery:Cancel()
	timerFirstStomp:Stop()
	timerNextStomp:Stop()
	timerImpaleCD:Stop()
end

local function updateHealthFrame(phase)
	if phases[phase] then
		return
	end
	phases[phase] = true
	mod.vb.phase = phase
	if phase == 1 then
		DBM.BossHealth:Clear()
		DBM.BossHealth:AddBoss(34796, gormok)
	elseif phase == 2 then
		DBM.BossHealth:AddBoss(35144, acidmaw)
		DBM.BossHealth:AddBoss(34799, dreadscale)
	elseif phase == 3 then
		DBM.BossHealth:AddBoss(34797, icehowl)
	end
end

local function isBuffOwner(uId, spellId)
	if not uId and not spellId then return end
	local _, _, _, _, _, _, _, unitCaster = DBM:UnitBuff(uId, spellId)
	if unitCaster == uId then
		return true
	else
		return false
	end
end

local stopWormPhaseTimers, stopIcehowlPhaseTimers
local function oneWormDead(self)
	return self.vb.AcidmawDead or self.vb.DreadscaleDead
end

local function startWormPhaseFallback(self)
	if self:GetStage(2) then
		return
	end
	timerCombatStart:Stop()
	timerNextBoss:Cancel()
	stopGormokPhaseTimers()
	stopWormPhaseTimers()
	stopIcehowlPhaseTimers()
	updateHealthFrame(2)
	self:SetStage(2)
	self.vb.DreadscaleMobile = true
	self.vb.AcidmawMobile = false
	if self.Options.RangeFrame then
		DBM.RangeCheck:Show(10)
	end
	if self:IsHeroic() then
		timerNextBoss:Start()
	end
	timerSubmerge:Start("v45-50", acidmaw)
	timerSweepCD:Start(WORM_FIRST_SWEEP, acidmaw)
	timerSubmerge:Start("v45-50", dreadscale)
	timerSlimePoolCD:Start(WORM_FIRST_SLIME_POOL, dreadscale)
	timerMoltenSpewCD:Start(WORM_FIRST_MOLTEN_SPEW)
	timerBurningBiteCD:Start(WORM_FIRST_BURNING_BITE)
	self:UnregisterShortTermEvents()
end

function stopWormPhaseTimers()
	timerSubmerge:Cancel()
	timerEmerge:Cancel()
	timerSweepCD:Stop(acidmaw)
	timerSweepCD:Stop(dreadscale)
	timerAcidicSpewCD:Stop()
	timerMoltenSpewCD:Stop()
	timerBurningSprayCD:Stop()
	timerParalyticBiteCD:Stop()
	timerBurningBiteCD:Stop()
	timerSlimePoolCD:Stop(acidmaw)
	timerSlimePoolCD:Stop(dreadscale)
end

function stopIcehowlPhaseTimers()
	timerBreath:Stop()
	timerBreathCD:Stop()
	timerStaggeredDaze:Stop()
	timerNextCrash:Stop()
end

local function queueWormPhase(self, countdown)
	if self:GetStage(2) then
		return
	end
	local stageQueued = self:GetStage(1.5)
	stopGormokPhaseTimers()
	stopIcehowlPhaseTimers()
	timerNextBoss:Cancel()
	updateHealthFrame(2)
	self:SetStage(1.5)
	if self.Options.RangeFrame then
		DBM.RangeCheck:Show(10)
	end
	if countdown then
		timerCombatStart:Stop()
		timerCombatStart:Start(countdown)
	end
	if not stageQueued then
		self:RegisterShortTermEvents(
			"INSTANCE_ENCOUNTER_ENGAGE_UNIT"
		)
	end
end

local function queueIcehowlPhase(self, countdown)
	if self:GetStage(3) then
		return
	end
	local stageQueued = self:GetStage(2.5)
	updateHealthFrame(3)
	self:SetStage(2.5)
	timerNextBoss:Cancel()
	stopWormPhaseTimers()
	stopIcehowlPhaseTimers()
	if self.Options.RangeFrame then
		DBM.RangeCheck:Hide()
	end
	if self:IsHeroic() and not stageQueued then
		enrageTimer:Start()
	end
	if countdown then
		timerCombatStart:Stop()
		timerCombatStart:Start(countdown)
	end
	if not stageQueued then
		self:RegisterShortTermEvents(
			"INSTANCE_ENCOUNTER_ENGAGE_UNIT"
		)
	end
end

local function startIcehowlPhaseFallback(self)
	if self:GetStage(3) then
		return
	end
	timerCombatStart:Stop()
	timerNextBoss:Cancel()
	updateHealthFrame(3)
	self:SetStage(3)
	stopWormPhaseTimers()
	stopIcehowlPhaseTimers()
	if self.Options.RangeFrame then
		DBM.RangeCheck:Hide()
	end
	timerBreathCD:Start(ICEHOWL_FIRST_BREATH)
	timerNextCrash:Start(ICEHOWL_FIRST_CRASH)
	self:UnregisterShortTermEvents()
end

function mod:OnCombatStart(delay)
	table.wipe(phases)
	acidmawSubmerged = false
	self.vb.burnIcon = 8
	self.vb.DreadscaleMobile = true
	self.vb.AcidmawMobile = false
	self.vb.DreadscaleDead = false
	self.vb.AcidmawDead = false
	timerCombatStart:Stop()
	timerNextBoss:Cancel()
	stopWormPhaseTimers()
	stopIcehowlPhaseTimers()
	self:SetStage(1)
	specWarnStompPreWarn:Schedule(12-delay)
	if self.Options.soundConcAuraMastery and isBuffOwner("player", 19746) then -- Concentration Aura Mastery by a Paladin will negate the interrupt effect of Staggering Stomp
		soundAuraMastery:Schedule(12-delay, "Interface\\AddOns\\DBM-Core\\sounds\\PlayerAbilities\\AuraMastery.ogg")
	else
		specWarnStompPreWarn:ScheduleVoice(12-delay, "silencesoon")
	end
	if self:IsHeroic() then
		timerNextBoss:Start(-delay)
	end
	timerFirstStomp:Start(GORMOK_FIRST_STOMP-delay)
	timerImpaleCD:Start(("v%s-%s"):format(math.max(0.1, 9 - delay), math.max(0.2, 10 - delay)))
	updateHealthFrame(1)
end

function mod:OnCombatEnd()
	timerCombatStart:Stop()
	timerNextBoss:Cancel()
	stopGormokPhaseTimers()
	stopWormPhaseTimers()
	stopIcehowlPhaseTimers()
	self:UnregisterShortTermEvents()
	if self.Options.RangeFrame then
		DBM.RangeCheck:Hide()
	end
end

--These remain methods since they can't reverse schedule each other as local functions
--[[ Disabling scheduling methods since worms submerge at different times on Warmane. Also, since Warmane has boss units, we also have access to the proper events
["UNIT_SPELLCAST_SUCCEEDED"] = {
	"Churning Ground Visual-npc:34799-240 = pull:141.2/Stage 2/58.2, 5.0, 45.1, 5.0, Stage 3/31.2", -- [6]
	"Churning Ground Visual-npc:35144-247 = pull:144.2/Stage 2/61.2, 5.0, 45.0, 5.0, Stage 3/28.2", -- [7]
}
function mod:WormsEmerge()
	timerSubmerge:Start()
	if not self.vb.AcidmawDead then
		if self.vb.DreadscaleMobile then
			timerSweepCD:Start(22)			-- Log review: 22-24s (N/H?)
			timerParalyticSprayCD:Start(18)	-- Log review: 18-20s (N/H?)
		else
			timerSlimePoolCD:Start(14)
			timerParalyticBiteCD:Start(5)
			timerAcidicSpewCD:Start(10)
		end
	end
	if not self.vb.DreadscaleDead then
		if self.vb.DreadscaleMobile then
			timerSlimePoolCD:Start(15)
			timerMoltenSpewCD:Start(26)
			timerBurningBiteCD:Start(5)
		else
			timerSweepCD:Start(16)
			timerBurningSprayCD:Start(17)
		end
	end
	self:ScheduleMethod(45, "WormsSubmerge")
end

function mod:WormsSubmerge()
	timerEmerge:Start()
	timerSweepCD:Cancel()
	timerSlimePoolCD:Cancel()
	timerMoltenSpewCD:Cancel()
	timerParalyticSprayCD:Cancel()
	timerBurningBiteCD:Cancel()
	timerAcidicSpewCD:Cancel()
	timerBurningSprayCD:Cancel()
	timerParalyticBiteCD:Cancel()
	self.vb.DreadscaleMobile = not self.vb.DreadscaleMobile
	self:ScheduleMethod(5, "WormsEmerge")
end]]

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	local sourceCID = self:GetCIDFromGUID(args.sourceGUID)
	if not self:IsInCombat() and args:IsSpellID(66330, 67647, 67648, 67649) then
		ensureCombatStarted(self, "SPELL_CAST_START "..spellId)
	end
	if (sourceCID == 35144 or sourceCID == 34799) and not self:GetStage(2) then
		startWormPhaseFallback(self)
	elseif sourceCID == 34797 and not self:GetStage(3) then
		startIcehowlPhaseFallback(self)
	end
	if spellId == 66313 then									-- FireBomb (Impaler)
		warnFireBomb:Show()
	elseif args:IsSpellID(66330, 67647, 67648, 67649) then		-- Staggering Stomp
		timerFirstStomp:Stop()
		timerNextStomp:Start(GORMOK_NEXT_STOMP)
		specWarnSilence:Show()
		specWarnStompPreWarn:Schedule(17)
		if self.Options.soundConcAuraMastery and isBuffOwner("player", 19746) then -- Concentration Aura Mastery by a Paladin will negate the interrupt effect of Staggering Stomp
			soundAuraMastery:Schedule(17, "Interface\\AddOns\\DBM-Core\\sounds\\PlayerAbilities\\AuraMastery.ogg")
		else
			specWarnStompPreWarn:ScheduleVoice(17, "silencesoon")
		end
	elseif args:IsSpellID(66794, 67644, 67645, 67646) then		-- Sweep stationary worm
		timerSweepCD:Start("v15-30", args.sourceName)
	elseif spellId == 66821 then							-- Molten spew
		timerMoltenSpewCD:Start("v15-30")
	elseif spellId == 66818 then							-- Acidic Spew
		timerAcidicSpewCD:Start("v15-30")
	elseif args:IsSpellID(66902, 67627, 67628, 67629) then		-- Burning Spray
		self.vb.burnIcon = 1
		timerBurningSprayCD:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	local sourceCID = self:GetCIDFromGUID(args.sourceGUID)
	if not self:IsInCombat() and args:IsSpellID(67477, 66331, 67478, 67479) then
		ensureCombatStarted(self, "SPELL_CAST_SUCCESS "..args.spellId)
	end
	if (sourceCID == 35144 or sourceCID == 34799) and not self:GetStage(2) then
		startWormPhaseFallback(self)
	elseif sourceCID == 34797 and not self:GetStage(3) then
		startIcehowlPhaseFallback(self)
	end
	if args:IsSpellID(67641, 66883, 67642, 67643) then			-- Slime Pool Cloud Spawn
		warnSlimePool:Show()
		timerSlimePoolCD:Start(args.sourceName)
	elseif args:IsSpellID(66824, 67612, 67613, 67614) then		-- Paralytic Bite
		timerParalyticBiteCD:Start()
	elseif args:IsSpellID(66879, 67624, 67625, 67626) then		-- Burning Bite
		timerBurningBiteCD:Start()
	elseif args:IsSpellID(66689, 67650, 67651, 67652) then		-- Arctic Breath
		timerBreath:Start()
		timerBreathCD:Start()
		warnBreath:Show()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	local sourceCID = self:GetCIDFromGUID(args.sourceGUID)
	if not self:IsInCombat() and (args:IsSpellID(67477, 66331, 67478, 67479) or spellId == 66636) then
		ensureCombatStarted(self, "SPELL_AURA_APPLIED "..spellId)
	end
	if (sourceCID == 35144 or sourceCID == 34799) and not self:GetStage(2) then
		startWormPhaseFallback(self)
	elseif sourceCID == 34797 and not self:GetStage(3) then
		startIcehowlPhaseFallback(self)
	end
	if args:IsSpellID(67477, 66331, 67478, 67479) then	-- Impale
		timerImpaleCD:Start("v9-10")
		warnImpaleOn:Show(args.destName, 1)
	elseif args:IsSpellID(67657, 66759, 67658, 67659) then	-- Frothing Rage
		timerBreathCD:Start(ICEHOWL_BREATH_AFTER_DAZE)
		warnRage:Show()
		specWarnFrothingRage:Show()
		specWarnFrothingRage:Play("trannow")
	elseif args:IsSpellID(66823, 67618, 67619, 67620) then	-- Paralytic Toxin
		warnToxin:CombinedShow(0.3, args.destName)
		if args:IsPlayer() then
			specWarnToxin:Show(bileName)
			specWarnToxin:Play("targetyou")
		end
	elseif spellId == 66869 then	-- Burning Bile
		warnBile:CombinedShow(0.3, args.destName)
		if args:IsPlayer() then
			specWarnBile:Show()
			specWarnBile:Play("targetyou")
		end
		if self.Options.SetIconOnBileTarget and self.vb.burnIcon < 9 then
			self:SetIcon(args.destName, self.vb.burnIcon)
			self.vb.burnIcon = self.vb.burnIcon + 1
		end
	elseif spellId == 66758 then	-- Staggered Daze
		timerStaggeredDaze:Start()
	elseif spellId == 66636 then	-- Rising Anger
		WarningSnobold:Show(args.destName)
	elseif spellId == 68335 then	-- Enrage
		warnEnrageWorm:Show()
	end
end

function mod:SPELL_AURA_APPLIED_DOSE(args)
	if args:IsSpellID(67477, 66331, 67478, 67479) then	-- Impale
		local amount = args.amount or 1
		timerImpaleCD:Start("v9-10")
		if (amount >= 3) or (amount >= 2 and self:IsHeroic()) then
			if args:IsPlayer() then
				specWarnImpale3:Show(amount)
				specWarnImpale3:Play("stackhigh")
			else
				warnImpaleOn:Show(args.destName, amount)
			end
		end
	elseif args.spellId == 66636 then	-- Rising Anger
		local amount = args.amount or 1
		WarningSnobold:Show(args.destName)
		if amount >= 4 then -- only 4 snobolds
			specWarnAnger3:Show(amount)
			specWarnAnger3:Play("stackhigh")
		end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 66869 then
		if self.Options.SetIconOnBileTarget then
			self:SetIcon(args.destName, 0)
		end
	elseif spellId == 66758 then -- Staggered Daze
		timerBreathCD:Start(ICEHOWL_BREATH_AFTER_DAZE)
	end
end

function mod:SPELL_DAMAGE(_, _, _, destGUID, _, _, spellId, spellName)
	if ((spellId == 66320 or spellId == 67472 or spellId == 67473 or spellId == 67475 or spellId == 66317) or (spellId == 66881 or spellId == 67638 or spellId == 67639 or spellId == 67640)) and destGUID == UnitGUID("player") then	-- Fire Bomb (66317 is impact damage, not avoidable but leaving in because it still means earliest possible warning to move. Other 4 are tick damage from standing in it) // Slime Pool
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_MISSED = mod.SPELL_DAMAGE

function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg, _, _, _, target)
	if (msg:match(L.Charge) or msg:find(L.Charge)) and target then
		target = DBM:GetUnitFullName(target)
		warnCharge:Show(target)
		if self.Options.ClearIconsOnIceHowl then
			self:ClearIcons()
		end
		if target == UnitName("player") then
			specWarnCharge:Show()
			specWarnCharge:Play("justrun")
			if self.Options.PingCharge then
				Minimap:PingLocation()
			end
		elseif self:CheckNearby(11, target) then
			specWarnChargeNear:Show(target)
			specWarnChargeNear:Play("runaway")
		end
		if self.Options.IcehowlArrow then
			local uId = DBM:GetRaidUnitId(target)
			local x, y = GetPlayerMapPosition(uId)
			if x == 0 and y == 0 then
				SetMapToCurrentZone()
				x, y = GetPlayerMapPosition(uId)
			end
			DBM.Arrow:ShowRunAway(x, y, 12, 5)
		end
		if self.Options.SetIconOnChargeTarget then
			self:SetIcon(target, 8, 5)
		end
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.CombatStart or msg:find(L.CombatStart) then
		timerCombatStart:Start()
	end
end

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 34796 then
		stopGormokPhaseTimers()
		queueWormPhase(self, TOGC_WORM_PHASE_DEATH_FALLBACK)
		DBM.BossHealth:RemoveBoss(cid) -- remove Gormok from the health frame
	elseif cid == 35144 then -- Acidmaw dead
		self.vb.AcidmawDead = true
		timerParalyticBiteCD:Cancel()
		timerAcidicSpewCD:Cancel()
		timerSubmerge:Cancel()
		timerEmerge:Cancel()
		if self.vb.AcidmawMobile then
			timerSlimePoolCD:Cancel(args.destName)
		else
			timerSweepCD:Cancel(args.destName)
		end
		if self.vb.DreadscaleDead then
			timerNextBoss:Cancel()
			DBM.BossHealth:RemoveBoss(35144)
			DBM.BossHealth:RemoveBoss(34799)
			queueIcehowlPhase(self, TOGC_ICEHOWL_PHASE_DEATH_FALLBACK)
		end
	elseif cid == 34799 then -- Dreadscale dead
		self.vb.DreadscaleDead = true
		timerBurningSprayCD:Cancel()
		timerBurningBiteCD:Cancel()
		timerMoltenSpewCD:Cancel()
		timerSubmerge:Cancel()
		timerEmerge:Cancel()
		if self.vb.DreadscaleMobile then
			timerSlimePoolCD:Cancel(args.destName)
		else
			timerSweepCD:Cancel(args.destName)
		end
		if self.vb.AcidmawDead then
			timerNextBoss:Cancel()
			DBM.BossHealth:RemoveBoss(35144)
			DBM.BossHealth:RemoveBoss(34799)
			queueIcehowlPhase(self, TOGC_ICEHOWL_PHASE_DEATH_FALLBACK)
		end
	elseif cid == 34797 then
		DBM:EndCombat(self)
	end
end

function mod:INSTANCE_ENCOUNTER_ENGAGE_UNIT()
	for i = 1, 5 do
		local unitID = "boss"..i
		if UnitExists(unitID) then
			local cid = self:GetUnitCreatureId(unitID)
			if (cid == 35144 or cid == 34799) and not self:GetStage(2) then
				startWormPhaseFallback(self)
				return
			elseif cid == 34797 and not self:GetStage(3) then
				startIcehowlPhaseFallback(self)
				return
			end
		end
	end
end

function mod:SWING_DAMAGE(sourceGUID, _, _, destGUID)
	local sourceCID = self:GetCIDFromGUID(sourceGUID)
	local destCID = self:GetCIDFromGUID(destGUID)
	if not self:IsInCombat() and (sourceCID == 34796 or destCID == 34796) then
		ensureCombatStarted(self, "SWING_DAMAGE")
	end
	if (sourceCID == 35144 or sourceCID == 34799 or destCID == 35144 or destCID == 34799) and not self:GetStage(2) then
		startWormPhaseFallback(self)
	elseif (sourceCID == 34797 or destCID == 34797) and not self:GetStage(3) then
		startIcehowlPhaseFallback(self)
	end
end
mod.SWING_MISSED = mod.SWING_DAMAGE

function mod:UNIT_SPELLCAST_START(_, spellName)
	if spellName == GetSpellInfo(66683) then -- Massive Crash
		timerBreathCD:Cancel()
		timerNextCrash:Start(ICEHOWL_NEXT_CRASH)
	end
end

function mod:UNIT_SPELLCAST_SUCCEEDED(uId, spellName)
	if spellName == GetSpellInfo(66948) then -- Submerge
		if oneWormDead(self) then
			timerSubmerge:Cancel()
			timerEmerge:Cancel()
			return
		end
		local npcId = self:GetUnitCreatureId(uId)
		local unitName = UnitName(uId) or UNKNOWN
		DBM:Debug("Submerge casted by " .. unitName.. ": " .. tostring(npcId), 2)
		if npcId == 35144 then -- Acidmaw
			acidmawSubmerged = true -- this workaround is necessary since I had one log (25H Lordaeron 2022/09/24) that Emerged fired 1.0s after IEEU, so enforce submerge/emerge conditional logic
			timerAcidicSpewCD:Stop()
			timerParalyticBiteCD:Stop()
			timerSlimePoolCD:Stop(acidmaw)
			timerSweepCD:Stop(acidmaw)
			timerEmerge:Start(7.5, unitName) -- REVIEW! 3s delay from visual to emerge (25H Lordaeron 2022/09/03) - 8, 7
		elseif npcId == 34799 then -- Dreadscale
			timerMoltenSpewCD:Stop()
			timerBurningBiteCD:Stop()
			timerBurningSprayCD:Stop()
			timerSlimePoolCD:Stop(dreadscale)
			timerSweepCD:Stop(dreadscale)
			timerEmerge:Start(6.5, unitName) -- (25H Lordaeron 2022/09/03) - 7, 6
		end
	elseif spellName == GetSpellInfo(66947) then -- Emerge
		if oneWormDead(self) then
			timerSubmerge:Cancel()
			timerEmerge:Cancel()
			return
		end
		local npcId = self:GetUnitCreatureId(uId)
		local unitName = UnitName(uId) or UNKNOWN
		DBM:Debug("Emerge casted by " .. unitName.. ": " .. tostring(npcId), 2)
		if npcId == 35144 and acidmawSubmerged then -- Acidmaw
			self.vb.AcidmawMobile = not self.vb.AcidmawMobile
			acidmawSubmerged = false
			DBM:Debug("Acidmaw PHASE_STATIONARY: " .. tostring(self.vb.AcidmawMobile), 2)
			timerSubmerge:Start("v45-50", acidmaw)
			if self.vb.AcidmawMobile then
				timerParalyticBiteCD:Start(20)
				timerAcidicSpewCD:Start("v15-30")
				timerSlimePoolCD:Start(15, acidmaw)
			else
				timerSweepCD:Start("v15-30", acidmaw)
			end
		elseif npcId == 34799 then -- Dreadscale
			self.vb.DreadscaleMobile = not self.vb.DreadscaleMobile
			DBM:Debug("Dreadscale PHASE_STATIONARY: " .. tostring(self.vb.DreadscaleMobile), 2)
			timerSubmerge:Start("v45-50", dreadscale)
			if self.vb.DreadscaleMobile then
				timerMoltenSpewCD:Start("v15-30")
				timerBurningBiteCD:Start(15)
				timerSlimePoolCD:Start(15, dreadscale)
			else
				timerSweepCD:Start("v15-30", dreadscale)
				timerBurningSprayCD:Start(15)
			end
		end
	end
end
