if GetLocale() ~= "ruRU" then return end

local L

------------------------
--  Northrend Beasts  --
------------------------
L = DBM:GetModLocalization("NorthrendBeasts")

L:SetGeneralLocalization({
	name = "Потвори Нордскола"
})

L:SetWarningLocalization({
	WarningSnobold		= "Заклик снобольда-васалу на >%s<",
})

L:SetTimerLocalization({
	TimerNextBoss		= "Прибуття наступного боса"
--	TimerEmerge			= "Появление",
--	TimerSubmerge		= "Зарывание"
})

L:SetOptionLocalization({
	soundConcAuraMastery= "Відтворити звук $spell:31821, щоб скасувати ефекти $spell:66330 (тільки для |cFFF48CBAПаладина|r, який є власником $spell:19746)",
	WarningSnobold		= "Попередження про заклик Снобольда-Васала",
	PingCharge			= "Показати на мінікарті місце, куди потрапляє Крижаний Рев, якщо він обрав вас метою",
	ClearIconsOnIceHowl	= "Знімати всі іконки перед Топотом",
	TimerNextBoss		= "Відлік до появи наступного супротивника",
--	TimerEmerge			= "Отсчет времени до появления",
--	TimerSubmerge		= "Отсчет времени до зарывания",
	IcehowlArrow		= "Показувати стрілку, коли Крижаний Рев готується зробити ривок на ціль поряд з вами"
})

L:SetMiscLocalization({
	Charge				= "^%%s глядит на (%S+) и испускает гортанный вой!",
	CombatStart			= "Из самых глубоких и темных пещер Грозовой Гряды был призван Гормок Пронзающий Бивень! В бой, герои!",
	Phase2				= "Приготовьтесь к схватке с близнецами-чудовищами, Кислотной Утробой и Жуткой Чешуей!",
	Phase3				= "В воздухе повеяло ледяным дыханием следующего бойца: на арену выходит Ледяной Рев! Сражайтесь или погибните, чемпионы!",
	Gormok				= "Гормок Пронизливий Бівень",
	Acidmaw				= "Кислотна Утроба",
	Dreadscale			= "Моторошна Луска",
	Icehowl				= "Крижаний Рев"
})

---------------------
--  Lord Jaraxxus  --
---------------------
L = DBM:GetModLocalization("Jaraxxus")

L:SetGeneralLocalization({
	name = "Лорд Джараксус"
})

L:SetOptionLocalization({
	IncinerateShieldFrame	= "Показати здоров'я боса з індикатором здоров'я для Спопеління плоті"
})

L:SetMiscLocalization({
	IncinerateTarget		= "Спопеління плоті: %s",
	FirstPull				= "Сейчас великий чернокнижник Вилфред Непопамс призовет вашего нового противника. Готовьтесь к бою!"
})

-------------------------
--  Faction Champions  --
-------------------------
L = DBM:GetModLocalization("Champions")

L:SetGeneralLocalization({
	name = "Чемпіони фракцій"
})

L:SetMiscLocalization({
	--Horde NPCs
	Gorgrim				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:32:64:64:96|t Горгрім Темний Розкол",			-- 34458
	Birana				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:95:126.5:0:32|t Біран Штормове Копито",		-- 34451
	Erin				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:95:126.5:0:32|t Ерін Мглисте Копито",			-- 34459
	Rujkah				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:0:32:32:64|t Руж'ка",							-- 34448
	Ginselle			= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:32:63.5:0:32|t Гінзелль Відбивачка Гнили",	-- 34449
	Liandra				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:0:32:64:96|t Ліандра Зовуща Сонце",			-- 34445
	Malithas			= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:0:32:64:96|t Малітас Сяйний Клинок",			-- 34456
	Caiphus				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:63.5:95:32:64|t Каїфа Невблаганний",				-- 34447
	Vivienne			= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:63.5:95:32:64|t Вів'єн Шепіт Темряви",			-- 34441
	Mazdinah			= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:63.5:95:0:32|t Маз'діна",						-- 34454
	Thrakgar			= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:32:63.5:32:64|t Тракгар",						-- 34444
	Broln				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:32:63.5:32:64|t Бролн Міцний Ріг",			-- 34455
	Harkzog				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:95:126.5:32:64|t Харкзог",						-- 34450
	Narrhok				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:0:32:0:32|t Наррок Крушитель Сталі",			-- 34453
	--Alliance NPCs
	Tyrius				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:32:64:64:96|t Тірій Клинок Сутінків",			-- 34461
	Kavina				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:95:126.5:0:32|t Кавина Пісня Гаю",			-- 34460
	Melador				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:95:126.5:0:32|t Меладор Далекий Гонець",		-- 34469
	Alyssia				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:0:32:32:64|t Алісса Лунопард",					-- 34467
	Noozle				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:32:63.5:0:32|t Нуззл Чудодій",					-- 34468
	Baelnor				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:0:32:64:96|t Бейлнор Світлоносний",				-- 34471
	Velanaa				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:0:32:64:96|t Велана",							-- 34465
	Anthar				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:63.5:95:32:64|t Антар Очищувальний Горн",		-- 34466
	Brienna				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:63.5:95:32:64|t Брієнна Прихід Ночі",			-- 34473
	Irieth				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:63.5:95:0:32|t Ірієт Крок Крізь Тінь",			-- 34472
	Saamul				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:32:63.5:32:64|t Саамул",						-- 34470
	Shaabad				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:32:63.5:32:64|t Шаабад",						-- 34463
	Serissa				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:95:126.5:32:64|t Серісса Похмура Кропильниця",	-- 34474
	Shocuul				= "|TInterface\\WorldStateFrame\\Icons-Classes.blp:24:24:0:0:128:128:0:32:0:32|t Шокул",							-- 34475
	AllianceVictory		= "СЛАВА АЛЬЯНСУ!",
	HordeVictory		= "Это было лишь пробой того, что ждет нас в будущем! ЗА ОРДУ!"
	--YellKill			= "Пустая и горькая победа. После сегодняшних потерь мы стали слабее как целое. Кто еще, кроме Короля-лича, выиграет от подобной глупости? Пали великие воины. И ради чего? Истинная опасность еще впереди – нас ждет битва с Королем-личом."
})

---------------------
--  Val'kyr Twins  --
---------------------
L = DBM:GetModLocalization("ValkTwins")

L:SetGeneralLocalization({
	name = "Валь'кіри-близнюки"
})

L:SetWarningLocalization({
	WarnSpecialSpellSoon		= "Скоро спец-здатність",
	SpecWarnSpecial				= "Зміна кольору",
	SpecWarnSwitchTarget		= "Зміна мети",
	SpecWarnKickNow				= "Переривання",
	WarningTouchDebuff			= "Негативний ефект на |3-5(>%s<)",
	WarningPoweroftheTwins2		= "Сила близнюків - більше лікування |3-3(>%s<)",
})

L:SetTimerLocalization({
	TimerSpecialSpell			= "Наступна спец-здатність",
	TimerAnubRoleplay			= "Подання перед падінням"
})

L:SetOptionLocalization({
	TimerSpecialSpell			= "Відлік до перезарядження спец-здатності",
	TimerAnubRoleplay			= "Таймер подання перед падінням (після перемоги)",
	WarnSpecialSpellSoon		= "Попередження про наступну спец-здатність",
	SpecWarnSpecial				= "Спец-попередження для зміни кольорів",
	SpecWarnSwitchTarget		= "Спец-попередження для інших, коли бос читає заклинання",
	SpecWarnKickNow				= "Спец-попередження, коли ви повинні перервати заклинання",
	SpecialWarnOnDebuff			= "Спец-попередження, коли негативний ефект",
	SetIconOnDebuffTarget		= "Встановити мітку на негативний ефект, що отримав (героїчний режим)",
	WarningTouchDebuff			= "Оголошувати цілі, які отримали негативний ефект",
	WarningPoweroftheTwins2		= "Оголошувати мету під впливом Сили близнюків",
})

L:SetMiscLocalization({
--	YellPull	= "Во имя темного повелителя. Во имя Короля-лича. Вы. Умрете.",
--	CombatStart	= "Лишь сплотившись, вы сможете пройти последнее испытание. Из глубин Ледяной Короны навстречу вам подымаются две могучие воительницы Плети: жуткие валь'киры, крылатые вестницы Короля-лича!",
	Fjola		= "Фьола Смерть Світла",
	Eydis		= "Ейдіс Смерть Темряви",
	ValksRP		= "Пусть состязания начнутся!", -- 35709
	AnubRP		= "Король-лич понес тяжелую потерю! Вы проявили себя как бесстрашные герои Серебряного Авангарда! Мы вместе нанесем удар по Цитадели Ледяной Короны и разнесем в клочья остатки Плети! Нет такого испытания, которое мы бы не могли пройти сообща!"
})

-----------------
--  Anub'arak  --
-----------------
L = DBM:GetModLocalization("Anub'arak_Coliseum")

L:SetGeneralLocalization({
	name					= "Ануб'арак"
})

--L:SetTimerLocalization({
--	TimerEmerge				= "Появление через",
--	TimerSubmerge			= "Зарывание через",
--	timerAdds				= "Призыв помощников через"
--})

L:SetWarningLocalization({
	WarnEmerge				= "Ануб'арак з'являється",
	WarnEmergeSoon			= "Поява через 10 с",
	WarnSubmerge			= "Ануб'арак заривається",
	WarnSubmergeSoon		= "Заривання через 10 с",
	warnAdds				= "Нові помічники"
})

L:SetMiscLocalization({
--	YellPull			= "Это место станет вашей могилой!",
	Emerge				= "вылезает на поверхность!",
	Burrow				= "зарывается в землю!",
	YellBurrow			= "Ауум на-л ак-к-к-к, ишшш. Вставайте, слуги мои. Время пожирать...",
	PcoldIconSet		= "Мітка холоду {rt%d} встановлена на: %s",
	PcoldIconRemoved	= "Мітка холоду знята з: %s"
})

L:SetOptionLocalization({
	WarnEmerge				= "Попередження про появу",
	WarnEmergeSoon			= "Попереджати заздалегідь про появу",
	WarnSubmerge			= "Попередження про заривання",
	WarnSubmergeSoon		= "Попереджати заздалегідь про заривання",
	warnAdds				= "Попередження про заклик помічників",
--	timerAdds				= "Отсчет времени до призыва помощников",
--	TimerEmerge				= "Отсчет времени до появления",
--	TimerSubmerge			= "Отсчет времени до зарывания",
	AnnouncePColdIcons		= "Оголошувати мітки цілей заклинання $spell:68510 в рейд-чат (потрібні права лідера або помічника)",
	AnnouncePColdIconsRemoved	= "Оголошувати також про зняття міток з метою заклинання $spell:68510 (потрібна попередня опція)",
	RemoveHealthBuffsInP3	= "Видалення посилення здоров'я на початку фази 3"
})
