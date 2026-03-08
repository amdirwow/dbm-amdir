if GetLocale() ~= "ruRU" then return end

local L

--------------------------
--  General BG Options  --
--------------------------
L = DBM:GetModLocalization("PvPGeneral")

L:SetGeneralLocalization({
	name = "Загальні параметри"
})

L:SetTimerLocalization({
	TimerFlag		= "Прапор відновлено",
	TimerShadow		= "Сутінковий зір",
	TimerStart		= "Битва почнеться через",
	TimerWin		= "Перемога у"
})

L:SetOptionLocalization({
	AutoSpirit			= "Автоматично залишати тіло",
	ColorByClass		= "Показувати імена кольором класу у таблиці очок",
	HideBossEmoteFrame	= "Приховати кадр емоцій рейдового боса",
	ShowBasesToWin		= "Відображати бази, які потрібно захопити",
	ShowEstimatedPoints	= "Відображати передбачувані очки, що залишилися до перемоги/ураження",
	ShowFlagCarrier		= "Показати прапороносця",
	ShowGatesHealth		= "Відображати здоров'я пошкоджених воріт (значення здоров'я може бути некоректним після заходу в поле бою, що вже почалося!)",
	ShowRelativeGameTime= "Заповніть таймер перемоги щодо часу початку поля бою (якщо він вимкнений, панель завжди виглядає заповненою)",
	TimerCap			= "Відлік до захоплення",
	TimerFlag			= "Відлік до відновлення прапора",
	TimerShadow			= "Відлік для Похмурого зору",
	TimerStart			= "Відлік до початку битви",
	TimerWin			= "Відлік до перемоги"
})

L:SetMiscLocalization({
	--BG 2 minutes
	BgStart120TC		= "Битва начнется через 2 минуты!",
	--BG 1 minute
	BgStart60TC			= "Битва начнется через минуту!",
	BgStart60OLD		= "Битва начнется через 60 секунд.",
	BgStart60AlteracTC	= "До начала сражения за Альтеракскую долину остается 1 минута.",
	BgStart60SotAOLD	= "Сражение за Берег Древних начнется через 1 минуту.",
	BgStart60SotA2TC	= "Второй раунд сражения за Берег Древних начнется через 1 минуту.",
	BgStart60WarsongTC	= "Битва за Ущелье Песни Войны начнется через 1 минуту.",
	BgStart60ArathiOLD	= "Битва за Низину Арати начнется через минуту.",
	-- BG 30 seconds
	BgStart30TC			= "Битва начнется через 30 секунд!",
	BgStart30OLD		= "Битва начнется через 30 секунд.",
	BgStart30AlteracTC	= "30 секунд до начала битвы в Альтеракской долине.",
	BgStart30SotAOLD	= "Сражение за Берег Древних начнется через 30 секунд. Готовьтесь!",
	BgStart30SotA2TC	= "Второй раунд начинается через 30 секунд. Приготовьтесь!",
	BgStart30WarsongTC	= "Битва за Ущелье Песни Войны начнется через 30 секунд. Приготовиться!",
	BgStart30ArathiOLD	= "Битва за Низину Арати начнется через 30 секунд.",
	--
	ArenaInvite			= "Запрошення на Арену",
	Start60TC			= "Одна минута до начала боя на арене!",
	Start30TC			= "Тридцать секунд до начала боя на арене !",
	Start15TC			= "Пятнадцать секунд до начала боя на арене!",
	BasesToWin			= "Захоплено бази: %d",
	WinBarText			= "Перемога %s",
	-- Flag carrying system
	Flag				= "Прапор",
	FlagResetTC			= "Прапор повернуто на базу.",
	FlagTakenTC			= "(.+) захоплює прапор!",
	FlagCapturedTC		= ".+ захопив.* прапор!",
	FlagDroppedTC		= "Прапор упустили!",
	--
	ExprFlagPickUpATC	= "Прапор Альянсу у |3-1((.+))!",
	ExprFlagPickUpHTC	= "(.+) несе прапор Орди!",
	ExprFlagCapturedTC	= "(.+) захоплює прапор .+!",
	ExprFlagReturnTC	= "(.+) повертає на базу прапор .+!",
	ExprFlagDroppedTC	= "(.+) упускає прапор .+!",
	Vulnerable1			= "Персонажи, несущие флаг, стали более уязвимы!",
	Vulnerable2			= "Персонажі, які несуть прапор, стали ще вразливішими!",
	-- Alterac/IsleOfConquest bosses
	InfoFrameHeader		= "Здоров'я боса",
	HordeBoss			= "Бос Орди",
	AllianceBoss		= "Бос Альянсу",
	Galvangar			= "Гальвангар",
	Balinda				= "Балінда",
	Ivus				= "Івус",
	Lokholar			= "Локолар",
	-- Gates
	GatesHealthFrame				= "Пошкоджені ворота",
	HordeGateFront					= "|TInterface\\MINIMAP\\POIICONS.BLP:16:16:0:0:256:256:127:143:92:107|t Головна брама",
	HordeGateFrontDestroyedTex		= "|TInterface\\MINIMAP\\POIICONS.BLP:16:16:0:0:256:256:163:179:92:107|t Головна брама",
	HordeGateWest					= "|TInterface\\MINIMAP\\POIICONS.BLP:16:16:0:0:256:256:127:143:92:107|t Західна брама",
	HordeGateWestDestroyedTex		= "|TInterface\\MINIMAP\\POIICONS.BLP:16:16:0:0:256:256:163:179:92:107|t Західна брама",
	HordeGateEast					= "|TInterface\\MINIMAP\\POIICONS.BLP:16:16:0:0:256:256:127:143:92:107|t Східна брама",
	HordeGateEastDestroyedTex		= "|TInterface\\MINIMAP\\POIICONS.BLP:16:16:0:0:256:256:163:179:92:107|t Східна брама",
	AllianceGateFront				= "|TInterface\\MINIMAP\\POIICONS.BLP:16:16:0:0:256:256:181:197:92:107|t Головна брама",
	AllianceGateFrontDestroyedTex	= "|TInterface\\MINIMAP\\POIICONS.BLP:16:16:0:0:256:256:217:233:92:107|t Головна брама",
	AllianceGateWest				= "|TInterface\\MINIMAP\\POIICONS.BLP:16:16:0:0:256:256:181:197:92:107|t Західна брама",
	AllianceGateWestDestroyedTex	= "|TInterface\\MINIMAP\\POIICONS.BLP:16:16:0:0:256:256:217:233:92:107|t Західна брама",
	AllianceGateEast				= "|TInterface\\MINIMAP\\POIICONS.BLP:16:16:0:0:256:256:181:197:92:107|t Східна брама",
	AllianceGateEastDestroyedTex	= "|TInterface\\MINIMAP\\POIICONS.BLP:16:16:0:0:256:256:217:233:92:107|t Східна брама",
	-- Strands of the Ancients Gates emotes
	GreenEmeraldAttacked			= "Врата Зеленого Изумруда подверглись нападению!",
	GreenEmeraldDestroyed			= "Врата Зеленого Изумруда разрушены!",
	BlueSapphireAttacked			= "Врата Синего Сапфира подверглись нападению!",
	BlueSapphireDestroyed			= "Врата Синего Сапфира разрушены!",
	PurpleAmethystAttacked			= "Врата Лилового Аметиста подверглись нападению!",
	PurpleAmethystDestroyed			= "Врата Лилового Аметиста разрушены!",
	RedSunAttacked					= "Врата Красного Солнца подверглись нападению!",
	RedSunDestroyed					= "Врата Красного Солнца разрушены!",
	YellowMoonAttacked				= "Врата Желтой Луны подверглись нападению!",
	YellowMoonDestroyed				= "Врата Желтой Луны разрушены!",
	ChamberAncientRelicsAttacked	= "Крепость атакуют!",
	ChamberAncientRelicsDestroyed	= "В стене пролом! Реликвии грозит опасность!",
	-- Isle of Conquest Gates CHAT_MSG_BG_SYSTEM_NEUTRAL messages
	HordeGateFrontDestroyedTC		= "Главные врата крепости Орды разрушены!",
	HordeGateWestDestroyedTC		= "Западные врата крепости Орды разрушены!",
	HordeGateEastDestroyedTC		= "Восточные врата крепости Орды разрушены!",
	AllianceGateFrontDestroyedTC	= "Главные врата крепости Альянса разрушены!",
	AllianceGateWestDestroyedTC		= "Западные врата крепости Альянса разрушены!",
	AllianceGateEastDestroyedTC		= "Восточные врата крепости Альянса разрушены!",
})

----------------------
--  Alterac Valley  --
----------------------
L = DBM:GetModLocalization("AlteracValley")

L:SetGeneralLocalization({
	name = "Альтеракська долина"
})

L:SetOptionLocalization({
	AutoTurnIn	= "Автоматичне здавання завдань"
})

--------------------
--  Arathi Basin  --
--------------------
L = DBM:GetModLocalization("ArathiBasin")

L:SetGeneralLocalization({
	name = "Низина Араті"
})

------------------------
--  Eye of the Storm  --
------------------------
L = DBM:GetModLocalization("EyeoftheStorm")

L:SetGeneralLocalization({
	name = "Око Бурі"
})

---------------------
--  Warsong Gulch  --
---------------------
L = DBM:GetModLocalization("WarsongGulch")

L:SetGeneralLocalization({
	name = "Ущелина Пісні Війни"
})

------------------------------
--  Strand of the Ancients  --
------------------------------
L = DBM:GetModLocalization("StrandoftheAncients")

L:SetGeneralLocalization({
	name = "Берег Стародавніх"
})

------------------------
--  Isle of Conquest  --
------------------------
L = DBM:GetModLocalization("IsleofConquest")

L:SetGeneralLocalization({
	name = "Острів Завоювань"
})

L:SetWarningLocalization({
	WarnSiegeEngine		= "Облогова машина готова!",
	WarnSiegeEngineSoon	= "Облогова машина через ~10 сек"
})

L:SetTimerLocalization({
	TimerSiegeEngine	= "Облогова машина готова"
})

L:SetOptionLocalization({
	TimerSiegeEngine	= "Відлік до створення Облогової машини",
	WarnSiegeEngine		= "Попередження, коли створення Облогової машини завершено",
	WarnSiegeEngineSoon	= "Попередження, коли створення Облогової машини майже завершено"
})

L:SetMiscLocalization({
	SiegeEngine				= "Облогова машина",
	GoblinStartAlliance		= "Видите эти взрывчатые бомбы? Используйте их на воротах, пока я ремонтирую осадную машину!",
	GoblinStartHorde		= "Я буду работать над осадной машиной, я ты меня прикрывай. Вот, можешь пользоваться этими сефориевыми бомбами, если тебе надо взорвать ворота.",
	GoblinHalfwayAlliance	= "Я на полпути! Держите Орду подальше отсюда. В инженерном училище не учат боевым действиям!",
	GoblinHalfwayHorde		= "Я примерно на полпути! Держите Альянс подальше - драки не в моем контракте!",
	GoblinFinishedAlliance	= "Моя лучшая работа на данный момент! Эта осадная машина готова к действию!",
	GoblinFinishedHorde		= "Осадная машина готова к работе!",
	GoblinBrokenAlliance	= "Он уже сломан?! Не стоит беспокоиться. Я ничего не могу исправить.",
	GoblinBrokenHorde		= "Опять сломано?! Я исправлю это ... только не ожидайте, что гарантия покроет это."
})
