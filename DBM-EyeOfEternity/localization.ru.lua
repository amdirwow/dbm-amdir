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
	YellPull	= "Мое терпение лопнуло! Пора от вас избавиться!",
	EmoteSpark	= "Искра мощи появляется из ближайшей расселины!",
	YellPhase2	= "Я сподівався швидко з вами покінчити",
--	EmoteBreath	= "%s делает глубокий вдох...",
	YellBreath	= "Пока я дышу, вам не добиться своего!",
	YellPhase3	= "Ось і ваші благодійники з'явилися",
--	EnoughScream	= "ХВАТИТ! Раз вы хотите магии Азерота, то вы ее получите!"
	EmoteSurge	= "%s уставился на вас!"
})
