if GetLocale() ~= "ruRU" then return end
local L

---------------------------
--  Hydross the Unstable --
---------------------------
L = DBM:GetModLocalization("Hydross")

L:SetGeneralLocalization({
	name = "Гідрос Нестабільний"
})

L:SetWarningLocalization({
	WarnMark		= "%s : %s",
	WarnPhase		= "%s Phase",--Translate
	SpecWarnMark	= "%s : %s"
})

L:SetTimerLocalization({
	TimerMark	= "Next %s : %s"--Translate
})

L:SetOptionLocalization({
	WarnMark		= "Оголосити знаки",
	WarnPhase		= "Оголосити фази",
	SpecWarnMark	= "Show warning when Marks debuff damage over 100%",--Translate
	TimerMark		= "Show timer for next Marks"--Translate
})

L:SetMiscLocalization({
	Frost		= "Гідроса",
	Nature		= "псування",
	YellPull	= "Я не позволю вам вмешиваться!"
})

-----------------------
--  The Lurker Below --
-----------------------
L = DBM:GetModLocalization("LurkerBelow")

L:SetGeneralLocalization({
	name = "Прихований із глибин"
})

L:SetWarningLocalization({
	WarnSubmerge		= "Занурення",
	WarnSubmergeSoon	= "Занурення in 10 sec",--Verify
	WarnEmerge			= "Поява",
	WarnEmergeSoon		= "Поява in 10 sec"--Verify
})

L:SetTimerLocalization({
	TimerSubmerge		= "Занурення",
	TimerEmerge			= "Поява"
})

L:SetOptionLocalization({
	WarnSubmerge		= "Show warning when submerge",--Translate
	WarnSubmergeSoon	= "Show pre-warning for submerge",--Translate
	WarnEmerge			= "Show warning when emerge",--Translate
	WarnEmergeSoon		= "Show pre-warning for emerge",--Translate
	TimerSubmerge		= "Show time for submerge",--Translate
	TimerEmerge			= "Show time for emerge"--Translate
})

L:SetMiscLocalization({
	Spout	= "Прихований із глибин глибоко зітхає!"
})

--------------------------
--  Leotheras the Blind --
--------------------------
L = DBM:GetModLocalization("Leotheras")

L:SetGeneralLocalization({
	name = "Леотерас Сліпець"
})

L:SetWarningLocalization({
	WarnPhase		= "%s Phase",--Translate
	WarnPhaseSoon	= "%s Phase in 5 sec"--Translate
})

L:SetTimerLocalization({
	TimerPhase	= "Next %s Phase"--Translate
})

L:SetOptionLocalization({
	WarnPhase		= "Show warning for next phase",--Translate
	WarnPhaseSoon	= "Show pre-warning for next phase",--Translate
	TimerPhase		= "Show time for next phase"--Translate
})

L:SetMiscLocalization({
	Human		= "Human",--Translate
	Demon		= "Demon",--Translate
	YellDemon	= "Прочь, жалкий эльф. Настало мое время!",
	YellPhase2	= "Нет... нет! Что вы наделали? Я – главный! Слышишь меня? Я... Ааааах! Мне его... не удержать.",
	YellPull	= "Наконец-то мое заточение окончено!"
})

-----------------------------
--  Fathom-Lord Karathress --
-----------------------------
L = DBM:GetModLocalization("Fathomlord")

L:SetGeneralLocalization({
	name = "Володар глибин Каратресс"
})

L:SetMiscLocalization({
	Caribdis	= "Fathom-Guard Caribdis",--Translate
	Tidalvess	= "Fathom-Guard Tidalvess",--Translate
	Sharkkis	= "Fathom-Guard Sharkkis",--Translate
	YellPull	= "Стража, к бою! У нас гости..."
})

--------------------------
--  Morogrim Tidewalker --
--------------------------
L = DBM:GetModLocalization("Tidewalker")

L:SetGeneralLocalization({
	name = "Морогрим Волноступ"
})

L:SetWarningLocalization({
	WarnMurlocs		= "Мурлокі",
	SpecWarnMurlocs	= "Мурлоки!"
})

L:SetTimerLocalization({
	TimerMurlocs	= "Мурлокі"
})

L:SetOptionLocalization({
	WarnMurlocs		= "Оголошення Мурлоки",
	SpecWarnMurlocs	= "Show special warning when Murlocs spawning",--Translate
	TimerMurlocs	= "Show timer for Murlocs spawning"--Translate
})

L:SetMiscLocalization({
	Grave			= "%s отправляет своих врагов в водяные могилы!",
	Murlocs			= "Сильный толчок землетрясения насторожил мурлоков поблизости!"
})

-----------------
--  Lady Vashj --
-----------------
L = DBM:GetModLocalization("Vashj")

L:SetGeneralLocalization({
	name = "Леді Вайш"
})

L:SetWarningLocalization({
	WarnElemental		= "Нечистий елементаль через 5 секунд (%s)",
	WarnStrider			= "Долгоног через 5 секунд (%s)",
	WarnNaga			= "Нага через 5 секунд (%s)",
	WarnShield			= "Магічний бар'єр - деактивовано %d/4",
	WarnLoot			= ">%s< отримав зіпсовану магму",
	SpecWarnElemental	= "Нечистий елементаль за 5 секунд!"
})

L:SetTimerLocalization({
	TimerElemental		= "Нечистий елемент (%d)",--Verify
	TimerStrider		= "Долгоног (%d)",--Verify
	TimerNaga			= "Нага (%d)"--Verify
})

L:SetOptionLocalization({
	WarnElemental		= "Show pre-warning for next Tainted Elemental",--Translate
	WarnStrider			= "Show pre-warning for next Strider",--Translate
	WarnNaga			= "Show pre-warning for next Naga",--Translate
	WarnShield			= "Show warning for Phase 2 shield down",--Translate
	WarnLoot			= "Оголосити наявність псованої магми",
	TimerElemental		= "Show time for next Tainted Elemental",--Translate
	TimerStrider		= "Show time for next Strider",--Translate
	TimerNaga			= "Show time for next Strider",--Translate
	SpecWarnElemental	= "Show special warning when Tainted Elemental coming",--Translate
	AutoChangeLootToFFA		= "Зміна режиму видобутку на Кожен за себе у фазі 2"
})

L:SetMiscLocalization({
	DBM_VASHJ_YELL_PHASE2				= "Время пришло! Не оставляйте никого в живых!",
	LootMsg			= "([^%s]+).*Hitem:(%d+)"
})
