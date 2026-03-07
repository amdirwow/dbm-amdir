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
	BgStart120TC		= "Битва розпочнеться за 2 хвилини!",
	--BG 1 minute
	BgStart60TC			= "Битва розпочнеться за хвилину!",
	BgStart60OLD		= "Битва розпочнеться за 60 секунд.",
	BgStart60AlteracTC	= "До початку бою за Альтеракську долину залишається 1 хвилина.",
	BgStart60SotAOLD	= "Бій за Берег Стародавніх розпочнеться за 1 хвилину.",
	BgStart60SotA2TC	= "Другий раунд бою за Берег Стародавніх розпочнеться за 1 хвилину.",
	BgStart60WarsongTC	= "Битва за Ущелину Пісні Війни розпочнеться за 1 хвилину.",
	BgStart60ArathiOLD	= "Битва за Нізину Араті розпочнеться за хвилину.",
	-- BG 30 seconds
	BgStart30TC			= "Битва розпочнеться за 30 секунд!",
	BgStart30OLD		= "Битва розпочнеться за 30 секунд.",
	BgStart30AlteracTC	= "30 секунд на початок битви в Альтеракській долині.",
	BgStart30SotAOLD	= "Бій за Берег Стародавніх розпочнеться за 30 секунд. Готуйтесь!",
	BgStart30SotA2TC	= "Другий раунд починається за 30 секунд. Приготуйтеся!",
	BgStart30WarsongTC	= "Битва за Ущелину Пісні Війни розпочнеться за 30 секунд. Приготуватись!",
	BgStart30ArathiOLD	= "Битва за Нізину Араті розпочнеться за 30 секунд.",
	--
	ArenaInvite			= "Запрошення на Арену",
	Start60TC			= "Одна хвилина на початок бою на арені!",
	Start30TC			= "Тридцять секунд до початку бою на арені!",
	Start15TC			= "П'ятнадцять секунд до початку бою на арені!",
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
	Vulnerable1			= "Персонажі, які несуть прапор, стали вразливішими!",
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
	GreenEmeraldAttacked			= "Брама Зеленого Смарагду зазнала нападу!",
	GreenEmeraldDestroyed			= "Ворота Зеленого Смарагду зруйновано!",
	BlueSapphireAttacked			= "Брама Синього Сапфіра зазнала нападу!",
	BlueSapphireDestroyed			= "Брама Синього Сапфіра зруйнована!",
	PurpleAmethystAttacked			= "Брама Лілового Аметиста зазнала нападу!",
	PurpleAmethystDestroyed			= "Брама Лілового Аметиста зруйнована!",
	RedSunAttacked					= "Брама Червоного Сонця зазнала нападу!",
	RedSunDestroyed					= "Брама Червоного Сонця зруйнована!",
	YellowMoonAttacked				= "Брама Жовтого Місяця зазнала нападу!",
	YellowMoonDestroyed				= "Брама Жовтого Місяця зруйнована!",
	ChamberAncientRelicsAttacked	= "Фортеця атакують!",
	ChamberAncientRelicsDestroyed	= "У стіні пролом! Реліквії загрожує небезпека!",
	-- Isle of Conquest Gates CHAT_MSG_BG_SYSTEM_NEUTRAL messages
	HordeGateFrontDestroyedTC		= "Головні ворота фортеці Орди зруйновані!",
	HordeGateWestDestroyedTC		= "Західні ворота фортеці Орди зруйновані!",
	HordeGateEastDestroyedTC		= "Східні ворота фортеці Орди зруйновані!",
	AllianceGateFrontDestroyedTC	= "Головні ворота фортеці Альянсу зруйновані!",
	AllianceGateWestDestroyedTC		= "Західна брама фортеці Альянсу зруйнована!",
	AllianceGateEastDestroyedTC		= "Східні ворота фортеці Альянсу зруйновані!",
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
	GoblinStartAlliance		= "Бачите ці вибухові бомби? Використовуйте їх на воротах, доки я ремонтую облогову машину!",
	GoblinStartHorde		= "Я працюватиму над облоговою машиною, я ти мене прикривай. Ось можеш користуватися цими сефорієвими бомбами, якщо тобі треба підірвати ворота.",
	GoblinHalfwayAlliance	= "Я на півдорозі! Тримайте Орду подалі. В інженерному училищі не вчать бойових дій!",
	GoblinHalfwayHorde		= "Я приблизно на півдорозі! Тримайте Альянс подалі – бійки не в моєму контракті!",
	GoblinFinishedAlliance	= "Моя найкраща робота на даний момент! Ця облогова машина готова до дії!",
	GoblinFinishedHorde		= "Облогова машина готова до роботи!",
	GoblinBrokenAlliance	= "Він уже зламаний?! Не варто турбуватися. Я нічого не можу виправити.",
	GoblinBrokenHorde		= "Знову зламано? Я виправлю це ... тільки не чекайте, що гарантія покриє це."
})
