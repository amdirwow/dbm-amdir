if GetLocale() ~= "ruRU" then return end

local L

-------------------
--  Venoxis  --
-------------------
L = DBM:GetModLocalization("Venoxis")

L:SetGeneralLocalization({
	name = "Верховний жрець Венокіс"
})

-------------------
--  Jeklik  --
-------------------
L = DBM:GetModLocalization("Jeklik")

L:SetGeneralLocalization({
	name = "Верховна жриця Джеклік"
})

-------------------
--  Marli  --
-------------------
L = DBM:GetModLocalization("Marli")

L:SetGeneralLocalization({
	name = "Верховна жриця Мар'лі"
})

-------------------
--  Thekal  --
-------------------
L = DBM:GetModLocalization("Thekal")

L:SetGeneralLocalization({
	name = "Верховний жрець Текал"
})

L:SetWarningLocalization({
	WarnSimulKill	= "Перший адд упав - воскресіння через ~15 сек."
})

L:SetTimerLocalization({
	TimerSimulKill	= "Воскресіння"
})

L:SetOptionLocalization({
	WarnSimulKill	= "Оголошувати про смерть першого пекла",
	TimerSimulKill	= "Показувати час до воскресіння жерця"
})

L:SetMiscLocalization({
	PriestDied	= "%s умирает.",
	YellPhase2	= "Ширвалла, наполни меня своим ГНЕВОМ!",
	YellKill	= "Хаккар больше не властен надо мной! Наконец-то я обрел покой!",
	Thekal		= "Верховний жрець Текал",
	Zath		= "Ревнитель Зат",
	LorKhan		= "Ревнитель Лор'Кхан"
})

-------------------
--  Arlokk  --
-------------------
L = DBM:GetModLocalization("Arlokk")

L:SetGeneralLocalization({
	name = "Верховна жриця Арлокк"
})

-------------------
--  Hakkar  --
-------------------
L = DBM:GetModLocalization("Hakkar")

L:SetGeneralLocalization({
	name = "Хаккар"
})

-------------------
--  Bloodlord  --
-------------------
L = DBM:GetModLocalization("Bloodlord")

L:SetGeneralLocalization({
	name = "Мандокір Володар Крові"
})

L:SetMiscLocalization({
	Bloodlord	= "Мандокір Володар Крові",
	Ohgan		= "Охган",
	GazeYell	= "Я за тобой слежу"
})

-------------------
--  Edge of Madness  --
-------------------
L = DBM:GetModLocalization("EdgeOfMadness")

L:SetGeneralLocalization({
	name = "Грань Безумства"
})

L:SetMiscLocalization({
	Hazzarah = "Хазза'рах",
	Renataki = "Ренатаки",
	Wushoolay = "Вушулай",
	Grilek = "Грилек"
})

-------------------
--  Gahz'ranka  --
-------------------
L = DBM:GetModLocalization("Gahzranka")

L:SetGeneralLocalization({
	name = "Газ'ранка"
})

-------------------
--  Jindo  --
-------------------
L = DBM:GetModLocalization("Jindo")

L:SetGeneralLocalization({
	name = "Майстер прокляття Джин'до"
})
