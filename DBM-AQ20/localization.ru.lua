if GetLocale() ~= "ruRU" then return end

local L

---------------
-- Kurinnaxx --
---------------
L = DBM:GetModLocalization("Kurinnaxx")

L:SetGeneralLocalization({
	name		= "Курінакс"
})

------------
-- Rajaxx --
------------
L = DBM:GetModLocalization("Rajaxx")

L:SetGeneralLocalization({
	name		= "Генерал Раджакс"
})

L:SetWarningLocalization({
	WarnWave	= "Хвиля %s",
})

L:SetOptionLocalization({
	WarnWave	= "Показувати попередження про наступну хвилю"
})

L:SetMiscLocalization({
	Wave1		= "Вони прийшли. Постарайся не дати себе вбити,",
	Wave12Alt	= "Раджакс, нагадай, коли я востаннє обіцяв тебе вбити?",
	Wave3		= "Година відплати близька! Хай охопить морок серця наших ворогів!",
	Wave4		= "Ми не будемо більше чекати за зачиненими дверима та кам'яними стінами! Ми не будемо більше відмовлятися від відплати! Навіть дракони здригнуться перед нашим гнівом!",
	Wave5		= "Нехай наші вороги тремтять! Смерть їм!",
	Wave6		= "Оленів Шолом скиглитиме і благатиме про пощаду, точно як його сопливий синок! Тисячолітня несправедливість сьогодні скінчиться!",
	Wave7		= "Феддрал! Твій час пробив! Іди ж, ховайся у смарагдовому сні і молись, щоб ми до тебе не дісталися!",
	Wave8		= "Настирна тварюка! Я сам тебе вб'ю!"
})

----------
-- Moam --
----------
L = DBM:GetModLocalization("Moam")

L:SetGeneralLocalization({
	name		= "Моам"
})

----------
-- Buru --
----------
L = DBM:GetModLocalization("Buru")

L:SetGeneralLocalization({
	name		= "Буру Ненаситний"
})

L:SetWarningLocalization({
	WarnPursue		= "Переслідує >%s<",
	SpecWarnPursue	= "Переслідує вас!",
	WarnDismember	= "%s на >%s< (%s)"
})

L:SetOptionLocalization({
	WarnPursue		= "Називати цілі, що переслідуються",
	SpecWarnPursue	= "Показувати спеціальне попередження, коли переслідування на вас",
	WarnDismember	= DBM_CORE_L.AUTO_ANNOUNCE_OPTIONS.spell:format(96)
})

L:SetMiscLocalization({
	PursueEmote	= "%s дивиться на"
})

-------------
-- Ayamiss --
-------------
L = DBM:GetModLocalization("Ayamiss")

L:SetGeneralLocalization({
	name		= "Аяміса Мисливця"
})

--------------
-- Ossirian --
--------------
L = DBM:GetModLocalization("Ossirian")

L:SetGeneralLocalization({
	name		= "Оссіріан Неуразливий"
})

L:SetWarningLocalization({
	WarnVulnerable	= "%s"
})

L:SetTimerLocalization({
	TimerVulnerable	= "%s"
})

L:SetOptionLocalization({
	WarnVulnerable	= "Оголошувати слабкість",
	TimerVulnerable	= "Показувати таймер до слабкості"
})

----------------
-- AQ20 Trash --
----------------
L = DBM:GetModLocalization("AQ20Trash")

L:SetGeneralLocalization({
	name = "АК20: Треш"
})
