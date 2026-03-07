if GetLocale() ~= "ruRU" then return end

local L

--Attumen
L = DBM:GetModLocalization("Attumen")

L:SetGeneralLocalization({
	name = "Ловчий Атумен"
})



--Moroes
L = DBM:GetModLocalization("Moroes")

L:SetGeneralLocalization({
	name = "Мороуз"
})

L:SetWarningLocalization({
	DBM_MOROES_VANISH_FADED	= "Зникнення розсіюється"
})

L:SetOptionLocalization({
	DBM_MOROES_VANISH_FADED	= "Показувати попередження розсіювання зникнення"
})

-- Maiden of Virtue
L = DBM:GetModLocalization("Maiden")

L:SetGeneralLocalization({
	name = "Благочестива діва"
})

-- Romulo and Julianne
L = DBM:GetModLocalization("RomuloAndJulianne")

L:SetGeneralLocalization({
	name = "Ромуло та Джуліанна"
})

L:SetMiscLocalization({
	Event				= "Сьогодні... ми побачимо історію кохання!",
	RJ_Pull				= "Що ти за диявол, що мене так мучиш?",
	DBM_RJ_PHASE2_YELL	= "Прийди ж, ласкава ніч, поверни мені мого Ромуло!",
	Romulo				= "Ромуло",
	Julianne			= "Джуліанна"
})

-- Big Bad Wolf
L = DBM:GetModLocalization("BigBadWolf")

L:SetGeneralLocalization({
	name = "Злий і страшний сірий вовк"
})



L:SetMiscLocalization({
	DBM_BBW_YELL_1			= "Ким би мені тут закусити?"
})

-- Wizard of Oz
L = DBM:GetModLocalization("Oz")

L:SetGeneralLocalization({
	name = "Країна Оз"
})

L:SetWarningLocalization({
	DBM_OZ_WARN_TITO		= "Тіто",
	DBM_OZ_WARN_ROAR		= "Реготун",
	DBM_OZ_WARN_STRAWMAN	= "Балбес",
	DBM_OZ_WARN_TINHEAD		= "Мідноголовий",
	DBM_OZ_WARN_CRONE		= "Відьма"
})

L:SetTimerLocalization({
	DBM_OZ_WARN_TITO		= "Тіто",
	DBM_OZ_WARN_ROAR		= "Реготун",
	DBM_OZ_WARN_STRAWMAN	= "Балбес",
	DBM_OZ_WARN_TINHEAD		= "Мідноголовий"
})

L:SetOptionLocalization({
	AnnounceBosses			= "Показувати попередження появи боса",
	ShowBossTimers			= "Показувати таймер появи боса"
})

L:SetMiscLocalization({
	DBM_OZ_YELL_DOROTHEE	= "Тіто, ми просто повинні знайти дорогу додому! Старий чарівник – наша єдина надія. Палохало, Ричун, Нержавію, ви... ой, до нас хтось прийшов!",
	DBM_OZ_YELL_ROAR		= "Я вас не боюсь! Зовсім! Хочете боротися? Бажаєте, так? Ну ж! Я битимуся, навіть якщо мені зв'яжуть лапи за спиною!",
	DBM_OZ_YELL_STRAWMAN	= "І що мені з вами робити? Ніяк не розумію.",
	DBM_OZ_YELL_TINHEAD		= "Мені дуже потрібне серце. Може, забрати твоє?",
	DBM_OZ_YELL_CRONE		= "Горе вам, усім і кожному, мої крихти!"
})

-- Curator
L = DBM:GetModLocalization("Curator")

L:SetGeneralLocalization({
	name = "Доглядач"
})

L:SetWarningLocalization({
	warnAdd		= "Адд з'явився"
})

L:SetOptionLocalization({
	warnAdd		= "Показувати попередження коли адд з'явився"
})

-- Terestian Illhoof
L = DBM:GetModLocalization("TerestianIllhoof")

L:SetGeneralLocalization({
	name = "Терестіан Хворе Копито"
})

L:SetMiscLocalization({
	Kilrek					= "Кіл'рек",
	DChains					= "Демонічні ланцюги"
})

-- Shade of Aran
L = DBM:GetModLocalization("Aran")

L:SetGeneralLocalization({
	name = "Тінь Арана"
})

L:SetWarningLocalization({
	DBM_ARAN_DO_NOT_MOVE	= "Вінець полум'я - Не рушайте!"
})

L:SetTimerLocalization({
	timerSpecial			= "Особлива здатність КД"
})

L:SetOptionLocalization({
	timerSpecial			= "Показувати таймер перезаряджання особливої здатності",
	DBM_ARAN_DO_NOT_MOVE	= "Показувати особливе попередження $spell:30004"
})

--Netherspite
L = DBM:GetModLocalization("Netherspite")

L:SetGeneralLocalization({
	name = "Гнів Пустоти"
})

L:SetWarningLocalization({
	warningPortal			= "Фаза Порталів",
	warningBanish			= "Фаза Вигнання"
})

L:SetTimerLocalization({
	timerPortalPhase	= "Фаза Порталів закінчується",
	timerBanishPhase	= "Фаза Вигнання закінчується"
})

L:SetOptionLocalization({
	warningPortal			= "Показувати попередження для Фази Порталів",
	warningBanish			= "Показувати попередження для Фази Вигнання",
	timerPortalPhase		= "Показувати таймер тривалості Фази Порталів",
	timerBanishPhase		= "Показувати таймер тривалості Фази Вигнання"
})

L:SetMiscLocalization({
	DBM_NS_EMOTE_PHASE_2	= "%s впадає в граничну лють!",
	DBM_NS_EMOTE_PHASE_1	= "%s видає крик, відступаючи, відкриваючи шлях Порожнечі."
})

--Chess
L = DBM:GetModLocalization("Chess")

L:SetGeneralLocalization({
	name = "Шахи"
})

L:SetTimerLocalization({
	timerCheat	= "Шахрайство КД"
})

L:SetOptionLocalization({
	timerCheat	= "Показувати таймер перезарядки Шахрайства"
})

L:SetMiscLocalization({
	EchoCheats	= "Відлуння Медіва шахраює!"
})

--Prince Malchezaar
L = DBM:GetModLocalization("Prince")

L:SetGeneralLocalization({
	name = "Принц Малчезар"
})

L:SetMiscLocalization({
	DBM_PRINCE_YELL_P2		= "Дурні! Час – це вогонь, що спалює вас!",
	DBM_PRINCE_YELL_P3		= "Як ви наважилися кинути виклик такої колосальної потужності?",
	DBM_PRINCE_YELL_INF1	= "Мені відкриті всі реальності, всі виміри!",
	DBM_PRINCE_YELL_INF2	= "Ви протистоїте не лише Малчезару, а й усім підвладним мені легіонам!"
})

-- Nightbane
L = DBM:GetModLocalization("NightbaneRaid")

L:SetGeneralLocalization({
	name = "Нічна Смерть (Рейд)"
})

L:SetWarningLocalization({
	DBM_NB_AIR_WARN			= "Повітряна Фаза"
})

L:SetTimerLocalization({
	timerAirPhase			= "Повітряна Фаза"
})

L:SetOptionLocalization({
	DBM_NB_AIR_WARN			= "Показувати попередження Повітряної Фази",
	timerAirPhase			= "Показувати таймер тривалості Повітряної Фази"
})

L:SetMiscLocalization({
	DBM_NB_EMOTE_PULL		= "Стародавня істота прокидається вдалині.",
	DBM_NB_YELL_AIR			= "Жалюгідні комашки! Я засмажу вас з повітря!",
	DBM_NB_YELL_GROUND		= "Досить! Я зійду на землю і сам роздавлю тебе!",
	DBM_NB_YELL_GROUND2		= "Нікчеми! Я вам покажу мою силу!"
})

-- Named Beasts
L = DBM:GetModLocalization("Shadikith")

L:SetGeneralLocalization({
	name = "Шадикіт Ковзаючий"
})

L = DBM:GetModLocalization("Hyakiss")

L:SetGeneralLocalization({
	name = "Хіакісс Скритень"
})

L = DBM:GetModLocalization("Rokad")

L:SetGeneralLocalization({
	name = "Рокад Спустошник"
})
