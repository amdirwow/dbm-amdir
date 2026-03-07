if GetLocale() ~= "ruRU" then return end

local L

------------
-- Skeram --
------------
L = DBM:GetModLocalization("Skeram")

L:SetGeneralLocalization({
	name = "Пророк Скерам"
})

----------------
-- Three Bugs --
----------------
L = DBM:GetModLocalization("ThreeBugs")

L:SetGeneralLocalization({
	name = "Сімейство жуків"
})

L:SetMiscLocalization({
	Yauj = "Принцеса Яудж",
	Vem = "Вем",
	Kri = "Лорд Крі"
})

-------------
-- Sartura --
-------------
L = DBM:GetModLocalization("Sartura")

L:SetGeneralLocalization({
	name = "Бойовий страж Сартура"
})

--------------
-- Fankriss --
--------------
L = DBM:GetModLocalization("Fankriss")

L:SetGeneralLocalization({
	name = "Фанкріс Непохитний"
})

--------------
-- Viscidus --
--------------
L = DBM:GetModLocalization("Viscidus")

L:SetGeneralLocalization({
	name = "Нечистотон"
})

L:SetWarningLocalization({
	WarnFreeze	= "Заморожено: %d/3",
	WarnShatter	= "Розколотий: %d/3"
})

L:SetOptionLocalization({
	WarnFreeze	= "Оголошувати статус Заморозки",
	WarnShatter	= "Оголошувати статус Розколу"
})

L:SetMiscLocalization({
	Slow		= "уповільнюється!",
	Freezing	= "заморожується!",
	Frozen		= "застигає!",
	Phase4		= "починає розколюватись!",
	Phase5		= "ледве тримається!",
	Phase6		= "вибухає!",

	HitsRemain	= "Ударів Залишилось",
	Frost		= "Лід",
	Physical	= "Фізичні втрати"
})

-------------
-- Huhuran --
-------------
L = DBM:GetModLocalization("Huhuran")

L:SetGeneralLocalization({
	name = "Принцеса Хухуран"
})

---------------
-- Twin Emps --
---------------
L = DBM:GetModLocalization("TwinEmpsAQ")

L:SetGeneralLocalization({
	name = "Імператори-близнюки"
})

L:SetMiscLocalization({
	Veklor = "Імператор Век'лор",
	Veknil = "Імператор Век'нілаш"
})

------------
-- C'Thun --
------------
L = DBM:GetModLocalization("CThun")

L:SetGeneralLocalization({
	name = "К'Тун"
})

L:SetWarningLocalization({
	WarnEyeTentacle	= "Очний відросток",
	WarnClawTentacle2	= "Когтещупальце",
	WarnGiantEyeTentacle	= "Величезне окулясте щупальце",
	WarnGiantClawTentacle	= "Гігантський кігтещуп",
	WarnWeakened		= "К'Тун ослаблений!"
})

L:SetTimerLocalization({
	TimerEyeTentacle	= "Очний відросток",
	TimerGiantEyeTentacle	= "Величезне окулясте щупальце",
	TimerClawTentacle	= "Когтещупальце",
	TimerGiantClawTentacle	= "Гігантський кігтещуп",
	TimerWeakened		= "Ослаблений закінчений"
})

L:SetOptionLocalization({
	WarnEyeTentacle			= "Показувати попередження для Очного відростка",
	WarnClawTentacle2		= "Показувати попередження для Когтещупальця",
	WarnGiantEyeTentacle	= "Показувати попередження для Великого очуватого щупальця",
	WarnGiantClawTentacle	= "Показувати попередження для Гігантського кігтещупу",
	SpecWarnWeakened		= "Показувати спеціальне попередження, коли бос ослаблений",
	TimerEyeTentacle		= "Показувати таймер до наступного Очного відростка",
	TimerClawTentacle		= "Показувати таймер до наступного Когтещупальця",
	TimerGiantEyeTentacle	= "Показувати таймер до наступного Величезного окулястого щупальця",
	TimerGiantClawTentacle	= "Показувати таймер до наступного Гігантського кігтещупу",
	TimerWeakened			= "Показувати таймер тривалості ослаблення боса",
	RangeFrame				= "Показувати індикатор відстані (10)"
})

L:SetMiscLocalization({
	Stomach		= "Тварин",
	Eye			= "Око К'Туна",
	FleshTent	= "М'ясисте щупальце",--Localized so it shows on frame in users language, not senders
	Weakened	= "ослаблений!",
	NotValid	= "АК40 частково зачищений. %s необов'язкові боси залишилися."
})

----------------
-- Ouro --
----------------
L = DBM:GetModLocalization("Ouro")

L:SetGeneralLocalization({
	name = "Оуро"
})

L:SetWarningLocalization({
	WarnSubmerge		= "Закопування",
	WarnEmerge			= "Поява"
})

L:SetTimerLocalization({
	TimerSubmerge		= "Закопування",
	TimerEmerge			= "Поява"
})

L:SetOptionLocalization({
	WarnSubmerge		= "Показувати попередження про закапування",
	TimerSubmerge		= "Показувати таймер до закапування",
	WarnEmerge			= "Показувати попередження про появу",
	TimerEmerge			= "Показувати таймер до появи"
})

----------------
-- AQ40 Trash --
----------------
L = DBM:GetModLocalization("AQ40Trash")

L:SetGeneralLocalization({
	name = "АК40: Треш"
})
