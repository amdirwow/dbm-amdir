if GetLocale() ~= "ruRU" then return end

local L

----------------------------
--  The Obsidian Sanctum  --
----------------------------
--  Shadron  --
---------------
L = DBM:GetModLocalization("Shadron")

L:SetGeneralLocalization({
	name = "Шадрон"
})

L:SetMiscLocalization({
	YellShadronPull	= "Я не боюсь ничего! Тем более – вас!",
})

----------------
--  Tenebron  --
----------------
L = DBM:GetModLocalization("Tenebron")

L:SetGeneralLocalization({
	name = "Тенеброн"
})

L:SetMiscLocalization({
	YellTenebronPull	= "Вам здесь не место! Ваше место среди усопших!",
})

----------------
--  Vesperon  --
----------------
L = DBM:GetModLocalization("Vesperon")

L:SetGeneralLocalization({
	name = "Весперон"
})

L:SetMiscLocalization({
	YellVesperonPull	= "Вы безобидны, ничтожные создания. Покажите, на что вы способны!",
})

------------------
--  Sartharion  --
------------------
L = DBM:GetModLocalization("Sartharion")

L:SetGeneralLocalization({
	name = "Сартаріон"
})

L:SetWarningLocalization({
	WarningTenebron			= "Прибуття Тенеброна",
	WarningShadron			= "Прибуття Шадрона",
	WarningVesperon			= "Прибуття Весперона",
	WarningFireWall			= "Вогняна стіна",
	WarningWhelpsSoon		= "Незабаром дракончики тенеброна",
	WarningPortalSoon		= "Незабаром портал Шадрон",
	WarningReflectSoon		= "Весперон: Незабаром відображення",
	WarningVesperonPortal	= "Портал Весперона",
	WarningTenebronPortal	= "Портал Тенеброна",
	WarningShadronPortal	= "Портал Шадрона"
})

L:SetTimerLocalization({
	TimerTenebron			= "Прибуття Тенеброна",
	TimerShadron			= "Прибуття Шадрона",
	TimerVesperon			= "Прибуття Весперона",
	TimerTenebronWhelps		= "Тенебронські дракончики",
	TimerShadronPortal		= "Портал Шадрона",
	TimerVesperonPortal		= "Портал Весперона",
	TimerVesperonPortal2	= "Портал Весперона 2"
})

L:SetOptionLocalization({
	AnnounceFails			= "Оголошувати гравців, які зазнали невдачі у Вогняній стіні та Ущелині темряви<br/>(потрібні права лідера або помічника)",
	TimerTenebron			= "Відлік до прибуття Тенеброна",
	TimerShadron			= "Відлік до прибуття Шадрона",
	TimerVesperon			= "Відлік до прибуття Весперона",
	TimerTenebronWhelps		= "Показати таймер для тенебронських дракончиків",
	TimerShadronPortal		= "Показати таймер для порталу Шадрона",
	TimerVesperonPortal		= "Показати таймер для порталу Весперон",
	TimerVesperonPortal2	= "Показати таймер для порталу Весперон 2",
	WarningFireWall			= "Спец-попередження для Вогняної стіни",
	WarningTenebron			= "Оголошувати прибуття Тенеброна",
	WarningShadron			= "Оголошувати прибуття Шадрона",
	WarningVesperon			= "Оголошувати прибуття Весперона",
	WarningWhelpsSoon		= "Попереджати заздалегідь про тенебронських дракончиків",
	WarningPortalSoon		= "Попереджати заздалегідь про портал Шадрона",
	WarningReflectSoon		= "Попереджати заздалегідь про відбиття Весперона",
	WarningTenebronPortal	= "Спец-попередження для порталів Тенеброна",
	WarningShadronPortal	= "Спец-попередження для порталів Шадрона",
	WarningVesperonPortal	= "Спец-попередження для порталів Весперона"
})

L:SetMiscLocalization({
	YellSarthPull	= "Моя обязанность – оберегать эти яйца, и вы сгорите, прежде чем хоть пальцем тронете их!",
	Wall			= "Лава вокруг %s начинает бурлить!",
	Portal			= "%s открывает сумрачный портал!",
	NameTenebron	= "Tenebron",
	NameShadron		= "Shadron",
	NameVesperon	= "Vesperon",
	FireWallOn		= "Вогняна стіна: %s",
	VoidZoneOn		= "Ущелина темряви: %s",
	VoidZones		= "Зазнали невдачі в Розщелині пітьми (за цю спробу): %s",
	FireWalls		= "Зазнали невдачі в Вогняній стіні (за цю спробу): %s"
})

------------------------
--  The Ruby Sanctum  --
------------------------
--  Baltharus the Warborn  --
-----------------------------
L = DBM:GetModLocalization("Baltharus")

L:SetGeneralLocalization({
	name = "Балтар Народжений у Битві"
})

L:SetWarningLocalization({
	WarningSplitSoon	= "Скоро поділ"
})

L:SetOptionLocalization({
	WarningSplitSoon	= "Попереджати заздалегідь про поділ"
})

-------------------------
--  Saviana Ragefire  --
-------------------------
L = DBM:GetModLocalization("Saviana")

L:SetGeneralLocalization({
	name = "Савіана Вогненна Прірва"
})

--------------------------
--  General Zarithrian  --
--------------------------
L = DBM:GetModLocalization("Zarithrian")

L:SetGeneralLocalization({
	name = "Генерал Зарітріан"
})

L:SetWarningLocalization({
	WarnAdds	= "Нові помічники",
	warnCleaveArmor	= "%s на |3-5(>%s<) (%s)"		-- Cleave Armor on >args.destName< (args.amount)
})

L:SetTimerLocalization({
	TimerAdds	= "Нові помічники",
	AddsArrive	= "Прибуття помічників"
})

L:SetOptionLocalization({
	WarnAdds		= "Оголошувати нових помічників",
	TimerAdds		= "Відлік до нових помічників",
	CancelBuff		= "Видалити $spell:10278 та $spell:642, якщо використовується для видалення $spell:74367",
	AddsArrive		= "Відлік до прибуття помічників"
})

L:SetMiscLocalization({
	YellPull		= "You thought you stood a chance?",
	SummonMinions	= "Слуги! Обратите их в пепел!"
})

-------------------------------------
--  Halion the Twilight Destroyer  --
-------------------------------------
L = DBM:GetModLocalization("Halion")

L:SetGeneralLocalization({
	name = "Халіон Сутінковий Руйнівник"
})

L:SetWarningLocalization({
	TwilightCutterCast	= "Застосування заклинання Лезо сутінків: 5 сек"
})

L:SetOptionLocalization({
	TwilightCutterCast		= "Попереджати про застосування заклинання $spell:77844",
	AnnounceAlternatePhase	= "Показувати попередження та таймери для обох світів",
	SetIconOnConsumption	= "Встановлювати мітки на цілі заклинань $spell:74562 або $spell:74792"--So we can use single functions for both versions of spell.
})

L:SetMiscLocalization({
	Halion					= "Халіон",
	PhysicalRealm			= "Реальний світ",
	MeteorCast				= "Небеса в огне!",
	Phase2					= "В мире сумерек вы найдете лишь страдания! Входите, если посмеете!",
	Phase3					= "Я есть свет и я есть тьма! Трепещите, ничтожные, перед посланником Смертокрыла!",
	twilightcutter			= "Остерегайтесь теней!", --"Во вращающихся сферах пульсирует темная энергия!",
	Kill					= "Это ваша последняя победа. Насладитесь сполна ее вкусом. Ибо когда вернется мой господин, этот мир сгинет в огне!"
})
