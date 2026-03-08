if GetLocale() ~= "ruRU" then return end
local L

---------------
--  Nalorakk --
---------------
L = DBM:GetModLocalization("Nalorakk")

L:SetGeneralLocalization({
	name = "Налорак"
})

L:SetWarningLocalization({
	WarnBear		= "Форма ведмедя",
	WarnBearSoon	= "Форма ведмедя за 5 секунд",
	WarnNormal		= "Звичайна форма",
	WarnNormalSoon	= "Звичайна форма через 5 секунд"
})

L:SetTimerLocalization({
	TimerBear		= "Форма ведмедя",
	TimerNormal		= "Звичайна форма"
})

L:SetOptionLocalization({
	WarnBear		= "Show warning for Bear form",--Translate
	WarnBearSoon	= "Show pre-warning for Bear form",--Translate
	WarnNormal		= "Show warning for Normal form",--Translate
	WarnNormalSoon	= "Show pre-warning for Normal form",--Translate
	TimerBear		= "Show timer for Bear form",--Translate
	TimerNormal		= "Show timer for Normal form"--Translate
})

L:SetMiscLocalization({
	YellPull	= "Вперед, стражники! Начнем резню!",
	YellBear	= "Если вызвать чудовище, то мало не покажется, точно говорю!",
	YellNormal	= "Пропустите Налоракка!"
})

---------------
--  Akil'zon --
---------------
L = DBM:GetModLocalization("Akilzon")

L:SetGeneralLocalization({
	name = "Акіл'зон"
})
L:SetTimerLocalization({
    TimerStorm = "електрична буря"
})
L:SetMiscLocalization({
	YellPull	= "Я – мисливець! Ви – видобуток!",
})

---------------
--  Jan'alai --
---------------
L = DBM:GetModLocalization("Janalai")

L:SetGeneralLocalization({
	name = "Джан'алаї"
})

L:SetMiscLocalization({
	YellPull	= "Духи вітру стануть вашою смертю!",
	YellBomb	= "Сгиньте в огне!",
	YellAdds	= "Где мои Наседки? Пора за яйца приниматься!"
})

--------------
--  Halazzi --
--------------
L = DBM:GetModLocalization("Halazzi")

L:SetGeneralLocalization({
	name = "Халаззі"
})

L:SetWarningLocalization({
	WarnSpirit	= "Закликає дух",
	WarnNormal	= "Дух зникає"
})

L:SetOptionLocalization({
	WarnSpirit	= "Show warning for Spirit phase",--Translate
	WarnNormal	= "Show warning for Normal phase"--Translate
})

L:SetMiscLocalization({
	YellPull	= "На коліна!! Схилиться перед іклом і пазуром!",
	YellSpirit	= "Со мною дикий дух...",
	YellNormal	= "О дух, повернися до мене!"
})

--------------------------
--  Hex Lord Malacrass --
--------------------------
L = DBM:GetModLocalization("Malacrass")

L:SetGeneralLocalization({
	name = "Повелитель прокляття Малакрасс"
})

L:SetMiscLocalization({
	YellPull	= "На вас впаде тінь..."
})

--------------
--  Zul'jin --
--------------
L = DBM:GetModLocalization("ZulJin")

L:SetGeneralLocalization({
	name = "Зул'джин"
})

L:SetMiscLocalization({
--	YellPull	= "Nobody badduh dan me!",
	YellPhase2	= "Выучил новый фокус… прямо как братишка-медведь...",
	YellPhase3	= "От орла нигде не скрыться!",
	YellPhase4	= "Позвольте представить моих двух братцев: клык и коготь!",
	YellPhase5	= "Для того чтобы увидеть дракондора, в небо смотреть необязательно!"
})
