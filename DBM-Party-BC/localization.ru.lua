if GetLocale() ~= "ruRU" then return end

local L

-------------------------
--  Hellfire Ramparts  --
-----------------------------
--  Watchkeeper Gargolmar  --
-----------------------------
L = DBM:GetModLocalization(527)

L:SetGeneralLocalization({
	name		= "Начальник варти Гарголмар"
})

--------------------------
--  Omor the Unscarred  --
--------------------------
L = DBM:GetModLocalization(528)

L:SetGeneralLocalization({
	name		= "Омор Непереборний"
})

------------------------
--  Nazan & Vazruden  --
------------------------
L = DBM:GetModLocalization(529)

L:SetGeneralLocalization({
	name		= "Назан & Вазруден"
})

-------------------------
--  The Blood Furnace  --
-------------------------
--  The Maker  --
-----------------
L = DBM:GetModLocalization(555)

L:SetGeneralLocalization({
	name		= "Майстер"
})

---------------
--  Broggok  --
---------------
L = DBM:GetModLocalization(556)

L:SetGeneralLocalization({
	name		= "Броггок"
})

----------------------------
--  Keli'dan the Breaker  --
----------------------------
L = DBM:GetModLocalization(557)

L:SetGeneralLocalization({
	name		= "Келі'дан Руйнівник"
})

---------------------------
--  The Shattered Halls  --
--------------------------------
--  Grand Warlock Nethekurse  --
--------------------------------
L = DBM:GetModLocalization(566)

L:SetGeneralLocalization({
	name		= "Головний чаклун Пустоклят"
})

--------------------------
--  Blood Guard Porung  --
--------------------------
L = DBM:GetModLocalization(728)

L:SetGeneralLocalization({
	name		= "Кривавий страж Порунг"
})

--------------------------
--  Warbringer O'mrogg  --
--------------------------
L = DBM:GetModLocalization(568)

L:SetGeneralLocalization({
	name		= "О'мрогг Завойовник"
})

----------------------------------
--  Warchief Kargath Bladefist  --
----------------------------------
L = DBM:GetModLocalization(569)

L:SetGeneralLocalization({
	name		= "Вождь Каргат Острорук"
})

L:SetWarningLocalization({
	warnHeathen			= "Страж-язичник",
	warnReaver			= "Стражник-розорювач",
	warnSharpShooter	= "Влучний стрілець-вартовий",
})

L:SetTimerLocalization({
	timerHeathen		= "Страж-язичник: %s",
	timerReaver			= "Стражник-розорювач: %s",
	timerSharpShooter	= "Влучний стрілець-вартовий: %s"
})

L:SetOptionLocalization({
	warnHeathen			= "Показувати попередження для Страж-язичник",
	timerHeathen		= "Показувати таймер для Страж-язичник",
	warnReaver			= "Показувати попередження для Стражник-розорювач",
	timerReaver			= "Показувати таймер для Стражник-розорювач",
	warnSharpShooter	= "Показувати попередження для Влучний стрілець-вартовий",
	timerSharpShooter	= "Показувати таймер для Влучний стрілець-вартовий"
})

------------------
--  Slave Pens  --
--------------------------
--  Mennu the Betrayer  --
--------------------------
L = DBM:GetModLocalization(570)

L:SetGeneralLocalization({
	name		= "Менну Зрадник"
})

---------------------------
--  Rokmar the Crackler  --
---------------------------
L = DBM:GetModLocalization(571)

L:SetGeneralLocalization({
	name		= "Рокмар Трескун"
})

------------------
--  Quagmirran  --
------------------
L = DBM:GetModLocalization(572)

L:SetGeneralLocalization({
	name		= "Зибун"
})

--------------------
--  The Underbog  --
--------------------
--  Hungarfen  --
-----------------
L = DBM:GetModLocalization(576)

L:SetGeneralLocalization({
	name		= "Топеглад"
})

---------------
--  Ghaz'an  --
---------------
L = DBM:GetModLocalization(577)

L:SetGeneralLocalization({
	name		= "Газ'ан"
})

--------------------------
--  Swamplord Musel'ek  --
--------------------------
L = DBM:GetModLocalization(578)

L:SetGeneralLocalization({
	name		= "Владика боліт Мусел'єк"
})

-------------------------
--  The Black Stalker  --
-------------------------
L = DBM:GetModLocalization(579)

L:SetGeneralLocalization({
	name		= "Чорна Мисливця"
})

----------------------
--  The Steamvault  --
---------------------------
--  Hydromancer Thespia  --
---------------------------
L = DBM:GetModLocalization(573)

L:SetGeneralLocalization({
	name		= "Гідромант Теспія"
})

-----------------------------
--  Mekgineer Steamrigger  --
-----------------------------
L = DBM:GetModLocalization(574)

L:SetGeneralLocalization({
	name		= "Анжинер Паропуск"
})

L:SetWarningLocalization({
	warnSummon	= "Механік парової оснастки - Зміни Ціль"
})

L:SetOptionLocalization({
	warnSummon	= "Показувати попередження для Механік парового оснащення"
})

L:SetMiscLocalization({
	Mechs	= "Эй, ребята, тут надо кое-что настроить!"
})

--------------------------
--  Warlord Kalithresh  --
--------------------------
L = DBM:GetModLocalization(575)

L:SetGeneralLocalization({
	name		= "Полководець Калітреш"
})

-----------------------
--  Auchenai Crypts  --
--------------------------------
--  Shirrak the Dead Watcher  --
--------------------------------
L = DBM:GetModLocalization(523)

L:SetGeneralLocalization({
	name		= "Ширрак Страж Мертвих"
})

-----------------------
--  Exarch Maladaar  --
-----------------------
L = DBM:GetModLocalization(524)

L:SetGeneralLocalization({
	name		= "Екзарх Маладаар"
})

------------------
--  Mana-Tombs  --
------------------
--    Trash     --
------------------
L = DBM:GetModLocalization("AuctTombsTrash")

L:SetGeneralLocalization({
	name		= "Треш"
})

-------------------
--  Pandemonius  --
-------------------
L = DBM:GetModLocalization(534)

L:SetGeneralLocalization({
	name		= "Пандемоній"
})

---------------
--  Tavarok  --
---------------
L = DBM:GetModLocalization(535)

L:SetGeneralLocalization({
	name		= "Таварок"
})

----------------------------
--  Nexus-Prince Shaffar  --
----------------------------
L = DBM:GetModLocalization(537)

L:SetGeneralLocalization({
	name		= "Принц Шаффар"
})

-----------
--  Yor  --
-----------
L = DBM:GetModLocalization(536)

L:SetGeneralLocalization({
	name		= "Йор"
})

---------------------
--  Sethekk Halls  --
-----------------------
--  Darkweaver Syth  --
-----------------------
L = DBM:GetModLocalization(541)

L:SetGeneralLocalization({
	name		= "Темнопряд Сіт"
})

L:SetWarningLocalization({
	warnSummon	= "Заклик Елементалей"
})

L:SetOptionLocalization({
	warnSummon	= "Показувати попередження для покликаних елементалей"
})

------------
--  Anzu  --
------------
L = DBM:GetModLocalization(542)

L:SetGeneralLocalization({
	name		= "Анзу"
})

L:SetWarningLocalization({
	warnBrood	= "Нащадок Анзу",
	warnStoned	= "%s returned to stone"
})

L:SetOptionLocalization({
	warnBrood	= "Показувати попередження для Нащадків Анзу",
	warnStoned	= "Показувати попередження для spirits returning to stone"
})

L:SetMiscLocalization({
	BirdStone	= "%s returns to stone."
})

------------------------
--  Talon King Ikiss  --
------------------------
L = DBM:GetModLocalization(543)

L:SetGeneralLocalization({
	name		= "Король воронів Айкісс"
})

------------------------
--  Shadow Labyrinth  --
--------------------------
--  Ambassador Hellmaw  --
--------------------------
L = DBM:GetModLocalization(544)

L:SetGeneralLocalization({
	name		= "Посол Гіблочрев"
})

------------------------------
--  Blackheart the Inciter  --
------------------------------
L = DBM:GetModLocalization(545)

L:SetGeneralLocalization({
	name		= "Чорносерд Підбурювач"
})

--------------------------
--  Grandmaster Vorpil  --
--------------------------
L = DBM:GetModLocalization(546)

L:SetGeneralLocalization({
	name		= "Великий майстер Ворпіл"
})

--------------
--  Murmur  --
--------------
L = DBM:GetModLocalization(547)

L:SetGeneralLocalization({
	name		= "Бормотун"
})

-------------------------------
--  Old Hillsbrad Foothills  --
-------------------------------
--  Lieutenant Drake  --
------------------------
L = DBM:GetModLocalization(538)

L:SetGeneralLocalization({
	name		= "Лейтенант Дрейк"
})

-----------------------
--  Captain Skarloc  --
-----------------------
L = DBM:GetModLocalization(539)

L:SetGeneralLocalization({
	name		= "Капітан Скарлок"
})

--------------------
--  Epoch Hunter  --
--------------------
L = DBM:GetModLocalization(540)

L:SetGeneralLocalization({
	name		= "Мисливець Вічності"
})

------------------------
--  The Black Morass  --
------------------------
--  Chrono Lord Deja  --
------------------------
L = DBM:GetModLocalization(552)

L:SetGeneralLocalization({
	name		= "Король часу Дежа"
})

----------------
--  Temporus  --
----------------
L = DBM:GetModLocalization(553)

L:SetGeneralLocalization({
	name		= "Темпорус"
})

--------------
--  Aeonus  --
--------------
L = DBM:GetModLocalization(554)

L:SetGeneralLocalization({
	name		= "Еонус"
})

---------------------
--  Portal Timers  --
---------------------
L = DBM:GetModLocalization("PT")

L:SetGeneralLocalization({
	name = "Таймери Порталів (ПВ)"
})

L:SetWarningLocalization({
	WarnWavePortalSoon	= "Незабаром новий портал",
	WarnWavePortal		= "Портал %d",
	WarnBossPortal		= "З'явився бос"
})

L:SetTimerLocalization({
	TimerNextPortal		= "Портал %d"
})

L:SetOptionLocalization({
	WarnWavePortalSoon	= "Показувати попереднє попередження для нового порталу",
	WarnWavePortal		= "Показувати попередження для нового порталу",
	WarnBossPortal		= "Показувати попередження для появи боса",
	TimerNextPortal		= "Показувати таймер для наступного порталу (після Боса)",
	ShowAllPortalTimers	= "Показувати таймери для всіх порталів (неточно)"
})

L:SetMiscLocalization({
	Shielddown			= "Нет! Будь проклята эта жалкая смертная оболочка!"
})

--------------------
--  The Mechanar  --
-----------------------------
--  Gatewatcher Gyro-Kill  --
-----------------------------
L = DBM:GetModLocalization("Gyrokill")--Not in EJ

L:SetGeneralLocalization({
	name = "Страж воріт Точений Ніж"
})

-----------------------------
--  Gatewatcher Iron-Hand  --
-----------------------------
L = DBM:GetModLocalization("Ironhand")--Not in EJ

L:SetGeneralLocalization({
	name = "Сторож воріт Сталева Клішня"
})

L:SetMiscLocalization({
	JackHammer	= "%s угрожающе поднимает свой молот..."
})

------------------------------
--  Mechano-Lord Capacitus  --
------------------------------
L = DBM:GetModLocalization(563)

L:SetGeneralLocalization({
	name		= "Механолорд Конденсарон"
})

------------------------------
--  Nethermancer Sepethrea  --
------------------------------
L = DBM:GetModLocalization(564)

L:SetGeneralLocalization({
	name		= "Пустомант Сепетрея"
})

--------------------------------
--  Pathaleon the Calculator  --
--------------------------------
L = DBM:GetModLocalization(565)

L:SetGeneralLocalization({
	name		= "Паталеон Обчислювач"
})

--------------------
--  The Botanica  --
--------------------------
--  Commander Sarannis  --
--------------------------
L = DBM:GetModLocalization(558)

L:SetGeneralLocalization({
	name		= "Командир Саранніс"
})

------------------------------
--  High Botanist Freywinn  --
------------------------------
L = DBM:GetModLocalization(559)

L:SetGeneralLocalization({
	name		= "Верховний ботанік Фрейвін"
})

-----------------------------
--  Thorngrin the Tender  --
-----------------------------
L = DBM:GetModLocalization(560)

L:SetGeneralLocalization({
	name		= "Скалезуб Скорботний"
})

-----------
--  Laj  --
-----------
L = DBM:GetModLocalization(561)

L:SetGeneralLocalization({
	name		= "Ладж"
})

---------------------
--  Warp Splinter  --
---------------------
L = DBM:GetModLocalization(562)

L:SetGeneralLocalization({
	name		= "Здоровень"
})

--------------------
--  The Arcatraz  --
----------------------------
--  Zereketh the Unbound  --
----------------------------
L = DBM:GetModLocalization(548)

L:SetGeneralLocalization({
	name		= "Зерекет Бездонний"
})

-----------------------------
--  Dalliah the Doomsayer  --
-----------------------------
L = DBM:GetModLocalization(549)

L:SetGeneralLocalization({
	name		= "Далія Глашатай Долі"
})

---------------------------------
--  Wrath-Scryer Soccothrates  --
---------------------------------
L = DBM:GetModLocalization(550)

L:SetGeneralLocalization({
	name		= "Провидець Гніву Соккорат"
})

-------------------------
--  Harbinger Skyriss  --
-------------------------
L = DBM:GetModLocalization(551)

L:SetGeneralLocalization({
	name		= "Провісник Скайрісс"
})

L:SetWarningLocalization({
	warnSplitSoon	= "Ілюзія Провісника Скоро",
	warnSplit		= "Ілюзія Провісника"
})

L:SetOptionLocalization({
	warnSplitSoon	= "Показувати попередження для Ілюзія Провісника скоро",
	warnSplit		= "Показувати попередження для Ілюзія Предвісника"
})

L:SetMiscLocalization({
	Split	= "Мы бесчисленны, как звезды! Мы заполоним вселенную!"
})

--------------------------
--  Magisters' Terrace  --
--------------------------
--  Selin Fireheart  --
-----------------------
L = DBM:GetModLocalization(530)

L:SetGeneralLocalization({
	name		= "Селін Вогняне Серце"
})

L:SetWarningLocalization({
	warningFelCrystal	= "Кристал Скверни - Зміни Ціль"
})

L:SetTimerLocalization({
	timerFelCrystal		= "~Кристал Скверни"
})

L:SetOptionLocalization({
	warningFelCrystal	= "Показувати особливе попередження зміни цілей для Кристал Скверни",
	timerFelCrystal		= "Показувати таймер для Кристал Скверни"
})

----------------
--  Vexallus  --
----------------
L = DBM:GetModLocalization(531)

L:SetGeneralLocalization({
	name		= "Вексаліус"
})

L:SetWarningLocalization({
	warnEnergy	= "Чиста енергія - Зміни Ціль"
})

L:SetOptionLocalization({
	warnEnergy	= "Показувати попередження для Чиста енергія"
})

--------------------------
--  Priestess Delrissa  --
--------------------------
L = DBM:GetModLocalization(532)

L:SetGeneralLocalization({
	name		= "Жриця Делрісса"
})

L:SetMiscLocalization({
	DelrissaEnd		= "На це... я... не розраховувала..."
})

------------------------------------
--  Kael'thas Sunstrider (Party)  --
------------------------------------
L = DBM:GetModLocalization(533)

L:SetGeneralLocalization({
	name		= "Кель'тас Сонячний Скиталець (Група)"
})

L:SetMiscLocalization({
	KaelP2	= "Я переверну ваш мир... вверх... дном."
})
