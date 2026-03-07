if GetLocale() ~= "ruRU" then return end

local L

-----------------------
--  Flame Leviathan  --
-----------------------
L = DBM:GetModLocalization("FlameLeviathan")

L:SetGeneralLocalization({
	name = "Вогняний Левіафан"
})

L:SetWarningLocalization({
	PursueWarn				= "Переслідується >%s<",
	warnNextPursueSoon		= "Зміна мети через 5 секунд",
	SpecialPursueWarnYou	= "Вас переслідують - тікайте",
	warnWardofLife			= "Заклик Захисника життя"
})

L:SetOptionLocalization({
	SpecialPursueWarnYou	= "Спец-попередження, коли вас $spell:62374",
	PursueWarn				= "Оголошувати цілі заклинання $spell:62374",
	warnNextPursueSoon		= "Попереджати заздалегідь наступне $spell:62374",
	warnWardofLife			= "Спец-попередження для заклику Захисника життя"
})

L:SetMiscLocalization({
	YellPull	= "Виявлено супротивників. Запуск протоколу оцінки небезпеки. Головна мета виявлена. Повторний аналіз за 30 секунд.",
	Emote		= "%%s наводиться на (%S+)%."
})

--------------------------------
--  Ignis the Furnace Master  --
--------------------------------
L = DBM:GetModLocalization("Ignis")

L:SetGeneralLocalization({
	name = "Король Ігніс"
})

L:SetOptionLocalization({
	soundConcAuraMastery	= "Відтворити звук $spell:31821, щоб скасувати ефекти $spell:63472 (тільки для |cFFF48CBAПаладина|r, який є власником $spell:19746)"
})

------------------
--  Razorscale  --
------------------
L = DBM:GetModLocalization("Razorscale")

L:SetGeneralLocalization({
	name = "Гострокрила"
})

L:SetWarningLocalization({
	warnTurretsReadySoon		= "Гарпунні гармати будуть зібрані через 20 секунд",
	warnTurretsReady			= "Гарпунні гармати зібрані"
})

L:SetTimerLocalization({
	timerTurret1	= "Гарпунна гармата 1",
	timerTurret2	= "Гарпунна гармата 2",
	timerTurret3	= "Гарпунна гармата 3",
	timerTurret4	= "Гарпунна гармата 4",
	timerGrounded	= "на землі"
})

L:SetOptionLocalization({
	warnTurretsReadySoon		= "Попередження для гармат",
	warnTurretsReady			= "Попередження для гармат",
	timerTurret1				= "Відлік до гармати 1",
	timerTurret2				= "Відлік до гармати 2",
	timerTurret3				= "Відлік до гармати 3 (25 чол.)",
	timerTurret4				= "Відлік до гармати 4 (25 чол.)",
	timerGrounded				= "Відлік для наземної фази"
})

L:SetMiscLocalization({
	YellAir				= "Дайте час підготувати гармати.",
	YellAir2			= "Вогонь припинився! Треба полагодити гармати!",
	YellGround			= "Швидше! Тепер вона знову злетить!",
	EmotePhase2			= "%%s знесиліла і більше не може літати!"
})

----------------------------
--  XT-002 Deconstructor  --
----------------------------
L = DBM:GetModLocalization("XT002")

L:SetGeneralLocalization({
	name = "Руйнівник XT-002"
})

--------------------
--  Iron Council  --
--------------------
L = DBM:GetModLocalization("IronCouncil")

L:SetGeneralLocalization({
	name = "Залізні збори"
})

L:SetOptionLocalization({
	AlwaysWarnOnOverload		= "Завжди попереджати при $spell:63481<br/>(інакше, тільки коли бос у цілі)"
})

L:SetMiscLocalization({
	Steelbreaker		= "Сталелом",
	RunemasterMolgeim	= "Майстер рун Молгейм",
	StormcallerBrundir	= "Буревісник Брундір"
--	YellPull1			= "Кто бы вы ни были – жалкие бродяги или великие герои... Вы всего лишь смертные!",
--	YellPull2			= "Я буду спокоен, лишь когда окончательно истреблю вас.",
--	YellPull3			= "Чужаки! Вам не одолеть Железное Собрание!",
--	YellRuneOfDeath		= "Расшифруйте вот это!",
--	YellRunemasterMolgeimDied = "И что вам дало мое поражение? Вы все так же обречены, смертные.",
--	YellRunemasterMolgeimDied2 = "Наследие бурь не умрет вместе со мной.",
--	YellStormcallerBrundirDied = "Никто не превзойдет силу шторма.",
--	YellStormcallerBrundirDied2 = "Вас ждет бездна безумия!",
--	YellSteelbreakerDied = "Мое поражение лишь приблизит вашу погибель.",
--	YellSteelbreakerDied2 = "Не может быть!"
})

----------------------------
--  Algalon the Observer  --
----------------------------
L = DBM:GetModLocalization("Algalon")

L:SetGeneralLocalization({
	name = "Алгалон Спостерігач"
})

L:SetTimerLocalization({
	NextCollapsingStar		= "зірка, що спалахує",
})

L:SetWarningLocalization({
	warnStarLow				= "У спалахує зірки мало здоров'я"
})

L:SetOptionLocalization({
	NextCollapsingStar		= "Відлік до появи зірки, що спалахує",
	warnStarLow				= "Спец-попередження, коли у спалахує зірки мало здоров'я (на ~25%)"
})

L:SetMiscLocalization({
--	FirstPull				= "Взгляните на мир моими глазами: узрите необъятную вселенную, непостижимую даже для величайших умов.",
--	YellPull				= "Ваши действия нелогичны. Все возможные исходы этой схватки просчитаны. Пантеон получит сообщение от Наблюдателя в любом случае.",
	YellKill				= "Я бачив світи, охоплені полум'ям Творців. Їхні жителі гинули, не встигнувши видати жодного звуку. Я був свідком того, як галактики народжувалися і вмирали миттєво. І весь час я залишався холодним... і байдужим. Я. Не відчував. Нічого. Трильйони загублених доль. Невже всі вони були подібні до вас? Невже вони так само любили життя?",
	Emote_CollapsingStar	= "%s закликає зірки, що вибухають!",
	Phase2					= "Побачте чудо творення!",
	CollapsingStar			= "зірка, що спалахує"
})

----------------
--  Kologarn  --
----------------
L = DBM:GetModLocalization("Kologarn")

L:SetGeneralLocalization({
	name = "Кологарн"
})

L:SetTimerLocalization({
	timerLeftArm		= "Відродження лівої руки",
	timerRightArm		= "Відродження правої руки",
	achievementDisarmed	= "Обеззброєний"
})

L:SetOptionLocalization({
	timerLeftArm			= "Відлік до Відродження лівої руки",
	timerRightArm			= "Відлік до Відродження правої руки",
	achievementDisarmed		= "Відлік для досягнення Обеззброєний"
})

L:SetMiscLocalization({
--	Yell_Trigger_arm_left	= "Царапина...",
--	Yell_Trigger_arm_right	= "Всего лишь плоть!",
--	YellEncounterStart		= "Вам не пройти!",
--	YellLeftArmDies			= "Царапина...",
--	YellRightArmDies		= "Всего лишь плоть!",
	Health_Body				= "Кологарн",
	Health_Right_Arm		= "Права рука",
	Health_Left_Arm			= "Ліва рука",
	FocusedEyebeam			= "%s спрямовує на вас свій погляд!"
})

---------------
--  Auriaya  --
---------------
L = DBM:GetModLocalization("Auriaya")

L:SetGeneralLocalization({
	name = "Ауріа"
})

L:SetWarningLocalization({
	WarnCatDied		= "Дикий еащитник гине (залишилось %d життів)",
	WarnCatDiedOne	= "Дикий еащитник гине (залишилося 1 життя)"
})

-- L:SetTimerLocalization({
-- 	timerDefender	= "Возрождение Дикого защитника"
-- })

L:SetOptionLocalization({
	WarnCatDied		= "Попередження, коли Дикий захисник гине",
	WarnCatDiedOne	= "Попередження, коли у Дикого захисника залишається 1 життя"
--	timerDefender	= "Отсчет времени до возрождения Дикого защитника"
})

L:SetMiscLocalization({
	Defender = "Дикий еащитник (%d)",
	YellPull = "Ви даремно сюди прийшли!"
})

-------------
--  Hodir  --
-------------
L = DBM:GetModLocalization("Hodir")

L:SetGeneralLocalization({
	name = "Ходир"
})

L:SetMiscLocalization({
	Pull		= "Ви будете покарані за це вторгнення!",
	YellKill	= "Нарешті я... вільний від його кайданів..."
})

--------------
--  Thorim  --
--------------
L = DBM:GetModLocalization("Thorim")

L:SetGeneralLocalization({
	name = "Торим"
})

L:SetTimerLocalization({
	TimerHardmode	= "Складний режим"
})

L:SetOptionLocalization({
	specWarnHardmode	= "Спецпопередження про увімкнення режиму Складний режим",
	TimerHardmode		= "Відлік для складного режиму",
	AnnounceFails		= "Оголошувати гравців, які потрапили під $spell:62017, у рейд-чат<br/>(потрібні права лідера або помічника)"
})

L:SetMiscLocalization({
	YellPhase1				= "Непрохані гості! Ви заплатите за те, що посміли втрутитися... Стривайте, ви...",
	YellPhase2				= "Безсоромні вискочки, ви вирішили кинути виклик мені особисто? Я зламаю вас усіх!",
	YellKill				= "Притримайте мечі! Я здаюсь.",
	YellHardModeActive		= "Це неможливо! Торимо, не сумнівайся – на твоїх ворогів чекає крижана смерть!",
	YellHardModeFailed		= "Ці жалюгідні смертні мені не рівні! Знищте їх!",
	ChargeOn				= "Розряд блискавки: %s",
	Charge					= "Потрапили під Розряд блискавки (у цьому бою): %s"
})

-------------
--  Freya  --
-------------
L = DBM:GetModLocalization("Freya")

L:SetGeneralLocalization({
	name = "Фрейя"
})

L:SetWarningLocalization({
	WarnSimulKill	= "Перший помічник загинув – воскресіння через ~12 сек."
})

L:SetTimerLocalization({
	TimerSimulKill	= "Воскресіння"
})

L:SetOptionLocalization({
	WarnSimulKill	= "Оголошувати, коли перший монстр гине",
	TimerSimulKill	= "Відлік до воскресіння монстрів"
})

L:SetMiscLocalization({
	SpawnYell			= "Допоможіть мені, мої діти!",
	WaterSpirit			= "Давній дух води",
	Snaplasher			= "Хватоплет",
	StormLasher			= "Грозовий батіг",
	YellKill			= "Він більше не владний з мене. Мій погляд знову ясний. Дякую вам, герої.",
	YellAdds1			= "Еонар, твоїй служниці потрібна допомога!",
	YellAdds2			= "Вас захльосне сила стихій!",
	EmoteLGift			= "починає рости!", -- |cFF00FFFFДар Хранительки життя|r починає рости!
	TrashRespawnTimer	= "Відродження монстрів",
	YellPullNormal		= "Потрібно захистити Оранжерею!",
	YellPullHard		= "Давні, дайте мені сили!"
})

----------------------
--  Freya's Elders  --
----------------------
L = DBM:GetModLocalization("Freya_Elders")

L:SetGeneralLocalization({
	name = "Стародавні Фрейї"
})

L:SetOptionLocalization({
	TrashRespawnTimer	= "Відлік до відродження монстрів"
})

L:SetMiscLocalization({
	TrashRespawnTimer	= "Відродження монстрів",
})

---------------
--  Mimiron  --
---------------
L = DBM:GetModLocalization("Mimiron")

L:SetGeneralLocalization({
	name = "Мімірон"
})

L:SetWarningLocalization({
	MagneticCore		= "Магнітне ядро у |3-1(>%s<)",
	WarnBombSpawn		= "Бомбот"
})

L:SetTimerLocalization({
	TimerHardmode	= "Складний режим - Самознищення",
	TimeToPhase2	= "Фаза 2",
	TimeToPhase3	= "Фаза 3",
	TimeToPhase4	= "Фаза 4"
})

L:SetOptionLocalization({
	TimeToPhase2			= "Відлік для фази 2",
	TimeToPhase3			= "Відлік для фази 3",
	TimeToPhase4			= "Відлік для фази 4",
	MagneticCore			= "Оголошувати тих, хто підібрав Магнітне ядро",
	AutoChangeLootToFFA		= "Зміна режиму видобутку на Кожен за себе у фазі 3",
	WarnBombSpawn			= "Попередження про Бомботи",
	TimerHardmode			= "Відлік для складного режиму"
})

L:SetMiscLocalization({
	MobPhase1		= "Левіафан II",
	MobPhase2		= "VX-001 <Противопехотная пушка>",
	MobPhase3		= "Повітряне судно",
	MobPhase4		= "В-0-7-ТРОН",
	YellPull		= "У нас мало часу, друзі! Ви допоможете випробувати найновіший і найбільший з моїх винаходів. І врахуйте: після того, що ви наробили з XT-002, відмовлятися просто некрасиво.",
	YellHardPull	= "Відлік до самознищення розпочато.",
	YellPhase2		= "ПЕРЕВІДНО! Просто чудовий результат! Цілісність обшивки – 98,9 відсотка! Майже що не подряпини! Продовжуємо!",
	YellPhase3		= "Дякую, друзі! Завдяки вам я отримав найціннішу інформацію! Так, а куди ж я діл... - ах, куди.",
	YellPhase4		= "Фазу попередньої перевірки завершено. Настав час почати головний тест!",
	YellKilled		= "Очевидно, я зробив невелику помилку у розрахунках. Полонений лиходій затуманив мій розум і змусив мене відхилитися від інструкцій. Нині всі системи в нормі. Кінець зв'язку.",
	LootMsg			= "([^%s]+).*Hitem:(%d+)"
})

---------------------
--  General Vezax  --
---------------------
L = DBM:GetModLocalization("GeneralVezax")

L:SetGeneralLocalization({
	name = "Генерал Везакс"
})

L:SetTimerLocalization({
	hardmodeSpawn = "Саронітовий ворог"
})

L:SetOptionLocalization({
	hardmodeSpawn					= "Відлік до появи ворога Саронітового (складний режим)",
	CrashArrow						= "Показувати стрілку, коли $spell:62660 біля вас"
})

L:SetMiscLocalization({
	EmoteSaroniteVapors	= "Поблизу починають виникати саронітові випари!"
})

------------------
--  Yogg-Saron  --
------------------
L = DBM:GetModLocalization("YoggSaron")

L:SetGeneralLocalization({
	name = "Йогг-Сарон"
})

L:SetWarningLocalization({
	WarningGuardianSpawned			= "Страж %d",
	WarningCrusherTentacleSpawned	= "Тяжке щупальце",
	WarningSanity					= "Залишилося %d Розсудливості",
	SpecWarnSanity					= "Залишилось %d Розсудливості",
	SpecWarnGuardianLow				= "Припиніть атакувати цього Стража",
	SpecWarnMadnessOutNow			= "Доведення до божевілля закінчується - вибігайте",
	WarnBrainPortalSoon				= "Провал Безумства через 10 секунд",
	SpecWarnBrainPortalSoon			= "Скоро Провал Безумства"
})

L:SetTimerLocalization({
	NextPortal	= "Провал Безумства"
})

L:SetOptionLocalization({
	WarningGuardianSpawned			= "Попередження про появу Стража",
	WarningCrusherTentacleSpawned	= "Попередження про появу Тяжкого щупальця",
	WarningSanity					= "Попередження, коли у вас мало $spell:63050",
	SpecWarnSanity					= "Спец-попередження, коли у вас дуже мало $spell:63050",
	SpecWarnGuardianLow				= "Спец-попередження, коли у Стража (у фазі 1) мало здоров'я (для бійців)",
	WarnBrainPortalSoon				= "Попереджати заздалегідь про Провал Безумства",
	SpecWarnMadnessOutNow			= "Спец-попередження незадовго до закінчення $spell:64059",
	SpecWarnBrainPortalSoon			= "Спец-попередження про наступний Провал Безумства",
	NextPortal						= "Відлік до наступного Провалу Безумства",
	ShowSaraHealth					= "Показувати здоров'я Сари у фазі 1 (має бути в меті або фокусі хоча б в одного члена рейду)",
	MaladyArrow						= "Показувати стрілку, коли $spell:63881 біля вас"
})

L:SetMiscLocalization({
	YellPull			= "Скоро ми битимемося з ватажком цих нелюдів! Зверніть гнів і ненависть проти його прислужників!",
	S1TheLucidDream		= "Фаза 1: усвідомлений сон",
	Sara				= "Сара",
	GuardianofYoggSaron	= "Страж Йогг-Сарона",
	S2DescentIntoMadness= "Фаза 2: Провал Безумства",
	CrusherTentacle		= "Тяжке щупальце",
	CorruptorTentacle	= "Щупальце розкладання",
	ConstrictorTentacle	= "Задушливе щупальце",
	DescentIntoMadness	= "Провал Безумства",
	InfluenceTentacle	= "Чутливе щупальце",
	LaughingSkull		= "Веселий череп",
	BrainofYoggSaron	= "Мозок Йогг-Сарона",
	S3TrueFaceofDeath	= "Фаза 3: істинний образ смерті",
	YoggSaron			= "Йогг-Сарон",
	ImmortalGuardian	= "Безсмертний сторож"
})
