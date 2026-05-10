local L

L = DBM:GetModLocalization("AmdirGuardian")

L:SetGeneralLocalization({
	name = "Cursed Guardian of Amdir"
})

L:SetWarningLocalization({
	WarnPhase2 = "Phase 2 - Ancient Link Spheres",
	WarnPhase3 = "Phase 3 - Ritual begins soon",
	WarnAnchorFail = "Anchors restored the boss",
	WarnHealShieldBroken = "Ritual shield broken - interrupt now",
	WarnHealSuccess = "Boss restored health",
	WarnHealInterrupted = "Ritual interrupted"
})

L:SetTimerLocalization({
	TimerMeteorCD = "Next Meteor",
	TimerCurseCD = "Next Curse",
	TimerHealCD = "Next Ritual",
	TimerHealCast = "Healing Ritual",
	TimerAnchorFail = "Anchor heal"
})

L:SetOptionLocalization({
	WarnPhase2 = "Announce phase 2",
	WarnPhase3 = "Announce phase 3",
	WarnAnchorFail = "Announce anchor heal success",
	WarnHealShieldBroken = "Announce when ritual shield breaks",
	WarnHealSuccess = "Announce when boss heal succeeds",
	WarnHealInterrupted = "Announce when ritual is interrupted",
	TimerMeteorCD = "Show timer for next $spell:28884",
	TimerCurseCD = "Show timer for next $spell:57381",
	TimerHealCD = "Show timer for next ritual",
	TimerHealCast = "Show cast timer for ritual",
	TimerAnchorFail = "Show timer until anchors heal the boss",
	SpecWarnKickNow = "Show special warning when you should interrupt the ritual"
})

L:SetMiscLocalization({
	Pull = "Ви розбудили те, що мало спати!",
	YellPhase2 = "Помічники тримають мою плоть. Зламайте їх, якщо зможете!",
	YellShieldFailed = "Ви слабкі. Я відновився!",
	YellPhase3 = "Досить. Тепер ви побачите справжню давню лють.",
	YellHealStart = "Моя кров наповнюється силою...",
	YellHealSuccess = "Надто пізно.",
	YellHealInterrupted = "Мій ритуал... зірвано.",
	YellBerserk = "Досить! Ви витратили забагато часу.",
	YellHealShieldBroken = "Щит ритуалу розбито..."
})
