if GetLocale() ~= "ruRU" then return end
local L

---------------
--  Kalecgos --
---------------
L = DBM:GetModLocalization("Kal")

L:SetGeneralLocalization({
	name = "Калесгос"
})

L:SetWarningLocalization({
	WarnPortal			= "Портал #%d : >%s< (Група %d)",
	SpecWarnWildMagic	= "Дика магія – %s!"
})

L:SetOptionLocalization({
	WarnPortal			= "Показувати попередження з метою $spell:46021",
	SpecWarnWildMagic	= "Показувати спец-попередження для Дикої Магії",
	ShowRespawn			= "Відлік до появи боса після вайпа",
	ShowFrame			= "Показати кадр Примарного світу",
	FrameClassColor		= "Використовувати кольори класів у кадрі Примарного світу",
	FrameUpwards		= "Зростання кадру Примарного світу ВВЕРХ",
	FrameLocked			= "Зафіксувати кадр Примарного світу"
})

L:SetMiscLocalization({
	Demon				= "Сатроварр Осквернитель",
	Heal				= "+100% кила",
	Haste				= "+100% касттайм",
	Hit					= "-50% влучності",
	Crit				= "+100% критий збиток",
	Aggro				= "+100% загрози",
	Mana				= "-50% ісп мани",
	FrameTitle			= "Примарний світ",
	FrameLock			= "Закріпити рамку",
	FrameClassColor		= "Використовувати кольори класів",
	FrameOrientation	= "Зростання вгору",
	FrameHide			= "Приховати рамку",
	FrameClose			= "Закрити",
	FrameGUIMoveMe		= "Пересунь мене"
})

----------------
--  Brutallus --
----------------
L = DBM:GetModLocalization("Brutallus")

L:SetGeneralLocalization({
	name = "Брутал"
})

L:SetOptionLocalization({
	RangeFrameActivation= "Активація рамки діапазону",
	AlwaysOn			= "На початку зустрічі. Ігнорує фільтр",
	OnDebuff			= "При дебафф. Застосовує фільтр дебаффа"
})

L:SetMiscLocalization({
	Pull			= "Аа, новые овечки на заклание?"
})

--------------
--  Felmyst --
--------------
L = DBM:GetModLocalization("Felmyst")

L:SetGeneralLocalization({
	name = "Пророк Скверни"
})

L:SetWarningLocalization({
	WarnPhase		= "%s фаза"
})

L:SetTimerLocalization({
	TimerPhase		= "Наступна %s фаза"
})

L:SetOptionLocalization({
	WarnPhase		= "Показувати попередження для наступної фази",
	TimerPhase		= "Показувати таймер фаз"
})

L:SetMiscLocalization({
	Air				= "повітряна",
	Ground			= "наземна",
	AirPhase		= "Я сильнее, чем когда-либо прежде!",
	Breath			= "%s глубоко вдыхает."
})

-----------------------
--  The Eredar Twins --
-----------------------
L = DBM:GetModLocalization("Twins")

L:SetGeneralLocalization({
	name = "Близнюки"
})

L:SetMiscLocalization({
	NovaWhisper		= "Кільце темряви на тобі!",
	ConflagWhisper	= "Запалення на тобі!",
	Nova			= "заклинание Кольцо Тьмы на",
	Conflag			= "направляет \"Воспламенение\" на",
})

------------
--  M'uru --
------------
L = DBM:GetModLocalization("Muru")

L:SetGeneralLocalization({
	name = "М'ууру"
})

L:SetWarningLocalization({
	WarnHuman		= "Адди-гуманоїди (%d)",
	WarnHumanSoon	= "Адди-гуманоїди in 5 sec (%d)",
	WarnVoid		= "Часовий Безодні (%d)",
	WarnVoidSoon	= "Часовий Безодні через 5 сек. (%d)",
	WarnFiend		= "З'явився череп - розсійте",
	specWarnVoid	= "Морок - РОСІЙТЕ ЧЕРЕПА!",
	specWarnBH		= "Чорна діра - РОСІЙТЕ ЧЕРЕПА!",
	specWarnVW		= "Часовий Безодні через 5",
	specWarnDarknessSoon = "Скоро Морок"
})

L:SetTimerLocalization({
	TimerHuman		= "Адди-гуманоїди (%s)",
	TimerVoid		= "Часовий Безодні (%s)",
	TimerPhase		= "Ентропій"
})

L:SetOptionLocalization({
	WarnHuman		= "Показувати попередження для аддів-гуманоїдів",
	WarnHumanSoon	= "Попереджати заздалегідь (5 сек) про пекла-гуманоїди",
	WarnVoid		= "Показувати попередження для Вартових Безодні",
	WarnVoidSoon	= "Попереджати заздалегідь(5 сек) про Часові Безодні",
	WarnFiend		= "Показувати попередження для розсіювання черепів на 2 фазі",
	specWarnVoid	= "Показувати спец-попередження для Мороку (розсіювання)",
	specWarnBH		= "Показувати спец-попередження для чорної діри (розсіювання)",
	specWarnVW		= "Показувати спец-попередження перед Годинниковою Безоднею",
	specWarnDarknessSoon = "Показувати спец-попередження перед мороком",
	TimerHuman		= "Показувати таймер аддів-гуманоїдів",
	TimerVoid		= "Показувати таймер Годинникових Безодень",
	TimerPhase		= "Показувати таймер переходу на 2 фазу"
})

L:SetMiscLocalization({
	Entropius		= "Ентропій"
})

----------------
--  Kil'jeden --
----------------
L = DBM:GetModLocalization("Kil")

L:SetGeneralLocalization({
	name = "Кіл'джеден"
})

L:SetWarningLocalization({
	WarnDarkOrb		= "З'явилися темні сфери",
	WarnBlueOrb		= "Активувалася сфера дракона",
	SpecWarnDarkOrb	= "Темні сфери!",
	SpecWarnBlueOrb	= "СФера Дракона активувалася!"
})

L:SetTimerLocalization({
	TimerBlueOrb	= "Активація сфери дракона",
	TimerDarkOrb	= "Темні сфери!"
})

L:SetOptionLocalization({
	WarnDarkOrb		= "Показувати попередження для Темних Сфер",
	WarnBlueOrb		= "Показувати попередження для активації Сфер Дракона",
	SpecWarnDarkOrb	= "Спец-попередження для Темних Сфер",
	SpecWarnBlueOrb	= "Спец-попередження для активації Сфер Дракона",
	TimerBlueOrb	= "Показати таймер активації Сфер Дракона",
})

L:SetMiscLocalization({
	YellPull		= "Те, кем можно было пожертвовать, мертвы. Так тому и быть! Я добьюсь успеха там, где Саргерас потерпел поражение! Я заставлю этот жалкий мирок истекать кровью и навеки закреплю за собой место повелителя Пылающего Легиона! Пробил последний час этого мира!",
	OrbYell1		= "Я наполню сферы своей энергией! Готовьтесь!",
	OrbYell2		= "Я наполнил энергией еще одну сферу! Быстрее используйте ее!",
	OrbYell3		= "Готова еще одна сфера! Торопитесь!",
	OrbYell4		= "Я отдал все, что мог. Моя энергия в ваших руках!"
})
