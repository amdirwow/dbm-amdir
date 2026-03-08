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
	Wave12Alt	= "Раджакс, напомни, когда я в последний раз обещал тебя убить?",
	Wave3		= "Час возмездия близок! Да охватит мрак сердца наших врагов!",
	Wave4		= "Мы не будем больше ждать за закрытыми дверьми и каменными стенами! Мы не будем больше отказываться от возмездия! Даже драконы содрогнутся перед нашим гневом!",
	Wave5		= "Пусть наши враги трепещут! Смерть им!",
	Wave6		= "Олений Шлем будет скулить и молить о пощаде, в точности как его сопливый сынок! Тысячелетняя несправедливость сегодня закончится!",
	Wave7		= "Фэндрал! Твой час пробил! Иди же, прячься в изумрудном сне и молись, чтобы мы до тебя не добрались!",
	Wave8		= "Настырная тварь! Я сам тебя убью!"
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
	PursueEmote	= "%s смотрит на"
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
