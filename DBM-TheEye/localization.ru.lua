if GetLocale() ~= "ruRU" then return end

local L

-----------
--  Alar --
-----------
L = DBM:GetModLocalization("Alar")

L:SetGeneralLocalization({
	name = "Алар"
})

L:SetTimerLocalization({
	NextPlatform	= "Наступна платформа"
})

L:SetOptionLocalization({
	NextPlatform	= "Показувати таймер, коли Алар змінює платформу"
})

------------------
--  Void Reaver --
------------------
L = DBM:GetModLocalization("VoidReaver")

L:SetGeneralLocalization({
	name = "Страж Безодні"
})

--------------------------------
--  High Astromancer Solarian --
--------------------------------
L = DBM:GetModLocalization("Solarian")

L:SetGeneralLocalization({
	name = "Верховний звіздар Соларіан"
})

L:SetWarningLocalization({
	WarnSplit		= "*** Поплічники на підході ***",
	WarnSplitSoon	= "*** Поділ через 5 секунд ***",
	WarnAgent		= "*** Посібники з'явилися ***",
	WarnPriest		= "*** Жерці та Соларіан з'явилися ***"

})

L:SetTimerLocalization({
	TimerSplit		= "Поділ",
	TimerAgent		= "Посібники",
	TimerPriest		= "Жерці та Соларіан"
})

L:SetOptionLocalization({--Translate
	WarnSplit		= "Show warning for Split",
	WarnSplitSoon	= "Show pre-warning for Split",
	WarnAgent		= "Show warning for Agents spawn",
	WarnPriest		= "Show warning for Priests and Solarian spawn",
	TimerSplit		= "Show timer for Split",
	TimerAgent		= "Show timer for Agents spawn",
	TimerPriest		= "Show timer for Priests and Solarian spawn",
	WrathWhisper	= "Повідомити пошепки цілі, якщо Гнів на ньому"
})

L:SetMiscLocalization({
	WrathWhisper	= "Гнів на вас!",
	YellSplit1		= "Я назавжди позбавлю вас манії величі!",
	YellSplit2		= "Ви безнадійно слабкі!",
	YellPhase2		= "Я зіллюся... з БЕЗДНІЙ!"
})

---------------------------
--  Kael'thas Sunstrider --
---------------------------
L = DBM:GetModLocalization("KaelThas")

L:SetGeneralLocalization({
	name = "Кель'тас Сонячний Шкілец"
})

L:SetWarningLocalization({
	WarnGaze		= "*** Таладред кидає погляд на >%s< ***",
	WarnMobDead		= "%s down",--Translate
	WarnEgg			= "*** Фенікс убитий – з'являється яйце ***",
	SpecWarnGaze	= "Біжіть!",
	SpecWarnEgg		= "*** Фенікс убитий – з'являється яйце ***"
})

L:SetTimerLocalization({
	TimerPhase		= "Наступна Фаза",
	TimerPhase1mob	= "%s",
	TimerNextGaze	= "Відновлення погляду",
	TimerRebirth	= "Відродження"
})

L:SetOptionLocalization({--Translate
	WarnGaze		= "Show warning for Thaladred's Gaze target",
	WarnMobDead		= "Show warning for Phase 2 mob down",
	WarnEgg			= "Show warning when Phoenix Egg spawn",
	SpecWarnGaze	= "Show special warning when Gaze on you",
	SpecWarnEgg		= "Show special warning when Phoenix Egg spawn",
	TimerPhase		= "Show time for next phase",
	TimerPhase1mob	= "Show time for Phase 1 mob active",
	TimerNextGaze	= "Show timer for Thaladred's Gaze target changes",
	TimerRebirth	= "Show timer for Phoenix Egg rebirth remaining",
	RangeFrame		= "Контрольне вікно придільної дистанції",
	GazeWhisper		= "Повідомити пошепки цілі, якщо Таладред на ньому",
	GazeIcon		= "Встановити мітку на мету Таладред"
})

L:SetMiscLocalization({
--	YellPull1	= "Энергия. Сила. Мои люди без них не могут... Эта зависимость возникла после уничтожения Солнечного Колодца. Добро пожаловать... в будущее. Мне очень жаль, но вы не сможете ничего изменить. Теперь меня никто не остановит! Селама ашаль-аноре!",
	YellPhase2	= "Як бачите, зброї у мене достатньо...",
	YellPhase3	= "Можливо, я вас недооцінив. Було б несправедливо змушувати вас битися з чотирма радниками одразу, але... Мої люди теж ніколи не знали справедливості. Я лише повертаю борг.",
	YellPhase4	= "На жаль, іноді доводиться брати все у свої руки. Баламоре шаналь!",
	YellPhase5	= "Я не потім ступив на цей шлях, щоб зупинитися на півдорозі! Мої плани повинні здійснитися і вони здійсняться! Побачте ж справжню міць!",
	YellSang	= "Ви впоралися з моїми найкращими радниками... Але перед силою Кривавого Молота ніхто не встоїть. Побачте лорда Сангвінара!",
	YellCaper	= "Каперніан простежить, щоб ви не затрималися надовго.",
	YellTelo	= "Непогано, тепер ви можете потягатися з головним інженером Телонікусом.",
	EmoteGaze	= "дивиться на ([^%s]+)!",
	GazeWhisper	= "Таладред кидає погляд на ВАС! Біжіть!",
	Thaladred	= "Таладред Світлорад",
	Sanguinar	= "Лорд Сангвінар",
	Capernian	= "Великий Звездочет Каперніан",
	Telonicus	= "Старший інженер Телонікус",
	Bow			= "Довга цибуля Краю Порожнечі",
	Axe			= "Скруха",
	Mace		= "Вселенський натхненник",
	Dagger		= "Клинки Нескінченності",
	Sword		= "Астральний тесак",
	Shield		= "Фазовий щит",
	Staff		= "Посох Розпорошення",
	Egg			= "Яйце фенікса"
})
