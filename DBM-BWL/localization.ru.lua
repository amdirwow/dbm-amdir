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
	Phase2Emote = "убегает, как только сила сферы пошла на спад.",
	YellPull = "Враги в инкубаторе! Бейте тревогу! Защищайте яйца любой ценой!"
})

-------------------
--  Vaelastrasz  --
-------------------
L = DBM:GetModLocalization("Vaelastrasz")

L:SetGeneralLocalization({
	name = "Валестраз Порочний"
})

L:SetMiscLocalization({
	Event = "Умоляю, смертные! Бегите! Бегите, пока я еще могу себя удержать! Черный огонь бушует в моем сердце! Я должен... дать ему волю!"
})

-----------------
--  Broodlord  --
-----------------
L = DBM:GetModLocalization("Broodlord")

L:SetGeneralLocalization({
	name = "Предводитель драконів Розлучаючий Біч"
})

L:SetMiscLocalization({
	Pull = "Таких, как вы, здесь быть не должно! Смерть грозит лишь вам!"
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
	VulnEmote	= "%s изменяется, мерцая.",
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
	YellP1		= "Пусть состязания начнутся!",
	YellP2		= "Браво, слуги мои! Смертные утрачивают мужество! Поглядим же, как они справятся с истинным владыкой Черной горы!!!",
	YellP3		= "Не может быть! Восстаньте, мои прислужники! Послужите господину еще раз!",
	YellShaman	= "Шаманы, покажите, на что способны ваши тотемы!",
	YellPaladin	= "Паладины... Я слышал, у вас несколько жизней. Докажите.",
	YellDruid	= "Друиды и их дурацкие превращения... Ну что ж, поглядим!",
	YellPriest	= "Жрецы! Если вы собираетесь продолжать так лечить, то давайте хоть немного разнообразим процесс!",
	YellWarrior	= "Я знаю, воины, вы можете бить сильнее! Ну-ка, покажите!",
	YellRogue = "Разбойники? Хватит прятаться, покажитесь!",
	YellWarlock	= "Чернокнижники, ну не беритесь вы за волшебство, которого сами не понимаете! Видите, что получилось?",
	YellHunter	= "Охотники со своими жалкими пугачами!",
	YellMage	= "И маги тоже? Осторожнее надо быть, когда играешь с магией...",
	YellDK		= "Рыцари смерти! Сюда!"
})
