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
	YellPull	= "Обнаружены противники. Запуск протокола оценки угрозы. Главная цель выявлена. Повторный анализ через 30 секунд.",
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
	YellAir				= "Дайте время подготовить пушки.",
	YellAir2			= "Огонь прекратился! Надо починить пушки!",
	YellGround			= "Быстрее! Сейчас она снова взлетит!",
	EmotePhase2			= "%%s обессилела и больше не может летать!"
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
	YellKill				= "Я видел миры, охваченные пламенем Творцов. Их жители гибли, не успев издать ни звука. Я был свидетелем того, как галактики рождались и умирали в мгновение ока. И все время я оставался холодным... и безразличным. Я. Не чувствовал. Ничего. Триллионы загубленных судеб. Неужели все они были подобны вам? Неужели все они так же любили жизнь?",
	Emote_CollapsingStar	= "%s призывает взрывающиеся звезды!",
	Phase2					= "Узрите чудо созидания!",
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
	FocusedEyebeam			= "%s устремляет на вас свой взгляд!"
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
	YellPull = "Вы зря сюда заявились!"
})

-------------
--  Hodir  --
-------------
L = DBM:GetModLocalization("Hodir")

L:SetGeneralLocalization({
	name = "Ходир"
})

L:SetMiscLocalization({
	Pull		= "Вы будете наказаны за это вторжение!",
	YellKill	= "Наконец-то я... свободен от его оков…"
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
	YellPhase1				= "Незваные гости! Вы заплатите за то, что посмели вмешаться... Погодите, вы...",
	YellPhase2				= "Бесстыжие выскочки, вы решили бросить вызов мне лично? Я сокрушу вас всех!",
	YellKill				= "Придержите мечи! Я сдаюсь.",
	YellHardModeActive		= "Это невозможно! Торим, не сомневайся – твоих врагов ждет ледяная смерть!",
	YellHardModeFailed		= "Эти жалкие смертные мне не ровня! Уничтожьте их!",
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
	SpawnYell			= "Помогите мне, дети мои!",
	WaterSpirit			= "Давній дух води",
	Snaplasher			= "Хватоплет",
	StormLasher			= "Грозовий батіг",
	YellKill			= "Он больше не властен надо мной. Мой взор снова ясен. Благодарю вас, герои.",
	YellAdds1			= "Эонар, твоей прислужнице нужна помощь!",
	YellAdds2			= "Вас захлестнет сила стихий!",
	EmoteLGift			= "починає рости!", -- |cFF00FFFFДар Хранительки життя|r починає рости!
	TrashRespawnTimer	= "Відродження монстрів",
	YellPullNormal		= "Нужно защитить Оранжерею!",
	YellPullHard		= "Древни, дайте мне силы!"
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
	YellPull		= "У нас мало времени, друзья! Вы поможете испытать новейшее и величайшее из моих изобретений. И учтите: после того, что вы натворили с XT-002, отказываться просто некрасиво.",
	YellHardPull	= "Отсчет времени до самоуничтожения начат.",
	YellPhase2		= "ПРЕВОСХОДНО! Просто восхитительный результат! Целостность обшивки – 98,9 процента! Почти что ни царапинки! Продолжаем!",
	YellPhase3		= "Спасибо, друзья! Благодаря вам я получил ценнейшие сведения! Так, а куда же я дел... – ах, вот куда.",
	YellPhase4		= "Фаза предварительной проверки завершена. Пора начать главный тест!",
	YellKilled		= "Очевидно, я совершил небольшую ошибку в расчетах. Пленный злодей затуманил мой разум и заставил меня отклониться от инструкций. Сейчас все системы в норме. Конец связи.",
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
	EmoteSaroniteVapors	= "Поблизости начинают возникать саронитовые испарения!"
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
	YellPull			= "Скоро мы сразимся с главарем этих извергов! Обратите гнев и ненависть против его прислужников!",
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
