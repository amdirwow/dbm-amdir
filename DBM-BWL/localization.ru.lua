if GetLocale() ~= "ruRU" then return end

local L

-----------------
--  Razorgore  --
-----------------
L = DBM:GetModLocalization("Razorgore")

L:SetGeneralLocalization({
	name = "Бритвосмерт Неприборканий"
})

L:SetTimerLocalization({
	TimerAddsSpawn	= "Поява аддів"
})

L:SetOptionLocalization({
	TimerAddsSpawn	= "Показувати таймер до першої появи аддів"
})

L:SetMiscLocalization({
	Phase2Emote = "тікає, як тільки сила сфери пішла на спад.",
	YellPull = "Вороги в інкубаторі! Бійте на сполох! Захищайте яйця за всяку ціну!"
})

-------------------
--  Vaelastrasz  --
-------------------
L = DBM:GetModLocalization("Vaelastrasz")

L:SetGeneralLocalization({
	name = "Валестраз Порочний"
})

L:SetMiscLocalization({
	Event = "Благаю, смертні! Біжіть! Біжіть, поки я можу себе втримати! Чорний вогонь вирує у моєму серці! Я мушу... дати йому волю!"
})

-----------------
--  Broodlord  --
-----------------
L = DBM:GetModLocalization("Broodlord")

L:SetGeneralLocalization({
	name = "Предводитель драконів Розлучаючий Біч"
})

L:SetMiscLocalization({
	Pull = "Таких, як ви, тут не повинно бути! Смерть загрожує лише вам!"
})

---------------
--  Firemaw  --
---------------
L = DBM:GetModLocalization("Firemaw")

L:SetGeneralLocalization({
	name = "Огнєчрев"
})

---------------
--  Ebonroc  --
---------------
L = DBM:GetModLocalization("Ebonroc")

L:SetGeneralLocalization({
	name = "Чорноскел"
})

----------------
--  Flamegor  --
----------------
L = DBM:GetModLocalization("Flamegor")

L:SetGeneralLocalization({
	name = "Пламегор"
})

-----------------------
--  Vulnerabilities  --
-----------------------
-- Chromaggus, Death Talon Overseer and Death Talon Wyrmguard
L = DBM:GetModLocalization("TalonGuards")

L:SetGeneralLocalization({
	name = "Вартові Кігтя Смерті"
})

L:SetWarningLocalization({
	WarnVulnerable		= "Вразливість до %s"
})

L:SetOptionLocalization({
	WarnVulnerable		= "Показувати попередження про вразливість до заклинань"
})

L:SetMiscLocalization({
	Fire		= "Вогню",
	Nature		= "силам Природи",
	Frost		= "магії Льоду",
	Shadow		= "Темної магії",
	Arcane		= "Таємної магії",
	Holy		= "Світлій магії"
})

------------------
--  Chromaggus  --
------------------
L = DBM:GetModLocalization("Chromaggus")

L:SetGeneralLocalization({
	name = "Хромаггус"
})

L:SetWarningLocalization({
	WarnBreathSoon	= "Незабаром дихання",
	WarnBreath		= "%s",
	WarnVulnerable	= "Вразливість до %s",
	WarnPhase2Soon	= "Незабаром 2-а фаза"
})

L:SetTimerLocalization({
	TimerBreathCD	= "%s відновлення",
	TimerBreath		= "Застосування %s",
	TimerVulnCD		= "Відновлення вразливості"
})

L:SetOptionLocalization({
	WarnBreathSoon	= "Попереднє попередження Дихання Хромаггуса",
	WarnBreath		= "Показувати попередження про дихання Хромаггуса",
	WarnVulnerable	= "Показувати попередження про вразливість до заклинань",
	TimerBreathCD	= "Показувати час відновлення дихань",
	TimerBreath		= "Показувати застосування Дихання",
	TimerVulnCD		= "Показувати відновлення вразливості",
	WarnPhase2Soon	= "Попереджати про другу фазу"
})

L:SetMiscLocalization({
	Breath1		= "Перше Дихання",
	Breath2		= "Друге Дихання",
	VulnEmote	= "%s змінюється, мерехтить.",
	Vuln		= "Вразливість",
	Fire		= "Вогню",
	Nature		= "силам Природи",
	Frost		= "магії Льоду",
	Shadow		= "Темної магії",
	Arcane		= "Таємної магії",
	Holy		= "Світлій магії"
})

----------------
--  Nefarian  --
----------------
L = DBM:GetModLocalization("Nefarian-Classic")

L:SetGeneralLocalization({
	name = "Нефаріан"
})

L:SetWarningLocalization({
	WarnAddsLeft		= "Залишилось %d вбивств",
	WarnClassCallSoon	= "Скоро виклик класу",
	WarnClassCall		= "Дебафф на %s",
	WarnPhaseSoon		= "Скоро фаза %s",
	WarnPhase			= "Фаза %s",
	specwarnClassCall	= "Класовий поклик на тобі!"
})

L:SetTimerLocalization({
	TimerClassCall		= "%s поклик закінчується"
})

L:SetOptionLocalization({
	TimerClassCall		= "Показувати таймер класових викликів",
	WarnClassCallSoon	= "Попередження класових викликів",
	WarnClassCall		= "Оголошувати класовий виклик",
	WarnPhaseSoon		= "Оголошувати, коли наступна фаза незабаром почнеться",
	WarnPhase			= "Оголошувати зміну фаз",
	specwarnClassCall	= "Показувати спеціальне попередження, коли ви схильні до класового поклику"
})

L:SetMiscLocalization({
	YellP1		= "Нехай змагання розпочнуться!",
	YellP2		= "Браво, слуги мої! Смертні втрачають мужність! Подивимося ж, як вони впораються із справжнім володарем Чорної гори!!!",
	YellP3		= "Не може бути! Встаньте, мої прислужники! Послужіть пану ще раз!",
	YellShaman	= "Шамани, покажіть, на що здатні ваші тотеми!",
	YellPaladin	= "Паладини... Я чув, у вас кілька життів. Доведіть.",
	YellDruid	= "Друїди та їхні безглузді перетворення... Ну що ж, подивимося!",
	YellPriest	= "Жерці! Якщо ви збираєтеся так лікувати, то давайте хоч трохи урізноманітним процес!",
	YellWarrior	= "Я знаю, воїни, ви можете бити сильніше! Ану, покажіть!",
	YellRogue = "Розбійники? Досить ховатися, здайтеся!",
	YellWarlock	= "Чорнокнижники, ну не беріться ви за чаклунство, якого самі не розумієте! Бачите, що вийшло?",
	YellHunter	= "Мисливці зі своїми жалюгідними пугачами!",
	YellMage	= "І маги теж? Обережніше треба бути, коли граєш із магією.",
	YellDK		= "Лицарі смерті! Сюди!"
})
