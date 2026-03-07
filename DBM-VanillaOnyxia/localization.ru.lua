if GetLocale() ~= "ruRU" then return end

local L

--------------
--  Onyxia  --
--------------
L = DBM:GetModLocalization("Onyxia-Vanilla")

L:SetGeneralLocalization({
	name = "Оніксія"
})

--[[L:SetWarningLocalization({
	WarnWhelpsSoon		= "Скоро дракончики Оніксії"
})

L:SetTimerLocalization({
	TimerWhelps	= "Поява дракончиків Оніксії"
})]]

L:SetOptionLocalization({
--	TimerWhelps				= "Отсчет времени до дракончиков Ониксии",
--	WarnWhelpsSoon			= "Предупреждать заранее о дракончиках Ониксии",
	SoundWTF3				= "Відтворювати кумедне озвучування легендарного класичного рейду на Оніксію (англ.)"
})

L:SetMiscLocalization({
--	YellPull = "Вот это сюрприз. Обычно, чтобы найти обед, мне приходится покидать логово.",
	YellP2 = "Ця безглузда метушня вганяє мене в тугу. Я спалю вас усіх!",
	YellP3 = "Схоже, вам потрібно подати ще один урок, смертні!"
})
