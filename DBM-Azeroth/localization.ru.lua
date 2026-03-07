if GetLocale() ~= "ruRU" then return end
 local L

-- Azuregos (Azshara)
L = DBM:GetModLocalization("Azuregos")

L:SetGeneralLocalization({
	name = "Азурегос"
})

L:SetMiscLocalization({
	Pull		= "Це місце під моїм захистом. Таємні містерії залишаться неоскверненими."
})

-- Taerar (Ashenvale)
L = DBM:GetModLocalization("Taerar")

L:SetGeneralLocalization({
	name = "Таерар"
})

L:SetMiscLocalization({
	Pull		= "Світ – це лише швидкоплинний сон. Нехай править КОШМАР!"
})

-- Ysondre (Feralas)
L = DBM:GetModLocalization("Ysondre")

L:SetGeneralLocalization({
	name = "Ісондра"
})

L:SetMiscLocalization({
	Pull		= "Нитки ЖИТТЯ розірвані! Помстимося за Сплячих!"
})

-- Lethon (Hinterlands)
L = DBM:GetModLocalization("Lethon")

L:SetGeneralLocalization({
	name = "Летон"
})

L:SetMiscLocalization({
	Pull		= "Я відчуваю ТІНЬ, що нависла над вашими серцями. Нечестивцям не буде спокою!"
})

-- Emeriss (Duskwood)
L = DBM:GetModLocalization("Emeriss")

L:SetGeneralLocalization({
	name = "Емеріс"
})

L:SetMiscLocalization({
	Pull		= "Надія – це ХВОРОБА душі! Ця земля зачахне та помре!"
})
