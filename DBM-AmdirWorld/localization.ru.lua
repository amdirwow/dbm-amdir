if GetLocale() ~= "ruRU" then return end
local L

L = DBM:GetModLocalization("AmdirGuardian")

L:SetGeneralLocalization({
	name = "Проклятий страж Амдіру"
})

L:SetWarningLocalization({
	WarnPhase2 = "2-а фаза - Сфери давнього зв’язку",
	WarnPhase3 = "3-я фаза - початок ритуалів",
	WarnAnchorFail = "Сфери відновили боса",
	WarnHealShieldBroken = "Щит ритуалу зламано - збивайте каст",
	WarnHealSuccess = "Бос відновив здоров’я",
	WarnHealInterrupted = "Ритуал перервано"
})

L:SetTimerLocalization({
	TimerMeteorCD = "Наступний метеор",
	TimerCurseCD = "Наступне прокляття",
	TimerHealCD = "Наступний ритуал",
	TimerHealCast = "Ритуал відхілу",
	TimerAnchorFail = "Відхіл від сфер"
})

L:SetOptionLocalization({
	WarnPhase2 = "Оголошувати 2-у фазу",
	WarnPhase3 = "Оголошувати 3-ю фазу",
	WarnAnchorFail = "Оголошувати успішний відхіл від сфер",
	WarnHealShieldBroken = "Оголошувати, коли щит ритуалу зламано",
	WarnHealSuccess = "Оголошувати успішний відхіл боса",
	WarnHealInterrupted = "Оголошувати зрив ритуалу",
	TimerMeteorCD = "Показувати таймер наступного $spell:28884",
	TimerCurseCD = "Показувати таймер наступного $spell:57381",
	TimerHealCD = "Показувати таймер наступного ритуалу",
	TimerHealCast = "Показувати каст-таймер ритуалу",
	TimerAnchorFail = "Показувати таймер до відхілу від сфер",
	SpecWarnKickNow = "Спец-попередження, коли треба збити ритуал"
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
