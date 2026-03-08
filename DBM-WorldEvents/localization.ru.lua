if GetLocale() ~= "ruRU" then return end

local L

------------------------------
--  The Crown Chemical Co.  --
------------------------------
L = DBM:GetModLocalization("ApothecaryTrio")

L:SetGeneralLocalization({
	name = "Троє аптекарів"
})

L:SetTimerLocalization({
	HummelActive		= "Хаммел вступає у бій",
	BaxterActive		= "Бакстер вступає у бій",
	FryeActive			= "Фрай вступає у бій"
})

L:SetOptionLocalization({
	TrioActiveTimer		= "Відлік до вступу Трьох аптекарів у бій"
})

L:SetMiscLocalization({
	SayCombatStart		= "Тебе хоть сказали, кто я и чем занимаюсь?"
})

----------------------------
--  The Frost Lord Ahune  --
----------------------------
L = DBM:GetModLocalization("Ahune")

L:SetGeneralLocalization({
	name = "Ахун"
})

L:SetWarningLocalization({
--	Submerged		= "Ахун исчез",
	Emerged			= "Ахун з'явився",
	specWarnAttack	= "Ахун вразливий - атакуйте зараз!"
})

L:SetTimerLocalization({
	SubmergeTimer	= "Зникнення",
	EmergeTimer		= "Поява",
	TimerCombat		= "Початок бою"
})

L:SetOptionLocalization({
--	Submerged		= "Предупреждение, когда Ахун исчезает",
	Emerged			= "Попередження, коли Ахун з'являється",
	specWarnAttack	= "Спец-попередження, коли Ахун стає вразливим",
	SubmergeTimer	= "Відлік до зникнення",
	EmergeTimer		= "Відлік до появи",
	TimerCombat		= "Відлік до початку бою",
})

L:SetMiscLocalization({
	Pull			= "Камень Льда растаял!"
})

----------------------
--  Coren Direbrew  --
----------------------
L = DBM:GetModLocalization("CorenDirebrew")

L:SetGeneralLocalization({
	name = "Корен Худовар"
})

L:SetWarningLocalization({
	specWarnBrew		= "Позбудьтеся варити, перш ніж вона кине вам інше!",
	specWarnBrewStun	= "ПОРАДА: Ви отримали удар, не забудьте випити варево наступного разу!"
})

L:SetOptionLocalization({
	specWarnBrew		= "Спец-попередження для $spell:47376",
	specWarnBrewStun	= "Спец-попередження для $spell:47340",
})

L:SetMiscLocalization({
	YellBarrel			= "Бочка на мені!"
})

-----------------------------
--  The Headless Horseman  --
-----------------------------
L = DBM:GetModLocalization("HeadlessHorseman")

L:SetGeneralLocalization({
	name = "Вершник без голови"
})

L:SetWarningLocalization({
	WarnPhase				= "Фаза %d",
	warnHorsemanSoldiers	= "Заклик Пульсуючих гарбузів",
	warnHorsemanHead		= "З'явилась голова вершника!",
	specWarnHorsemanHead	= "Вихор - перейдіть на голову"
})

L:SetOptionLocalization({
	WarnPhase				= "Попередження про зміну фаз",
	warnHorsemanSoldiers	= "Попереджати про заклик Пульсуючих гарбузів",
	warnHorsemanHead		= "Спец-попередження про появу голови вершника",
	specWarnHorsemanHead	= "Спец-попередження для Вихря (заклик 2-ої та наступної голови)"
})

L:SetMiscLocalization({
	HorsemanSummon			= "Всадник встает…",
	HorsemanHead			= "Не надоело еще убегать?",
	HorsemanSoldiers		= "Восстаньте слуги, устремитесь в бой! Пусть павший рыцарь обретет покой!",
	SayCombatEnd			= "Со смертью мы давно уже друзья...Что ждет теперь на пустоши меня?"
})
