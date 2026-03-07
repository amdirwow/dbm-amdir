if GetLocale() ~= "ruRU" then return end

local L

--Maulgar
L = DBM:GetModLocalization("Maulgar")

L:SetGeneralLocalization({
	name = "Король Молгар"
})

--Gruul the Dragonkiller
L = DBM:GetModLocalization("Gruul")

L:SetGeneralLocalization({
	name = "Груул Драконобій"
})

L:SetWarningLocalization({
	WarnGrowth	= "%s (%d)"
})

L:SetOptionLocalization({
	WarnGrowth		= "Показувати попередження для $spell:36300",
	RangeDistance	= "Фрейм дистанції для $spell:33654",
	Smaller			= "Маленька дистанція (14)",
	Safe			= "Безпечна дистанція (20)"
})
