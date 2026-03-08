if GetLocale() ~= "ruRU" then return end

local L

----------------
--  Lucifron  --
----------------
L = DBM:GetModLocalization("Lucifron")

L:SetGeneralLocalization({
	name = "Люцифрон"
})

----------------
--  Magmadar  --
----------------
L = DBM:GetModLocalization("Magmadar")

L:SetGeneralLocalization({
	name = "Магмадар"
})

----------------
--  Gehennas  --
----------------
L = DBM:GetModLocalization("Gehennas")

L:SetGeneralLocalization({
	name = "Геєнас"
})

------------
--  Garr  --
------------
L = DBM:GetModLocalization("Garr-Classic")

L:SetGeneralLocalization({
	name = "Гар (Classic)"
})

--------------
--  Geddon  --
--------------
L = DBM:GetModLocalization("Geddon")

L:SetGeneralLocalization({
	name = "Барон Геддон"
})

----------------
--  Shazzrah  --
----------------
L = DBM:GetModLocalization("Shazzrah")

L:SetGeneralLocalization({
	name = "Шаззрах"
})

----------------
--  Sulfuron  --
----------------
L = DBM:GetModLocalization("Sulfuron")

L:SetGeneralLocalization({
	name = "Провісник Сульфурон"
})

----------------
--  Golemagg  --
----------------
L = DBM:GetModLocalization("Golemagg")

L:SetGeneralLocalization({
	name = "Големагг Випіпелювач"
})

-----------------
--  Majordomo  --
-----------------
L = DBM:GetModLocalization("Majordomo")

L:SetGeneralLocalization({
	name = "Мажордом Екзекутус"
})

L:SetTimerLocalization({
	timerShieldCD		= "Наступний Щит"
})

L:SetOptionLocalization({
	timerShieldCD		= "Показувати таймер для наступного Щита (Damage/Reflect)"
})

----------------
--  Ragnaros  --
----------------
L = DBM:GetModLocalization("Ragnaros-Classic")

L:SetGeneralLocalization({
	name = "Рагнарос (Classic)"
})

L:SetWarningLocalization({
	WarnSubmerge		= "Занурення",
	WarnSubmergeSoon	= "Скоро занурення",
	WarnEmerge			= "Поява",
	WarnEmergeSoon		= "Скоро поява"
})

L:SetTimerLocalization({
	TimerCombatStart	= "Початок бою",
	TimerSubmerge		= "Занурення",
	TimerEmerge			= "Поява"
})

L:SetOptionLocalization({
	TimerCombatStart	= "Показувати час до початку бою",
	WarnSubmerge		= "Показувати попередження про занурення",
	WarnSubmergeSoon	= "Показувати попереднє попередження про занурення",
	TimerSubmerge		= "Показувати час до занурення",
	WarnEmerge			= "Показувати попередження про появу",
	WarnEmergeSoon		= "Показувати попереднє попередження про появу",
	TimerEmerge			= "Показувати час до появи"
})

L:SetMiscLocalization({
	Submerge	= "ПРИДИТЕ, МОИ СЛУГИ! ЗАЩИТИТЕ СВОЕГО ХОЗЯИНА!",
	Submerge2	= "ТЫ НЕ МОЖЕШЬ ПОБЕДИТЬ ЖИВОЙ ЖАР! ПРИДИТЕ, СЛУГИ ОГНЯ! ПРИДИТЕ, ТВОРЕНИЯ НЕНАВИСТИ! ВАШ ГОСПОДИН ПРИЗЫВАЕТ ВАС!",
	Pull		= "Нахальные щенки! Вы сами обрекли себя на смерть! Узрите же Повелителя в гневе!"
})

-----------------
--  MC: Trash  --
-----------------
L = DBM:GetModLocalization("MCTrash")

L:SetGeneralLocalization({
	name = "ВІН: Треш"
})
