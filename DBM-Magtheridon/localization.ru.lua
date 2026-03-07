if GetLocale() ~= "ruRU" then return end

local L

-- Magtheridon
L = DBM:GetModLocalization("Magtheridon")

L:SetGeneralLocalization({
	name = "Магтеридон"
})

L:SetTimerLocalization({
	timerP2	= "Фаза 2"
})

L:SetOptionLocalization({
	timerP2	= "Показувати таймер початку Фази 2"
})

L:SetMiscLocalization({
	DBM_MAG_EMOTE_PULL		= "Стримуюча сила %sа починає слабшати!",
	DBM_MAG_YELL_PHASE2		= "Я... вільний!",
	DBM_MAG_YELL_PHASE3		= "Нехай стіни в'язниці здригнуться... і впадуть!"
})
