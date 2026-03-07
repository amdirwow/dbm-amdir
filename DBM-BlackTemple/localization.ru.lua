if GetLocale() ~= "ruRU" then return end
local L

-----------------
--  Najentus  --
-----------------
L = DBM:GetModLocalization("Najentus")

L:SetGeneralLocalization({
	name = "Верховний Полководець Надджентус"
})

L:SetOptionLocalization({
	RangeFrame	= "Show range frame (10)"--Translate
})

----------------
-- Supremus --
----------------
L = DBM:GetModLocalization("Supremus")

L:SetGeneralLocalization({
	name = "Супремус"
})

L:SetWarningLocalization({
	WarnPhase		= "%s Phase",--Translate
	WarnPhaseSoon	= "%s Phase in 10",--Translate
	WarnKite		= "Gaze on >%s<"--Translate
})

L:SetTimerLocalization({
	TimerPhase		= "Next %s phase"--Translate
})

L:SetOptionLocalization({
	WarnPhase		= "Show warning for next phase",--Translate
	WarnPhaseSoon	= "Show pre-warning for next phase",--Translate
	WarnKite		= "Announce Kite targets",--Translate
	TimerPhase		= "Show time for next phase",--Translate
	KiteIcon		= "Set icon on Kite target",--Translate
	KiteWhisper		= "Send whisper to Kite target (requires Raid Leader)"--Translate
})

L:SetMiscLocalization({
	PhaseTank		= "у гніві вдаряє по землі!",--Check if Backwards
	PhaseKite		= "Земля починає розколюватись!",--Check if Backwards
	ChangeTarget	= "атакує нову мету!",
	Kite			= "Kite",--Translate
	Tank			= "Tank"--Translate
})

-------------------------
--  Shape of Akama  --
-------------------------
L = DBM:GetModLocalization("Akama")

L:SetGeneralLocalization({
	name = "Тінь Аками"
})

-------------------------
--  Teron Gorefiend  --
-------------------------
L = DBM:GetModLocalization("TeronGorefiend")

L:SetGeneralLocalization({
	name = "Терон Кровожер"
})

L:SetTimerLocalization({
	TimerVengefulSpirit		= "Ghost : %s"--Translate
})

L:SetOptionLocalization({
	TimerVengefulSpirit		= "Show timer for Ghost durations"--Translate
})

----------------------------
--  Gurtogg Bloodboil  --
----------------------------
L = DBM:GetModLocalization("Bloodboil")

L:SetGeneralLocalization({
	name = "Гуртогг Кипляча Кров"
})

L:SetWarningLocalization({
	WarnRageEnd		= "Fel Rage End",--Translate
})

L:SetTimerLocalization({
	TimerRageEnd	= "Fel Rage End"--Translate
})

L:SetOptionLocalization({
	WarnRageEnd		= "Show warning for $spell:40604 ends",--Translate
	TimerRageEnd	= "Show timer for $spell:40604 ends"--Translate
})

--------------------------
--  Essence Of Souls  --
--------------------------
L = DBM:GetModLocalization("Souls")

L:SetGeneralLocalization({
	name = "Втілення Душ"
})

L:SetWarningLocalization({
	WarnEnrage		= "Озвірення",
	WarnEnrageSoon	= "Озвіріння скоро",
	WarnEnrageEnd	= "Озвір закінчився",
	WarnMana		= "Нуль мани через 30 с"
})

L:SetTimerLocalization({
	TimerEnrage		= "Озвірення",
	TimerNextEnrage	= "Next Озвірення",--Translate
	TimerMana		= "Mana 0"--Translate
})

L:SetOptionLocalization({
	WarnEnrage		= "Show warning for Enrage",--Translate
	WarnEnrageSoon	= "Show pre-warning for Enrage",--Translate
	WarnEnrageEnd	= "Show warning when Enrage ends",--Translate
	WarnMana		= "Show warning from zero mana in Phase 2",--Translate
	TimerEnrage		= "Show timer for Enrage",--Translate
	TimerNextEnrage	= "Show timer for next Enrage",--Translate
	TimerMana		= "Show timer for zero mana in Phase 2",--Translate
	SpiteWhisper	= "Send whisper to $spell:41376 targets (requires Raid Leader)"--Translate
})

L:SetMiscLocalization({
	Enrage			= "%s впадає в лють!",
	SpiteWhisper	= "Злість на Вас!",
	Suffering		= "Essence of Suffering",--Translate
	Desire			= "Essence of Desire",--Translate
	Anger			= "Essence of Anger"--Translate
})

-----------------------
--  Mother Shahraz --
-----------------------
L = DBM:GetModLocalization("Shahraz")

L:SetGeneralLocalization({
	name = "Матінка Шахраз"
})

----------------------
--  Illidari Council  --
----------------------
L = DBM:GetModLocalization("Council")

L:SetGeneralLocalization({
	name = "Порада Іллідарі"
})

L:SetWarningLocalization({
	WarnFadeSoon	= "Vanish fades in 5 sec",--Translate
	WarnFaded		= "Vanish faded",--Translate
	WarnDevAura		= "Devotion Aura for 30 sec",--Translate
	WarnResAura		= "Resistance Aura for 30 sec",--Translate
	Immune			= "Malande - %s immune for 15 sec"--Translate
})

L:SetOptionLocalization({
	WarnFadeSoon	= "Show warning 5 seconds before $spell:41476 fades",--Translate
	WarnFaded		= "Show warning when $spell:41476 fades",--Translate
	WarnDevAura		= "Show warning for $spell:41452",--Translate
	WarnResAura		= "Show warning for $spell:41453",--Translate
	Immune			= "Show warning when Manalde becomes spell or melee immune"--Translate
})

L:SetMiscLocalization({
	Gathios			= "Гатіос Ізувер",
	Malande			= "Леді Маланда",
	Zerevor			= "Верховний пустомант Зеревор",
	Veras			= "Верас Глибокий Морок",
	Melee			= "Melee",--Translate
	Spell			= "Spell",--Translate
	PoisonWhisper	= "Deadly Poison on you!"--Translate
})

-------------------------
--  Illidan Stormrage --
-------------------------
L = DBM:GetModLocalization("Illidan")

L:SetGeneralLocalization({
	name = "Іллідан Лють Бурі"
})

L:SetWarningLocalization({
	WarnPhase2Soon	= "Фаза 2 скоро",
	WarnPhase4Soon	= "Фаза 4 скоро",
	WarnHuman		= "Звичайна Фаза",
	WarnHumanSoon	= "Звичайна Фаза скоро",
	WarnDemon		= "Демона Фаза",
	WarnDemonSoon	= "Демона Фаза скоро"
})

L:SetTimerLocalization({
	TimerNextHuman		= "Next Звичайна Фаза",--Translate
	TimerNextDemon		= "Next Демона Фаза"--Translate
})

L:SetOptionLocalization({
	WarnPhase2Soon	= "Show pre-warning for Phase 2 transition (at ~75%)",--Translate
	WarnPhase4Soon	= "Show pre-warning for Phase 4 transition (at ~35%)",--Translate
	WarnHuman		= "Show warning for Human Phase",--Translate
	WarnHumanSoon	= "Show pre-warning for Human Phase",--Translate
	WarnDemon		= "Show warning for Demon Phase",--Translate
	WarnDemonSoon	= "Show pre-warning for Demon Phase",--Translate
	TimerNextHuman	= "Show time for Next Human Phase",--Translate
	TimerNextDemon	= "Show time for Demon Human Phase",--Translate
	RangeFrame		= "Show range frame (10 yards) in Phase 3 and 4"--Translate
})

L:SetMiscLocalization({
	Pull			= "Акама! Твоя байдужість мене не дивує. Мені давно варто було знищити тебе і твоїх потворних побратимів.",
	Eyebeam			= "Подивися на очі Зрадника!",
	Demon			= "Побачте міць демона!",
	Phase4			= "Це все смертні? Це і є вся ваша лють?",
	S1YouAreNotPrepared	= "Stage One: You Are Not Prepared",
	S2FlamesOfAzzinoth	= "Stage Two: Flames of Azzinoth",
	S3TheDemonWithin	= "Stage Three: The Demon Within",
	S4TheLongHunt		= "Stage Four: The Long Hunt"
})
