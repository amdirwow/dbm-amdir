if GetLocale() ~= "ruRU" then return end

local L

-------------------
--  Anub'Rekhan  --
-------------------
L = DBM:GetModLocalization("Anub'Rekhan")

L:SetGeneralLocalization({
	name = "Ануб'Рекан"
})

L:SetOptionLocalization({
	ArachnophobiaTimer	= "Відлік для Арахнофобія (досягнення)"
})

L:SetMiscLocalization({
	ArachnophobiaTimer	= "Арахнофобія",
	Pull1				= "Бегите, бегите! Я люблю горячую кровь!",
	Pull2				= "Посмотрим, какие вы на вкус!"
})

----------------------------
--  Grand Widow Faerlina  --
----------------------------
L = DBM:GetModLocalization("Faerlina")

L:SetGeneralLocalization({
	name = "Велика вдова Фарліна"
})

L:SetWarningLocalization({
	WarningEmbraceExpire	= "Обійми Вдови через 5 секунд"
})

L:SetOptionLocalization({
	WarningEmbraceExpire	= "Попередження, коли Обіймання Вдови зникає"
})

---------------
--  Maexxna  --
---------------
L = DBM:GetModLocalization("Maexxna")

L:SetGeneralLocalization({
	name = "Мексна"
})

L:SetWarningLocalization({
	WarningSpidersSoon	= "Павученя Мексини через 5 секунд",
	WarningSpidersNow	= "У павутинні з'являються павучати"
})

L:SetTimerLocalization({
	TimerSpider	= "Павученки Мексини"
})

L:SetOptionLocalization({
	WarningSpidersSoon	= "Попереджати перед наступним закликом Павученків Мексни",
	WarningSpidersNow	= "Попередження для заклику Павученків Мексини",
	TimerSpider			= "Відлік до Павученят Мексини"
})

L:SetMiscLocalization({
	ArachnophobiaTimer	= "Арахнофобія"
})

------------------------------
--  Noth the Plaguebringer  --
------------------------------
L = DBM:GetModLocalization("Noth")

L:SetGeneralLocalization({
	name = "Нот Чумний"
})

L:SetWarningLocalization({
	WarningTeleportNow	= "Телепортація",
	WarningTeleportSoon	= "Телепортація за 10 секунд"
})

L:SetTimerLocalization({
	TimerTeleport		= "Телепортація",
	TimerTeleportBack	= "Телепортація назад"
})

L:SetOptionLocalization({
	WarningTeleportNow	= "Попередження про телепортацію",
	WarningTeleportSoon	= "Попереджати перед наступною телепортацією",
	TimerTeleport		= "Відлік до телепортації",
	TimerTeleportBack	= "Відлік до зворотної телепортації"
})

L:SetMiscLocalization({
	Pull				= "Смерть чужакам!",
	Adds				= "призывает скелетов-воинов!",
	AddsTwo				= "поднимает новых скелетов!"
})

--------------------------
--  Heigan the Unclean  --
--------------------------
L = DBM:GetModLocalization("Heigan")

L:SetGeneralLocalization({
	name = "Хейган Безбожний"
})

L:SetWarningLocalization({
	WarningTeleportNow	= "Телепортація",
	WarningTeleportSoon	= "Телепортація через %d сек."
})

L:SetTimerLocalization({
	TimerTeleport	= "Телепортація"
})

L:SetOptionLocalization({
	WarningTeleportNow	= "Попередження про телепортацію",
	WarningTeleportSoon	= "Попереджати перед наступною телепортацією",
	TimerTeleport		= "Відлік до телепортації"
})

L:SetMiscLocalization({
	Pull				= "Теперь вы принадлежите мне!"
})

---------------
--  Loatheb  --
---------------
L = DBM:GetModLocalization("Loatheb")

L:SetGeneralLocalization({
	name = "Лотхіб"
})

L:SetWarningLocalization({
	WarningHealSoon	= "Можна зцілювати через 3 секунди",
	WarningHealNow	= "Зцілюйте зараз"
})

L:SetOptionLocalization({
	WarningHealSoon		= "Попереджати заздалегідь перед 3-х секундним вікном лікування",
	WarningHealNow		= "Попередження для 3-х секундного вікна лікування",
	SporeDamageAlert	= "Повідомляти пошепки і оголошувати в рейд гравців, які завдають шкоди суперечкам (потрібні права лідера або помічника)",
	CorruptedSorting	= "Set infoframe sorting behaviour for $spell:55593", -- translation missing
	Alphabetical		= "Sort in alphabetical order", -- translation missing
	Duration			= "Sort by duration" -- translation missing
})

-----------------
--  Patchwerk  --
-----------------
L = DBM:GetModLocalization("Patchwerk")

L:SetGeneralLocalization({
	name = "Лоскутик"
})

L:SetOptionLocalization({
	WarningHateful	= "Оголошувати цілі під ударом ненависті (потрібні права лідера або помічника)"
})

L:SetMiscLocalization({
	yell1			= "Лоскутик хочет поиграть!",
	yell2			= "Кел'Тузад объявил Лоскутика воплощением войны!",
	HatefulStrike	= "Удар ненависті --> %s [%s]"
})

-----------------
--  Grobbulus  --
-----------------
L = DBM:GetModLocalization("Grobbulus")

L:SetGeneralLocalization({
	name = "Гроббулус"
})

-------------
--  Gluth  --
-------------
L = DBM:GetModLocalization("Gluth")

L:SetGeneralLocalization({
	name = "Глут"
})

----------------
--  Thaddius  --
----------------
L = DBM:GetModLocalization("Thaddius")

L:SetGeneralLocalization({
	name = "Таддіус"
})

L:SetWarningLocalization({
	WarningChargeChanged	= "Полярність змінена на %s",
	WarningChargeNotChanged	= "Полярність не змінена"
})

L:SetOptionLocalization({
	WarningChargeChanged	= "Попередження, коли ваша полярність змінена",
	WarningChargeNotChanged	= "Попередження, коли ваша полярність не змінена",
	ArrowsEnabled			= "Відображати стрілки (звичайна 2-стороння стратегія)",
	ArrowsRightLeft			= "Стрілки ліворуч/праворуч для 4-сторонньої стратегії",
	ArrowsInverse			= "Зворотна 4-стороння стратегія (вправо, якщо полярність змінена, вліво, якщо ні)"
})

L:SetMiscLocalization({
	Yell	= "Сталагг сокрушить вас!",
	Emote	= "%s перезагружается!",
	Emote2	= "Катушка Теслы перезагружается!",
	Boss1	= "Фойген",
	Boss2	= "Сталагг",
	Charge1 = "негативну",
	Charge2 = "позитивну"
})

----------------------------
--  Instructor Razuvious  --
----------------------------
L = DBM:GetModLocalization("Razuvious")

L:SetGeneralLocalization({
	name = "Інструктор Розувій"
})

L:SetWarningLocalization({
	WarningShieldWallSoon	= "Стіна кісток закінчиться за 5 секунд"
})

L:SetOptionLocalization({
	WarningShieldWallSoon	= "Попереджати про швидке зникнення Стіни кісток"
})

L:SetMiscLocalization({
	Yell1 = "Покажите мне, на что способны!",
	Yell2 = "Обучение окончено! Покажите мне, что вы усвоили!",
	Yell3 = "Вспомните, чему я вас учил!",
	Yell4 = "Выше ногу! Или у тебя с этим проблемы?"
})

----------------------------
--  Gothik the Harvester  --
----------------------------
L = DBM:GetModLocalization("Gothik")

L:SetGeneralLocalization({
	name = "Готик Жнець"
})

L:SetWarningLocalization({
	WarningWaveSoon		= "Хвиля %d: %s через 3 секунди",
	WarningWaveSpawned	= "Хвиля %d: %s покликаний",
	WarningRiderDown	= "Вершник мертвий",
	WarningKnightDown	= "Лицар мертвий",
	WarningPhase2		= "Фаза 2"
})

L:SetTimerLocalization({
	TimerWave	= "Хвиля %d",
	TimerPhase2	= "Фаза 2"
})

L:SetOptionLocalization({
	TimerWave			= "Відлік до хвилі",
	TimerPhase2			= "Відлік до фази 2",
	WarningWaveSoon		= "Попереджати перед наступною хвилею",
	WarningWaveSpawned	= "Попередження для хвилі призову",
	WarningRiderDown	= "Попередження, коли вершник мертвий",
	WarningKnightDown	= "Попередження, коли лицар мертвий"
})

L:SetMiscLocalization({
	yell			= "Нерозумно було шукати свою смерть.",
	WarningWave1	= "%d %s",
	WarningWave2	= "%d %s та %d %s",
	WarningWave3	= "%d %s, %d %s та %d %s",
	Trainee			= "Учня",
	Knight			= "Лицаря",
	Rider			= "Вершника",
	GothikDoorEmote	= "Центральные ворота открываются!",
	GothikPhase2Yell= "Я ждал слишком долго. Сейчас вы предстанете пред ликом Жнеца душ."
})

---------------------
--  Four Horsemen  --
---------------------
L = DBM:GetModLocalization("Horsemen")

L:SetGeneralLocalization({
	name = "Чотири Вершники"
})

L:SetWarningLocalization({
	WarningMarkSoon				= "Знак %d через 3 секунди",
	SpecialWarningMarkOnPlayer	= "%s: %s"
})

L:SetOptionLocalization({
	WarningMarkSoon				= "Попереджати перед наступними знаками",
	SpecialWarningMarkOnPlayer	= "Спец-попередження, коли >4 знаків на вас"
})

L:SetMiscLocalization({
	Korthazz	= "Тан Кортазз",
	Rivendare	= "Барон Рівендер",
	Blaumeux	= "Леді Бломе",
	Zeliek		= "Сер Зелієк"
})

-----------------
--  Sapphiron  --
-----------------
L = DBM:GetModLocalization("Sapphiron")

L:SetGeneralLocalization({
	name = "Сапфірон"
})

L:SetWarningLocalization({
	WarningAirPhaseSoon	= "Повітряна фаза через 10 секунд",
	WarningAirPhaseNow	= "Повітряна фаза",
	WarningLanded		= "Сапфірон приземляється",
	WarningDeepBreath	= "Крижане дихання",
	SpecWarnSapphLow	= "Сапфірон не має сил злетіти"
})

L:SetTimerLocalization({
	TimerAir		= "Повітряна фаза",
	TimerLanding	= "Приземлення",
	TimerIceBlast	= "Крижане дихання"
})

L:SetOptionLocalization({
	WarningAirPhaseSoon	= "Попереджати про наближення Повітряної фази",
	WarningAirPhaseNow	= "Оголошувати Повітряну фазу",
	WarningLanded		= "Оголошувати Наземну фазу",
	TimerAir			= "Відлік до Повітряної фази",
	TimerLanding		= "Відлік до приземлення",
	TimerIceBlast		= "Відлік до Крижаного дихання",
	WarningDeepBreath	= "Спеціальне оголошення Крижаного Дихання",
	SpecWarnSapphLow	= "Спец-попередження для 10% боса (скасування повітряної фази)"
})

L:SetMiscLocalization({
	EmoteBreath			= "%s глубоко вдыхает.",
	AirPhase			= "Сапфирон взмывает в воздух!",
	LandingPhase		= "Сапфирон возобновляет свою атаку!"
})

------------------
--  Kel'Thuzad  --
------------------
L = DBM:GetModLocalization("Kel'Thuzad")

L:SetGeneralLocalization({
	name = "Кел'Тузад"
})

L:SetWarningLocalization({
	specwarnP2Soon	= "Кел'Тузад входить у бій через 10 секунд",
	warnAddsSoon	= "Незабаром прибуття Стражів Крижаної Корони",
	WeaponsStatus	= "Зняття зброї включено: %s (%s - %s)"
})

L:SetTimerLocalization({
	TimerPhase2	= "Фаза 2"
})

L:SetOptionLocalization({
	TimerPhase2			= "Відлік до фази 2",
	specwarnP2Soon		= "Спец-попередження за 10 секунд до вступу Кел'Тузада в бій",
	warnAddsSoon		= "Попереджати заздалегідь про Стражів Крижаної Корони",
	WeaponsStatus		= "Спец-попередження на початку бою, якщо включена функція зняття/одягання зброї",
	EqUneqWeaponsKT		= "Знімати/вдягати зброю перед/після контролю за таймером. Для надягання створіть компл. екіп. \"pve\". Для зняття не потрібний.",
	EqUneqWeaponsKT2	= "Знімати/вдягати зброю, коли контроль накладається на вас. \"pve\". Для зняття не потрібний.",
	RemoveBuffsOnMC		= "Знімати баффи, коли вас накладено заклинання $spell:28410. Кожен варіант є кумулятивним.",
	Gift				= "Зняти $spell:48469/$spell:48470. Мінімальний підхід для запобігання опору $spell:33786.",
	CCFree				= "+ Прибрати $spell:48169/$spell:48170. Врахування опорів заклинань школи Тіней.",
	ShortOffensiveProcs	= "+ Видаліть атакуючі заклинання з малою тривалістю. Рекомендується для безпеки рейду без шкоди для втрати рейду.",
	MostOffensiveBuffs	= "+ Заберіть більшість атакувальних бафів (переважно для кастерів і |cFFFF7C0Aдруїдів \"Сила звіра\"|r). Максимальна безпека рейду ціною втрати шкоди та потреби в самовідновленні/переміщенні!"
})

L:SetMiscLocalization({
	Yell		= "Соратники, слуги, солдати холодної пітьми! Коріться поклику Кел'Тузада!",
--	YellMC1		= "Теперь твоя душа связана с моей!",
--	YellMC2		= "Тебе не уйти!",
	Yell1Phase2	= "Молите о пощаде!", -- 12995
	Yell2Phase2	= "Кричите! Кричите изо всех сил!", -- 12996
	Yell3Phase2	= "Вы уже мертвы!", -- 12997
	YellPhase3	= "Господин, мне нужна помощь!", -- 12998
	YellGuardians	= "Хорошо. Воины ледяных пустошей, восстаньте! Повелеваю вам сражаться, убивать и умирать во имя своего повелителя! Не щадить никого!", -- 12994
	setMissing	= "УВАГА! DBM: автоматичне знімання/вдягання зброї не буде працювати доки ви не створите набір екіпіровки pve",
	EqUneqLineDescription	= "Автоматичне оснащення/зняття обладнання"
})
