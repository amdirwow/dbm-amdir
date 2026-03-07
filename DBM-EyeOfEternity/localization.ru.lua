if GetLocale() ~= "ruRU" then return end

local L

---------------
--  Malygos  --
---------------
L = DBM:GetModLocalization("Malygos")

L:SetGeneralLocalization({
	name = "Малігос"
})

L:SetMiscLocalization({
	YellPull	= "Мій терпець урвався! Час вас позбутися!",
	EmoteSpark	= "Іскра мощі з'являється з найближчої розщелини!",
	YellPhase2	= "Я сподівався швидко з вами покінчити",
--	EmoteBreath	= "%s делает глубокий вдох...",
	YellBreath	= "Поки я дихаю, вам не досягти свого!",
	YellPhase3	= "Ось і ваші благодійники з'явилися",
--	EnoughScream	= "ХВАТИТ! Раз вы хотите магии Азерота, то вы ее получите!"
	EmoteSurge	= "%s дивився на вас!"
})
