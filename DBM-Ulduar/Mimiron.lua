local mod	= DBM:NewMod("Mimiron", "DBM-Ulduar")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20250929220131")
mod:SetCreatureID(33350, 33432, 33651, 33670)
mod:SetEncounterID(754)
mod:SetUsedIcons(1, 2, 3, 4, 5, 6, 7, 8)
mod:SetHotfixNoticeRev(20220823000000)

mod:RegisterCombat("combat_yell", L.YellPull)
mod:RegisterCombat("yell", L.YellHardPull)
mod:RegisterKill("yell", L.YellKilled)

mod:RegisterEvents(
	"CHAT_MSG_MONSTER_YELL"
)

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 63631 63666 64529 62997 64570 64623 64383 63689",
	"SPELL_CAST_SUCCESS 63027 63414 65192",
	"SPELL_AURA_APPLIED 63666 65026 64529 62997 64616 64570 64582",
	"SPELL_AURA_REMOVED 63666 65026",
	"SPELL_SUMMON 63811",
	"SPELL_HEAL 64383",
	"UNIT_SPELLCAST_CHANNEL_STOP boss1 boss2 boss3",
	"UNIT_SPELLCAST_START boss1",
	"UNIT_SPELLCAST_SUCCEEDED boss1 boss2 boss3",
	"CHAT_MSG_LOOT",
	"PARTY_LOOT_METHOD_CHANGED"
)

--General
local timerEnrage					= mod:NewBerserkTimer(900)
local timerP1toP2					= mod:NewTimer(40, "TimeToPhase2", nil, nil, nil, 6) -- From YellPhase2 to IEEU
local timerP2toP3					= mod:NewTimer(21, "TimeToPhase3", nil, nil, nil, 6) -- From YellPhase3 to IEEU
local timerP3toP4					= mod:NewTimer(26, "TimeToPhase4", nil, nil, nil, 6) -- From YellPhase4 to IEEU

mod:AddRangeFrameOption("6")

-- Stage One
mod:AddTimerLine(DBM_CORE_L.SCENARIO_STAGE:format(1)..": "..L.MobPhase1)
local warnNapalmShell				= mod:NewTargetNoFilterAnnounce(63666, 2, nil, "Healer")
local warnPlasmaBlast				= mod:NewTargetNoFilterAnnounce(64529, 4, nil, "Tank|Healer")

local specWarnShockBlast			= mod:NewSpecialWarningRun(63631, "Melee", nil, nil, 4, 2)
local specWarnPlasmaBlast			= mod:NewSpecialWarningDefensive(64529, nil, nil, nil, 1, 2)

local timerProximityMines			= mod:NewCDTimer(30, 63027, nil, nil, nil, 3)
local timerShockBlast				= mod:NewCastTimer(4, 63631, nil, nil, nil, 2, nil, DBM_COMMON_L.DEADLY_ICON)
local timerNextShockBlast			= mod:NewNextTimer(30, 63631, nil, nil, nil, 2, nil, DBM_COMMON_L.DEADLY_ICON)
local timerNapalmShell				= mod:NewBuffActiveTimer(6, 63666, nil, "Healer", 2, 5, nil, DBM_COMMON_L.IMPORTANT_ICON..DBM_COMMON_L.HEALER_ICON)
local timerPlasmaBlastCD			= mod:NewCDTimer(22, 64529, nil, "Tank", 2, 5, nil, DBM_COMMON_L.TANK_ICON)

mod:AddSetIconOption("SetIconOnNapalm", 63666, false, false, {1, 2, 3, 4, 5, 6, 7})
mod:AddSetIconOption("SetIconOnPlasmaBlast", 64529, false, false, {8})

-- Stage Two
mod:AddTimerLine(DBM_CORE_L.SCENARIO_STAGE:format(2)..": "..L.MobPhase2)
local specWarnP3Wx2LaserBarrage		= mod:NewSpecialWarningDodge(63274, nil, nil, nil, 3, 2) -- P3Wx2 Laser Barrage
local specWarnRocketStrike			= mod:NewSpecialWarningDodge(64402, nil, nil, nil, 2, 2)

local timerSpinUp					= mod:NewCastTimer(4, 63414, nil, nil, nil, 3, nil, DBM_COMMON_L.DEADLY_ICON)
local timerP3Wx2LaserBarrageCast	= mod:NewCastTimer(10, 63274, nil, nil, nil, 3, nil, DBM_COMMON_L.DEADLY_ICON)
local timerNextP3Wx2LaserBarrage	= mod:NewNextTimer(45, 63414, nil, nil, nil, 3, nil, DBM_COMMON_L.DEADLY_ICON) -- REVIEW! variance? S2 VOD reviews - 47.5, 45
local timerRocketStrikeCD			= mod:NewCDTimer(20, 64402, nil, nil, nil, 3)--20-25

-- Stage Three
mod:AddTimerLine(DBM_CORE_L.SCENARIO_STAGE:format(3)..": "..L.MobPhase3)
local warnLootMagneticCore			= mod:NewAnnounce("MagneticCore", 1, 64444, nil, nil, nil, 64444)
local warnBombBotSpawn				= mod:NewAnnounce("WarnBombSpawn", 3, 63811, nil, nil, nil, 63811)

local timerBombBotSpawn				= mod:NewCDTimer(15, 63811, nil, nil, nil, 1)

mod:AddBoolOption("AutoChangeLootToFFA", true, nil, nil, nil, nil, 64444)

-- Stage Four
mod:AddTimerLine(DBM_CORE_L.SCENARIO_STAGE:format(4)..": "..L.MobPhase4)
local timerSelfRepair				= mod:NewCastSourceTimer(15, 64383, nil, nil, nil, 7, nil, DBM_COMMON_L.IMPORTANT_ICON)

-- Hard Mode
mod:AddTimerLine(DBM_COMMON_L.HEROIC_ICON..DBM_CORE_L.HARD_MODE)
local warnFlamesSoon				= mod:NewSoonAnnounce(64566, 1)

local timerHardmode					= mod:NewTimer(610, "TimerHardmode", 64582, nil, nil, 6, nil, nil, nil, nil, nil, nil, nil, 64582)
local timerNextFlames				= mod:NewNextTimer(30, 64566, nil, nil, nil, 7, nil, DBM_COMMON_L.IMPORTANT_ICON, nil, 1, 5)

-- Stage One
mod:AddTimerLine(DBM_CORE_L.SCENARIO_STAGE:format(1)..": "..L.MobPhase1)
local timerFlameSuppressantP1Debuff	= mod:NewBuffActiveTimer(8, 64570, nil, nil, nil, 3)
local timerNextFlameSuppressantP1	= mod:NewCDTimer(60, 64570, nil, nil, nil, 3) -- S2 VOD review

-- Stage Two
mod:AddTimerLine(DBM_CORE_L.SCENARIO_STAGE:format(2)..": "..L.MobPhase2)
local warnFrostBomb					= mod:NewSpellAnnounce(64623, 3)

local timerFrostBombExplosion		= mod:NewCastTimer(15, 65333, nil, nil, nil, 3)
local timerNextFrostBomb			= mod:NewNextTimer(45, 64623, nil, nil, nil, 3, nil, DBM_COMMON_L.HEROIC_ICON, true)
local timerNextFlameSuppressantP2	= mod:NewNextTimer(10, 65192, nil, nil, nil, 3) -- 2s (26.4 outlier??) variance (S2 VOD review) - 12, 12, 11, 10 || 12.3, 12.4, 26.4, 11.3, 12.4

-- Stage Three
mod:AddTimerLine(DBM_CORE_L.SCENARIO_STAGE:format(3)..": "..L.MobPhase3)
local specWarnDeafeningSiren		= mod:NewSpecialWarningMove(64616, nil, nil, nil, 1, 2)

-- Stage Four
-- mod:AddTimerLine(DBM_CORE_L.SCENARIO_STAGE:format(4)..": "..L.MobPhase4)
-- nothing new to add

mod:GroupSpells(63274, 63293) -- Spinning Up and P3Wx2 Laser Barrage
mod:GroupSpells(64623, 65333) -- Frost Bomb, Frost Bomb Explosion

local cachedLootmethod, _, masterlooterRaidID
mod.vb.hardmode = false
mod.vb.napalmShellIcon = 7
local spinningUp = DBM:GetSpellInfo(63414)
local lastSpinUp = 0
mod.vb.is_spinningUp = false
local napalmShellTargets = {}

local NPC_LEVIATHAN_MKII			= 33432
local NPC_VX001						= 33651
local NPC_AERIAL_COMMAND_UNIT		= 33670
local NPC_LEVIATHAN_MKII_CANNON		= 34071

local function ResetRange(self)
	if self.Options.RangeFrame then
		DBM.RangeCheck:DisableBossMode()
	end
end

local function Flames(self)	-- Flames -- UNIT_SPELLCAST_SUCCEEDED does not show on etrace
	timerNextFlames:Start()
	self:Schedule(30, Flames, self)
	warnFlamesSoon:Schedule(20)
	warnFlamesSoon:Schedule(25)
end

local function warnNapalmShellTargets(self)
	warnNapalmShell:Show(table.concat(napalmShellTargets, "<, >"))
	table.wipe(napalmShellTargets)
	self.vb.napalmShellIcon = 7
end

local function show_warning_for_spinup(self)
	if self.vb.is_spinningUp then
		specWarnP3Wx2LaserBarrage:Show()
		specWarnP3Wx2LaserBarrage:Play("watchstep")
		specWarnP3Wx2LaserBarrage:ScheduleVoice(1, "keepmove")
	end
end

local function UpdateHealthFrame(self)
	if not self.Options.HealthFrame then return end
	if self.vb.phase == 1 then
		DBM.BossHealth:Clear()
		DBM.BossHealth:AddBoss(NPC_LEVIATHAN_MKII, L.MobPhase1)
	elseif self.vb.phase == 2 then
		DBM.BossHealth:Clear()
		DBM.BossHealth:AddBoss(NPC_VX001, L.MobPhase2)
	elseif self.vb.phase == 3 then
		DBM.BossHealth:Clear()
		DBM.BossHealth:AddBoss(NPC_AERIAL_COMMAND_UNIT, L.MobPhase3)
	elseif self.vb.phase == 4 then
		DBM.BossHealth:Show(L.name)
		DBM.BossHealth:AddBoss(NPC_AERIAL_COMMAND_UNIT, L.MobPhase3)
		DBM.BossHealth:AddBoss(NPC_VX001, L.MobPhase2)
		DBM.BossHealth:AddBoss(NPC_LEVIATHAN_MKII, L.MobPhase1)
	end
end

local function StartHardMode(self, phaseOneActive)
	self.vb.hardmode = true
	if not self.vb.hardmodeStarted then
		self.vb.hardmodeStarted = true
		self:SetWipeTime(10)
		timerHardmode:Start(phaseOneActive and 596 or nil)
		timerEnrage:Start(phaseOneActive and 586 or 600)
		if phaseOneActive then
			timerNextFlames:Start(18)
			self:Schedule(18, Flames, self)
			warnFlamesSoon:Schedule(13)
		else
			timerPlasmaBlastCD:Start(24)
			timerNextFlameSuppressantP1:Start(80)
			timerProximityMines:Start(20)
			timerNextFlames:Start(9)
			self:Schedule(9, Flames, self)
			warnFlamesSoon:Schedule(4)
			timerNextShockBlast:Start(35)
		end
	end
end

local function StartNormalMode(self)
	if self.vb.normalStarted or self.vb.hardmodeStarted then return end
	self.vb.normalStarted = true
	self.vb.hardmode = false
	timerPlasmaBlastCD:Start(18)
	timerNextShockBlast:Start(28)
	timerProximityMines:Start(14)
	timerEnrage:Start()
end

local function StartPhaseOneActive(self)
	if self.vb.phaseOneActive then return end
	self.vb.phaseOneActive = true
	if self.vb.hardmode then
		StartHardMode(self, true)
		timerPlasmaBlastCD:Start(10)
		timerNextShockBlast:Start(21)
		timerProximityMines:Start(6)
		timerNextFlameSuppressantP1:Start(66)
	end
end

local function WarnShockBlast(self)
	if not self:AntiSpam(2, 63631) then return end
	specWarnShockBlast:Show()
	specWarnShockBlast:Play("runout")
	timerShockBlast:Start()
	timerNextShockBlast:Start(30)
	timerProximityMines:Start(8)
	if self.Options.RangeFrame then
		DBM.RangeCheck:SetBossRange(15, self:GetBossUnitByCreatureId(NPC_LEVIATHAN_MKII))
		self:Schedule(4.5, ResetRange, self)
	end
end

local function ActivatePhase(self, phase)
	if (self.vb.activePhase or 0) >= phase then return end
	self.vb.activePhase = phase
	if (self.vb.phase or 0) < phase then
		self:SetStage(phase)
	end
	if phase == 2 then
		timerP1toP2:Stop()
		timerNextShockBlast:Stop()
		timerProximityMines:Stop()
		timerNextFlameSuppressantP1:Stop()
		timerPlasmaBlastCD:Stop()
		timerP3Wx2LaserBarrageCast:Cancel()
		timerNextP3Wx2LaserBarrage:Start(30)
		timerRocketStrikeCD:Start(16)
		if self.Options.RangeFrame then
			DBM.RangeCheck:Hide()
		end
		if self.vb.hardmode then
			timerNextFrostBomb:Start(3)
			timerNextFlameSuppressantP2:Start(7)
		end
	elseif phase == 3 then
		if self.Options.AutoChangeLootToFFA and DBM:GetRaidRank() == 2 and GetLootMethod() ~= "freeforall" then
			cachedLootmethod, _, masterlooterRaidID = GetLootMethod()
			SetLootMethod("freeforall")
		end
		timerP2toP3:Stop()
		timerP3Wx2LaserBarrageCast:Cancel()
		timerNextP3Wx2LaserBarrage:Cancel()
		timerNextFrostBomb:Cancel()
		timerRocketStrikeCD:Cancel()
		timerNextFlameSuppressantP2:Cancel()
		timerBombBotSpawn:Start()
	elseif phase == 4 then
		if self.Options.AutoChangeLootToFFA and DBM:GetRaidRank() == 2 and GetLootMethod() == "freeforall" and cachedLootmethod then
			if masterlooterRaidID then
				SetLootMethod(cachedLootmethod, "raid"..masterlooterRaidID)
			else
				SetLootMethod(cachedLootmethod)
			end
		end
		timerP3toP4:Stop()
		timerBombBotSpawn:Cancel()
		timerProximityMines:Start(6)
		timerNextShockBlast:Start(20)
		timerNextP3Wx2LaserBarrage:Start(30)
		timerRocketStrikeCD:Start(16)
		if self.vb.hardmode then
			timerNextFrostBomb:Start(1)
		end
	end
	UpdateHealthFrame(self)
end

local function NextPhase(self)
	self:SetStage(0)
	if self.vb.phase == 1 then
		UpdateHealthFrame(self)
	elseif self.vb.phase == 2 then
		timerNextShockBlast:Stop()
		timerProximityMines:Stop()
		timerNextFlameSuppressantP1:Stop()
		timerPlasmaBlastCD:Stop()
		timerP1toP2:Start()
		timerNextP3Wx2LaserBarrage:Schedule(40, 31) -- REVIEW! ~3s variance? (25 man NM log 2022/07/10 || S3 HM log 2022/07/17 || Lord 25 NM log 2022/07/31 ) - 34 || 31 || 34
		UpdateHealthFrame(self)
		if self.Options.RangeFrame then
			DBM.RangeCheck:Hide()
		end
		if self.vb.hardmode then
			timerNextFrostBomb:Start(44.3) -- (25H Lordaeron 2022/10/09) - 44.3
		end
	elseif self.vb.phase == 3 then
		if self.Options.AutoChangeLootToFFA and DBM:GetRaidRank() == 2 and GetLootMethod() ~= "freeforall" then
			cachedLootmethod, _, masterlooterRaidID = GetLootMethod()
			SetLootMethod("freeforall")
		end
		timerP3Wx2LaserBarrageCast:Cancel()
		timerNextP3Wx2LaserBarrage:Cancel()
		timerNextFrostBomb:Cancel()
		timerP2toP3:Start()
		timerBombBotSpawn:Start(32.5) -- 25 man NM log review (2022/07/10 || 25H Lordaeron 2022/10/09) - 33 || 32.5
		UpdateHealthFrame(self)
	elseif self.vb.phase == 4 then
		-- Don't change loot if it was manually changed
		if self.Options.AutoChangeLootToFFA and DBM:GetRaidRank() == 2 and GetLootMethod() == "freeforall" and cachedLootmethod then
			if masterlooterRaidID then
				SetLootMethod(cachedLootmethod, "raid"..masterlooterRaidID)
			else
				SetLootMethod(cachedLootmethod)
			end
		end
		timerBombBotSpawn:Cancel()
		timerP3toP4:Start(32)
		timerProximityMines:Start(38)
		timerNextShockBlast:Start(52)
		timerNextP3Wx2LaserBarrage:Start(62)
		UpdateHealthFrame(self)
		if self.vb.hardmode then
			timerNextFrostBomb:Start(33)
		end
	end
end

function mod:OnCombatStart()
	self.vb.phase = 0
	self.vb.activePhase = 0
	self.vb.hardmodeStarted = false
	self.vb.normalStarted = false
	self.vb.phaseOneActive = false
	self.vb.is_spinningUp = false
	self.vb.napalmShellIcon = 7
	table.wipe(napalmShellTargets)
	NextPhase(self)
	-- Cache the loot method in case loot gets manually changed to ffa before Phase 3
	if DBM:GetRaidRank() == 2 then
		cachedLootmethod, _, masterlooterRaidID = GetLootMethod()
		if cachedLootmethod == "freeforall" then cachedLootmethod = nil end
	end
	if self.Options.RangeFrame then
		DBM.RangeCheck:Show(6)
	end
end

function mod:OnCombatEnd()
	self:Unschedule(Flames)
	if self.Options.HealthFrame then
		DBM.BossHealth:Hide()
	end
	if self.Options.RangeFrame then
		DBM.RangeCheck:Hide()
	end
	-- Don't change loot if it was manually changed away from ffa
	if self.Options.AutoChangeLootToFFA and DBM:GetRaidRank() == 2 and GetLootMethod() == "freeforall" and cachedLootmethod then
		if masterlooterRaidID then
			SetLootMethod(cachedLootmethod, "raid"..masterlooterRaidID)
		else
			SetLootMethod(cachedLootmethod)
		end
	end
end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 63631 then -- Shock Blast
		if self.vb.phase >= 3 then
			ActivatePhase(self, 4)
		end
		WarnShockBlast(self)
	elseif spellId == 63666 then -- Napalm Shell
		StartPhaseOneActive(self)
	elseif args:IsSpellID(64529, 62997) then	-- Plasma Blast
		StartPhaseOneActive(self)
		if self:IsTanking("player", "boss1", nil, true) then
			specWarnPlasmaBlast:Show()
			specWarnPlasmaBlast:Play("defensive")
		end
		timerPlasmaBlastCD:Start(22)
	elseif spellId == 64570 then	-- Flame Suppressant (phase 1)
		timerNextFlameSuppressantP1:Stop()
	elseif spellId == 64623 then	-- Frost Bomb
		local cid = self:GetCIDFromGUID(args.sourceGUID)
		if cid == NPC_VX001 then
			if self.vb.phase >= 3 then
				ActivatePhase(self, 4)
			else
				ActivatePhase(self, 2)
			end
		end
		warnFrostBomb:Show()
		timerFrostBombExplosion:Start()
		timerNextFrostBomb:Start(45)
	elseif spellId == 64383 then -- Self Repair (phase 4)
		ActivatePhase(self, 4)
		-- REVIEW! Makes sense to cancel timers when each part dies? Or timers are continuous?
		timerSelfRepair:Start(args.sourceName)
	elseif spellId == 63689 then -- Plasma Ball
		ActivatePhase(self, 3)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 63027 then				-- Proximity Mines
		timerProximityMines:Start()
	elseif spellId == 63414 then			-- Spinning UP (before Dark Glare)
		if self.vb.phase >= 3 then
			ActivatePhase(self, 4)
		else
			ActivatePhase(self, 2)
		end
		self.vb.is_spinningUp = true
		timerSpinUp:Start()
		timerP3Wx2LaserBarrageCast:Schedule(4)
		timerNextP3Wx2LaserBarrage:Start(45)
		self:Schedule(0.15, show_warning_for_spinup, self)	-- wait 0.15 and then announce it, otherwise it will sometimes fail
		lastSpinUp = GetTime()
	elseif spellId == 65192 then	-- Flame Suppressant CD (phase 2)
		timerNextFlameSuppressantP2:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 64582 then -- Emergency Mode
		local cid = self:GetCIDFromGUID(args.sourceGUID)
		if cid == NPC_LEVIATHAN_MKII or cid == NPC_LEVIATHAN_MKII_CANNON then
			if self.vb.phase >= 3 then
				self.vb.hardmode = true
				ActivatePhase(self, 4)
			else
				StartHardMode(self, true)
				StartPhaseOneActive(self)
			end
		elseif cid == NPC_VX001 then
			self.vb.hardmode = true
			if self.vb.phase >= 3 then
				ActivatePhase(self, 4)
			else
				ActivatePhase(self, 2)
			end
		elseif cid == NPC_AERIAL_COMMAND_UNIT then
			self.vb.hardmode = true
			if self.vb.phase >= 3 then
				ActivatePhase(self, 4)
			else
				ActivatePhase(self, 3)
			end
		end
	elseif args:IsSpellID(63666, 65026) and args:IsDestTypePlayer() then	-- Napalm Shell
		napalmShellTargets[#napalmShellTargets + 1] = args.destName
		timerNapalmShell:Start()
		if self.Options.SetIconOnNapalm and self.vb.napalmShellIcon > 0 then
			self:SetIcon(args.destName, self.vb.napalmShellIcon, 6)
		end
		self.vb.napalmShellIcon = self.vb.napalmShellIcon - 1
		self:Unschedule(warnNapalmShellTargets)
		self:Schedule(0.3, warnNapalmShellTargets, self)
	elseif args:IsSpellID(64529, 62997) then	-- Plasma Blast
		warnPlasmaBlast:Show(args.destName)
		if self.Options.SetIconOnPlasmaBlast then
			self:SetIcon(args.destName, 8, 6)
		end
	elseif spellId == 64616 and args:IsPlayer() then	-- Deafening Siren (Hard Mode)
		specWarnDeafeningSiren:Show()
	elseif spellId == 64570 and args:IsPlayer() then	-- Flame Suppressant (phase 1)
		timerFlameSuppressantP1Debuff:Start()
	end
end

function mod:SPELL_HEAL(args)
	if args.spellId == 64383 then -- Self Repair (phase 4)
		ActivatePhase(self, 4)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(63666, 65026) then -- Napalm Shell
		if self.Options.SetIconOnNapalm then
			self:SetIcon(args.destName, 0)
		end
	end
end

function mod:SPELL_SUMMON(args)
	if args.spellId == 63811 then -- Bomb Bot, never fired on Warmane
		DBM:Debug("Bomb Bot unhidden from combat log. Report this to Amdir on Discord")
		timerBombBotSpawn:Start()
		warnBombBotSpawn:Show()
	end
end

function mod:UNIT_SPELLCAST_CHANNEL_STOP(_, spellName)
	if spellName == spinningUp and GetTime() - lastSpinUp < 3.9 then
		self.vb.is_spinningUp = false
		self:SendSync("SpinUpFail")
	end
end

function mod:UNIT_SPELLCAST_START(_, spellName)
	if spellName == GetSpellInfo(63631) then -- Shock Blast. Used UNIT event instead since I have a log where CLEU missed one SCStart
		WarnShockBlast(self)
	end
end

function mod:UNIT_SPELLCAST_SUCCEEDED(_, spellName)
	--[[if spellId == 34098 then--ClearAllDebuffs never fired due to unit not existing
		self:SetStage(0)
		if self.vb.phase == 2 then
			timerNextShockBlast:Stop()
			timerProximityMines:Stop()
			timerNextFlameSuppressantP1:Stop()
			timerPlasmaBlastCD:Stop()
			timerP1toP2:Start()
			if self.Options.RangeFrame then
				DBM.RangeCheck:Hide()
			end
			timerRocketStrikeCD:Start(63)
			timerNextP3Wx2LaserBarrage:Start(78)
			if self.vb.hardmode then
				timerNextFrostBomb:Start(94)
			end
		elseif self.vb.phase == 3 then
			timerP3Wx2LaserBarrageCast:Stop()
			timerNextP3Wx2LaserBarrage:Stop()
			timerNextFrostBomb:Stop()
			timerRocketStrikeCD:Stop()
			timerP2toP3:Start()
		elseif self.vb.phase == 4 then
			timerP3toP4:Start()
			if self.vb.hardmode then
				timerNextFrostBomb:Start(32)
			end
			timerRocketStrikeCD:Start(50)
			timerNextP3Wx2LaserBarrage:Start(59.8)
			timerNextShockBlast:Start(81)
		end--]]
	if spellName == GetSpellInfo(64402) or spellName == GetSpellInfo(65034) then	--P2, P4 Rocket Strike
		specWarnRocketStrike:Show()
		specWarnRocketStrike:Play("watchstep")
		timerRocketStrikeCD:Start()
	elseif spellName == GetSpellInfo(63811) then	--Bomb Bot
		warnBombBotSpawn:Show()
		timerBombBotSpawn:Start()
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.YellPull or msg:find(L.YellPull) then -- register Normal Mode
		StartNormalMode(self)
	elseif msg == L.YellHardPull or msg:find(L.YellHardPull) then -- register HARD Mode
		StartHardMode(self)
	elseif (msg == L.YellPhase2 or msg:find(L.YellPhase2)) and self.vb.phase < 2 then -- register Phase 2
		NextPhase(self)
	elseif (msg == L.YellPhase3 or msg:find(L.YellPhase3)) and self.vb.phase < 3 then -- register Phase 3
		NextPhase(self)
	elseif (msg == L.YellPhase4 or msg:find(L.YellPhase4)) and self.vb.phase < 4 then -- register Phase 4
		NextPhase(self)
	end
end

function mod:CHAT_MSG_LOOT(msg)
	local player, itemID = msg:match(L.LootMsg)
	if player and itemID and tonumber(itemID) == 46029 and self:IsInCombat() then
		player = DBM:GetUnitFullName(player) or UnitName("player") -- prevents nil string if the player is the one looting it: "You" receive loot...
		self:SendSync("LootMsg", player)
	end
end

-- Case where combat was started with the wrong loot and changed manually, and then put to ffa manually before Phase 3
-- This will not protect against misclicks before changing manually to ffa (loot will be returned to last misclicked type)
function mod:PARTY_LOOT_METHOD_CHANGED()
	if self.Options.AutoChangeLootToFFA and DBM:GetRaidRank() == 2 and self:GetStage(3, 1) and GetLootMethod() ~= "freeforall" then
		cachedLootmethod, _, masterlooterRaidID = GetLootMethod()
	end
end

function mod:OnSync(event, args)
	if event == "SpinUpFail" then
		self.vb.is_spinningUp = false
		timerSpinUp:Cancel()
		timerP3Wx2LaserBarrageCast:Cancel()
		timerNextP3Wx2LaserBarrage:Cancel()
		specWarnP3Wx2LaserBarrage:Cancel()
	elseif event == "LootMsg" and args and self:AntiSpam(2, 1) then
		warnLootMagneticCore:Show(args)
	end
end
