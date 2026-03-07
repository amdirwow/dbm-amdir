if GetLocale() ~= "ruRU" then return end

local L

----------------------------------
--  Archavon the Stone Watcher  --
----------------------------------
L = DBM:GetModLocalization("Archavon")

L:SetGeneralLocalization({
	name = "Аркавон Страж Каміння"
})

L:SetWarningLocalization({
	WarningGrab		= "Аркавон вистачає |3-1(>%s<)"
})

L:SetTimerLocalization({
	ArchavonEnrage	= "Берсерк Аркавона"
})

L:SetOptionLocalization({
	WarningGrab		= "Оголошувати про захоплення мети"
})

L:SetMiscLocalization({
	TankSwitch		= "%%s кидається до (%S+)!"
})

--------------------------------
--  Emalon the Storm Watcher  --
--------------------------------
L = DBM:GetModLocalization("Emalon")

L:SetGeneralLocalization({
	name = "Емалон Страж Бурі"
})

L:SetTimerLocalization({
	timerMobOvercharge	= "Вибух внаслідок перевантаження",
	EmalonEnrage		= "Берсерк Емалона"
})

L:SetOptionLocalization({
	timerMobOvercharge	= "Відлік для моба з перевантаженням (стачає дебафф)"
})

---------------------------------
--  Koralon the Flame Watcher  --
---------------------------------
L = DBM:GetModLocalization("Koralon")

L:SetGeneralLocalization({
	name = "Коралон Страж Вогню"
})

L:SetTimerLocalization({
	KoralonEnrage	= "Берсерк Коралона"
})

-------------------------------
--  Toravon the Ice Watcher  --
-------------------------------
L = DBM:GetModLocalization("Toravon")

L:SetGeneralLocalization({
	name = "Торавон Страж Льоду"
})

L:SetTimerLocalization({
	ToravonEnrage	= "Берсерк Торавона"
})
