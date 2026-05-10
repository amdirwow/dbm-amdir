local mod	= DBM:NewMod("AmdirGuardian", "DBM-AmdirWorld")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20260510181500")
mod:SetCreatureID(990500)
mod:EnableWBEngageSync()

local BOSS_NAME = "Проклятий страж Амдіру"

local YELL_PULL = "Ви розбудили те, що мало спати!"
local YELL_PHASE_2 = "Помічники тримають мою плоть. Зламайте їх, якщо зможете!"
local YELL_ANCHORS_BROKEN = "Захист зруйновано..."
local YELL_PHASE_3 = "Досить. Тепер ви побачите справжню давню лють."
local YELL_HEAL_START = "Моя кров наповнюється силою..."
local YELL_HEAL_SHIELD_BROKEN = "Щит ритуалу розбито..."
local YELL_HEAL_INTERRUPTED = "Мій ритуал... зірвано."
local YELL_DEATH = "Ні... неможливо?"

local warnMeteor				= mod:NewSpellAnnounce(28884, 4)
local warnPhase2				= mod:NewAnnounce("WarnPhase2", 2)
local warnPhase3				= mod:NewAnnounce("WarnPhase3", 2)
local warnHealShieldBroken	= mod:NewAnnounce("WarnHealShieldBroken", 2)
local warnHealInterrupted	= mod:NewAnnounce("WarnHealInterrupted", 2)
local warnBerserk			= mod:NewSpellAnnounce(26662, 4)

local specWarnMeteor			= mod:NewSpecialWarningSpell(28884, nil, nil, nil, 2, 2)
local specWarnVoidZone		= mod:NewSpecialWarningMove(28865, nil, nil, nil, 1, 2)
local specWarnKickNow		= mod:NewSpecialWarning("SpecWarnKickNow", "HasInterrupt", nil, nil, 1, 2, nil, nil, 12051)

local timerMeteorCD			= mod:NewNextTimer(30, "TimerMeteorCD", 28884, nil, nil, 3, nil, DBM_COMMON_L.DEADLY_ICON)
local timerCurseCD			= mod:NewNextTimer(22, "TimerCurseCD", 57381, nil, nil, 3)
local timerHealCD			= mod:NewNextTimer(60, "TimerHealCD", 12051, nil, nil, 4, nil, DBM_COMMON_L.INTERRUPT_ICON)
local timerHealCast			= mod:NewCastTimer(16, "TimerHealCast", 12051, nil, nil, 4, nil, DBM_COMMON_L.INTERRUPT_ICON)
local timerAnchorFail		= mod:NewTimer(60, "TimerAnchorFail", 59975, nil, nil, 1)
local berserkTimer			= mod:NewBerserkTimer(600)

mod.vb.phase = 1
mod.vb.active = false
mod.vb.healRitualActive = false
mod.vb.healVisualRemoved = 0
mod.vb.healInterruptedAnnounced = false
mod.vb.lastVoidZoneWarn = 0

local function IsBossName(name)
	return name == BOSS_NAME
end

local function StartEncounter()
	if mod.vb.active then
		return
	end

	mod.vb.active = true
	mod.vb.phase = 1
	mod.vb.healRitualActive = false
	mod.vb.healVisualRemoved = 0
	mod.vb.healInterruptedAnnounced = false
	mod.vb.lastVoidZoneWarn = 0

	berserkTimer:Start()
end

local function EndEncounter()
	if not mod.vb.active then
		return
	end

	mod.vb.active = false
	mod.vb.phase = 1
	mod.vb.healRitualActive = false
	mod.vb.healVisualRemoved = 0
	mod.vb.healInterruptedAnnounced = false
	mod.vb.lastVoidZoneWarn = 0

	timerMeteorCD:Stop()
	timerCurseCD:Stop()
	timerHealCD:Stop()
	timerHealCast:Stop()
	timerAnchorFail:Stop()
	berserkTimer:Stop()
end

local function StopHealRitual(announce)
	timerHealCast:Stop()
	mod.vb.healRitualActive = false
	mod.vb.healVisualRemoved = 0

	if announce and not mod.vb.healInterruptedAnnounced then
		mod.vb.healInterruptedAnnounced = true
		warnHealInterrupted:Show()
	end
end

local function WarnVoidZone()
	local now = GetTime()
	if now - (mod.vb.lastVoidZoneWarn or 0) < 2.5 then
		return
	end

	mod.vb.lastVoidZoneWarn = now
	specWarnVoidZone:Show()
	specWarnVoidZone:Play("runout")
end

local function OnBossYell(msg, npc)
	if not IsBossName(npc) then
		return
	end

	if msg == YELL_PULL then
		StartEncounter()

	elseif msg == YELL_PHASE_2 then
		StartEncounter()
		mod.vb.phase = 2

		warnPhase2:Show()
		timerMeteorCD:Start(6)
		timerCurseCD:Start(14)
		timerAnchorFail:Start(60)

	elseif msg == YELL_ANCHORS_BROKEN then
		timerAnchorFail:Stop()

	elseif msg == YELL_PHASE_3 then
		StartEncounter()
		mod.vb.phase = 3

		warnPhase3:Show()
		timerMeteorCD:Start(6)
		timerCurseCD:Start(8)
		timerHealCD:Start(6)
		timerAnchorFail:Stop()

	elseif msg == YELL_HEAL_START then
		StartEncounter()

		mod.vb.healRitualActive = true
		mod.vb.healVisualRemoved = 0
		mod.vb.healInterruptedAnnounced = false

		specWarnKickNow:Show()
		specWarnKickNow:Play("kickcast")
		timerHealCast:Start(16)
		timerHealCD:Start(60)

	elseif msg == YELL_HEAL_SHIELD_BROKEN then
		warnHealShieldBroken:Show()

	elseif msg == YELL_HEAL_INTERRUPTED then
		StopHealRitual(true)

	elseif msg == YELL_DEATH then
		EndEncounter()
	end
end

local function OnCombatLogEvent(...)
	local timestamp, subEvent, sourceGUID, sourceName, sourceFlags, destGUID, destName, destFlags, spellId, spellName, spellSchool, extraSpellId, extraSpellName = ...

	if not mod.vb.active and IsBossName(sourceName) then
		StartEncounter()
	end

	if spellId == 28884 and subEvent == "SPELL_CAST_START" and IsBossName(sourceName) then
		warnMeteor:Show()
		timerMeteorCD:Start(mod.vb.phase >= 3 and 22 or 30)

	-- Неутолимая боль: лишаємо тільки бар до наступного касту.
	-- Окремий анонс/спецпопередження не потрібні, бо її не можна диспелити чи уникнути.
	elseif spellId == 57381 and subEvent == "SPELL_CAST_START" and IsBossName(sourceName) then
		timerCurseCD:Start(mod.vb.phase >= 3 and 14 or 22)

	-- Лужа / Ancient Void Rift: попередження тільки гравцю, який реально стоїть у ній.
	elseif spellId == 28865 and destName == UnitName("player")
		and (subEvent == "SPELL_DAMAGE" or subEvent == "SPELL_PERIODIC_DAMAGE" or subEvent == "SPELL_MISSED") then
		WarnVoidZone()

	elseif spellId == 12051 and subEvent == "SPELL_AURA_REMOVED" and IsBossName(sourceName) and mod.vb.healRitualActive then
		mod.vb.healVisualRemoved = (mod.vb.healVisualRemoved or 0) + 1

		-- 12051 короткий, тому під час 16-сек ритуалу може спадати двічі.
		-- Перший REMOVED ігноруємо, другий закриває кастбар без дубля "Ритуал перервано".
		if mod.vb.healVisualRemoved >= 2 then
			StopHealRitual(false)
		end

	elseif subEvent == "SPELL_INTERRUPT" and destName == BOSS_NAME and extraSpellId == 12051 then
		StopHealRitual(true)

	elseif spellId == 26662 and (subEvent == "SPELL_CAST_SUCCESS" or subEvent == "SPELL_AURA_APPLIED") and IsBossName(sourceName) then
		warnBerserk:Show()
	end
end

local f = CreateFrame("Frame")
f:RegisterEvent("CHAT_MSG_MONSTER_YELL")
f:RegisterEvent("CHAT_MSG_MONSTER_SAY")
f:RegisterEvent("CHAT_MSG_RAID_BOSS_EMOTE")
f:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
f:RegisterEvent("PLAYER_REGEN_ENABLED")

f:SetScript("OnEvent", function(self, event, ...)
	if event == "CHAT_MSG_MONSTER_YELL" or event == "CHAT_MSG_MONSTER_SAY" or event == "CHAT_MSG_RAID_BOSS_EMOTE" then
		local msg, npc = ...
		OnBossYell(msg, npc)

	elseif event == "COMBAT_LOG_EVENT_UNFILTERED" then
		OnCombatLogEvent(...)

	elseif event == "PLAYER_REGEN_ENABLED" then
		EndEncounter()
	end
end)
