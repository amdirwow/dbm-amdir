if GetLocale() ~= "ruRU" then return end

local L

------------------------
--  Rage Winterchill  --
------------------------
L = DBM:GetModLocalization("Rage")

L:SetGeneralLocalization({
	name = "Лютий Холод"
})

-----------------
--  Anetheron  --
-----------------
L = DBM:GetModLocalization("Anetheron")

L:SetGeneralLocalization({
	name = "Анетерон"
})

----------------
--  Kazrogal  --
----------------
L = DBM:GetModLocalization("Kazrogal")

L:SetGeneralLocalization({
	name = "Каз'рогал"
})

---------------
--  Azgalor  --
---------------
L = DBM:GetModLocalization("Azgalor")

L:SetGeneralLocalization({
	name = "Азгалор"
})

------------------
--  Archimonde  --
------------------
L = DBM:GetModLocalization("Archimonde")

L:SetGeneralLocalization({
	name = "Архімонд"
})

----------------
-- WaveTimers --
----------------
L = DBM:GetModLocalization("HyjalWaveTimers")

L:SetGeneralLocalization({
	name		= "Треш-моби"
})

L:SetWarningLocalization({
	WarnWave	= "%s",
	WarnWaveSoon= "Незабаром наступна хвиля"
})

L:SetTimerLocalization({
	TimerWave	= "Наступна хвиля"
})

L:SetOptionLocalization({
	WarnWave		= "Warn when a new wave is incoming",--Translate
	WarnWaveSoon	= "Warn when a new wave is incoming soon",--Translate
	DetailedWave	= "Detailed warning when a new wave is incoming (which mobs)",--Translate
	TimerWave		= "Show a timer for next wave"--Translate
})

L:SetMiscLocalization({
	HyjalZoneName	= "Вершина Хіджала",
	Thrall			= "Трал",
	Jaina			= "Леді Джайна Праудмур",
	RageWinterchill	= "Лютий Холод",
	Anetheron		= "Анетерон",
	Kazrogal		= "Каз'рогал",
	Azgalor			= "Азгалор",
	WaveCheck		= "Поточна атака: (%d+) з 8",
	WarnWave_0		= "Хвиля %s/8",
	WarnWave_1		= "Хвиля %s/8 - %s %s",
	WarnWave_2		= "Хвиля %s/8 - %s %s та %s %s",
	WarnWave_3		= "Хвиля %s/8 - %s %s, %s %s та %s %s",
	WarnWave_4		= "Хвиля %s/8 - %s %s, %s %s, %s %s та %s %s",
	WarnWave_5		= "Хвиля %s/8 - %s %s, %s %s, %s %s, %s %s та %s %s",
	RageGossip		= "Мої супутники і я з вами, леді Праудмур.",
	AnetheronGossip	= "Ми готові зустріти будь-кого, кого надішле Архімонд, леді Праудмур.",
	KazrogalGossip	= "Я з тобою, Трал.",
	AzgalorGossip	= "Нам нема чого боятися.",
	Ghoul			= "Вовкулака",
	Abomination		= "Поганіща",
	Necromancer		= "Некроманта",
	Banshee			= "Банші",
	Fiend			= "Некрорахніда",
	Gargoyle		= "Горгульї",
	Wyrm			= "Крижаний змій",
	Stalker			= "Ловчих Скверни",
	Infernal		= "Інферналу"
})
