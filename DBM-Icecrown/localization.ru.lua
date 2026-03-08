if GetLocale() ~= "ruRU" then return end

local L

----------------------
--  Lord Marrowgar  --
----------------------
L = DBM:GetModLocalization("LordMarrowgar")

L:SetGeneralLocalization({
	name = "Лорд Ребрад"
})

-------------------------
--  Lady Deathwhisper  --
-------------------------
L = DBM:GetModLocalization("Deathwhisper")

L:SetGeneralLocalization({
	name = "Леді Смертний Шепіт"
})

L:SetTimerLocalization({
	TimerAdds	= "Заклик помічників"
})

L:SetWarningLocalization({
	WarnReanimating				= "Помічник воскресає",	-- Reanimating an adherent or fanatic
	WarnAddsSoon				= "Незабаром заклик помічників",
	SpecWarnVengefulShade		= "Мстивий дух атакує вас - тікайте", --creatureid 38222
	WeaponsStatus				= "Зняття зброї включено: %s (%s - %s)"
})

L:SetOptionLocalization({
	WarnAddsSoon				= "Попереджати заздалегідь про заклик помічників",
	WarnReanimating				= "Попередження під час воскресіння помічників",	-- Reanimated Adherent/Fanatic spawning
	TimerAdds					= "Відлік до призову помічників",
	SpecWarnVengefulShade		= "Спец-попередження, коли вас атакує Мстивий дух",--creatureid 38222
	WeaponsStatus				= "Спец-попередження на початку бою, якщо увімкнено функцію зняття/надягання зброї",
	ShieldHealthFrame			= "Показувати здоров'я боса з індикатором здоров'я для \n$spell:70842",
	SoundWarnCountingMC			= "Програвати звуковий відлік 5...1 до контролю розуму",
--	RemoveDruidBuff				= "Снимите бафф $spell:48469 / $spell:48470 через 24 секунды после начала боя", -- Needs review
	RemoveBuffsOnMC				= "Знімати бафи, коли на вас накладено заклинання $spell:71289. Кожен варіант є кумулятивним.",
	Gift						= "Зняти $spell:48469 / $spell:48470. Мінімальний підхід для запобігання опору $spell:33786.",
	CCFree						= "+ Забрати $spell:48169 / $spell:48170. Врахування опорів заклинань школи Тіней.",
	ShortOffensiveProcs			= "+ Видаліть атакувальні заклинання з малою тривалістю. Рекомендується для безпеки рейду без втрати шкоди рейду.",
	MostOffensiveBuffs			= "+ Заберіть більшість атакувальних бафів (переважно для кастерів і |cFFFF7C0Aдруїдів \"Сила звіра\"|r). Максимальна безпека рейду ціною втрати шкоди та потреби в самовідновленні/переміщенні!",
	EqUneqWeapons				= "Знімати/вдягати зброю, якщо на вас накладено $spell:71289. Для надягання створіть компл. екіп. \"pve\". Для зняття не потрібний.",
	EqUneqTimer					= "Знімати зброю за таймером ЗАВЖДИ, а не під час каста (якщо високий пінг). Опція вище має бути увімкнена."
})

L:SetMiscLocalization({
	YellReanimatedFanatic	= "Восстань и обрети истинную форму!",
	ShieldPercent			= "Бар'єр мани",
--	Fanatic1				= "Фанатик культа",
--	Fanatic2				= "Кособокий фанатик",
--	Fanatic3				= "Воскрешенный фанатик",
	setMissing				= "УВАГА! DBM: автоматичне знімання/надягання зброї не працюватиме, доки ви не створите набір екіпірування pve",
	EqUneqLineDescription	= "Автоматичне оснащення/зняття обладнання"
})

----------------------
--  Gunship Battle  --
----------------------
L = DBM:GetModLocalization("GunshipBattle")

L:SetGeneralLocalization({
	name = "Бій на кораблях"
})

L:SetWarningLocalization({
	WarnAddsSoon	= "Незабаром нові помічники"
})

L:SetOptionLocalization({
	WarnAddsSoon		= "Попереджати заздалегідь про заклик помічників",
	TimerAdds			= "Відлік до нових помічників"
})

L:SetTimerLocalization({
	TimerAdds			= "Заклик помічників"
})

L:SetMiscLocalization({
	PullAlliance	= "Запускайте двигатели! Летим навстречу судьбе.",
	PullHorde		= "Воспряньте, сыны и дочери Орды! Сегодня мы будем биться со смертельным врагом! ЛОК'ТАР ОГАР!",
	--CombatAlliance	= "Ах вы псы трусливые! Напали исподтишка!",
	--CombatHorde		= "Сейчас вы ответите перед Саурфангом!",
	AddsAlliance	= "Разрушители, сержанты, в бой!",
	AddsHorde		= "Пехота, сержанты, в бой!",
	MageAlliance	= "Корабль под обстрелом! Боевого мага сюда, пусть заткнет эти пушки!",
	MageHorde		= "Корабль под обстрелом! Заклинателя сюда, пусть заткнет эти пушки!",
	KillAlliance	= "Ну не говорите потом, что я не предупреждал. В атаку, братья и сестры!",
	KillHorde		= "Альянс повержен. Вперед, к Королю-личу!"
})

-----------------------------
--  Deathbringer Saurfang  --
-----------------------------
L = DBM:GetModLocalization("Deathbringer")

L:SetGeneralLocalization({
	name = "Саурфанг Смертоносний"
})

L:SetOptionLocalization({
	RunePowerFrame		= "Показувати здоров'я боса + індикатор $spell:72371",
--	RemoveDI			= "Удалите $spell:19752, если используется для предотвращения $spell:72293"
})

L:SetMiscLocalization({
	RunePower			= "Сила крові",
	PullAlliance		= "Усі загиблі воїни Орди, всі дохлі пси Альянсу – всі поповнять армію Короля-лича. Навіть зараз валькири воскресають ваших покійників, щоб ті стали частиною Плеті!",
	PullHorde			= "Кор'крон, висувайтесь! Герої, будьте напоготові. Плеті тільки що..."
})

-----------------
--  Festergut  --
-----------------
L = DBM:GetModLocalization("Festergut")

L:SetGeneralLocalization({
	name = "Тухлопуз"
})

L:SetOptionLocalization({
	AnnounceSporeIcons	= "Оголошувати мітки цілей заклинання $spell:69279 у рейд-чат<br/>(потрібні права помічника)",
	AchievementCheck	= "Оголошувати про провал досягнення 'Масок немає!' в рейд-чат (потрібні права помічника)"
})

L:SetMiscLocalization({
	SporeSet			= "Мітку Газоподібної спори {rt%d} встановлено на: %s",
	AchievementFailed	= ">> ДОСЯГНЕННЯ ПРОВАЛЕНО: %s отримав %d стаків Несприйнятливості до гнилі <<"
})

---------------
--  Rotface  --
---------------
L = DBM:GetModLocalization("Rotface")

L:SetGeneralLocalization({
	name = "Гниломорд"
})

L:SetWarningLocalization({
	WarnOozeSpawn				= "Малий слизень",
	SpecWarnLittleOoze			= "Малий слизень атакує вас - тікайте"--creatureid 36897
})

L:SetOptionLocalization({
	WarnOozeSpawn				= "Попередження при появі Малого слизня",
	SpecWarnLittleOoze			= "Спец-попередження, коли вас атакує Малий слизень",--creatureid 36897
	TankArrow					= "Показувати стрілку для кайтера Великого слизня (експериментально)"
})

L:SetMiscLocalization({
	YellSlimePipes1	= "Отличные новости, народ! Я починил трубы для подачи ядовитой слизи!",	-- Professor Putricide
	YellSlimePipes2	= "Отличные новости, народ! Слизь снова потекла!"	-- Professor Putricide
})

---------------------------
--  Professor Putricide  --
---------------------------
L = DBM:GetModLocalization("Putricide")

L:SetGeneralLocalization({
	name = "Професор Мерзоцид"
})

L:SetWarningLocalization({
	WarnReengage			= "%s: Повторне зіткнення"
})

L:SetTimerLocalization({
	TimerReengage			= "Повторне зіткнення"
})

--[[L:SetOptionLocalization({
	WarnReengage			= "Show warning for Boss re-engage", -- needs localization
	TimerReengage			= "Show timer for Boss re-engage" -- needs localization
})]]

L:SetMiscLocalization({
	YellTransform1			= "Хм, что-то я ничего не чувствую. Что?! Это еще откуда?",
	YellTransform2			= "На вкус, как вишенка! ОЙ! Извиниите!"
})

----------------------------
--  Blood Prince Council  --
----------------------------
L = DBM:GetModLocalization("BPCouncil")

L:SetGeneralLocalization({
	name = "Кривава Рада"
})

L:SetWarningLocalization({
	WarnTargetSwitch		= "Змініть ціль на: %s",
	WarnTargetSwitchSoon	= "Незабаром зміна цілі"
})

L:SetTimerLocalization({
	TimerTargetSwitch		= "Зміна цілі"
})

L:SetOptionLocalization({
	WarnTargetSwitch		= "Попередження про зміну цілі",-- Warn when another Prince needs to be damaged
	WarnTargetSwitchSoon	= "Попереджати заздалегідь про зміну цілі",-- Every ~47 secs, you have to dps a different Prince
	TimerTargetSwitch		= "Відлік до зміни цілі",
	ActivePrinceIcon		= "Встановлювати мітку на наповненого силою Принца (череп)",
	ShadowPrisonMetronome	= "Відтворіть повторюваний 1-секундний звук клацання, щоб уникнути $spell:72999"
})

L:SetMiscLocalization({
	Keleseth			= "Принц Келесет",
	Taldaram			= "Принц Талдарам",
	Valanar				= "Принц Валанар",
	FirstPull			= "Глупые смертные. Думали, что одолели нас? Сан'лейн – непобедимые воины Короля-лича. Теперь наши силы едины!",
	EmpoweredFlames		= "Жаркое пламя тянется к (%S+)!"
})

-----------------------------
--  Blood-Queen Lana'thel  --
-----------------------------
L = DBM:GetModLocalization("Lanathel")

L:SetGeneralLocalization({
	name = "Королева Лана'тель"
})

L:SetMiscLocalization({
	SwarmingShadows			= "Тени собираются и окружают (%S+)!",
	YellFrenzy				= "Я голодний!"
})

-----------------------------
--  Valithria Dreamwalker  --
-----------------------------
L = DBM:GetModLocalization("Valithria")

L:SetGeneralLocalization({
	name = "Валітрія Сноходиця"
})

L:SetWarningLocalization({
	WarnPortalOpen	= "Відкриття порталів"
})

L:SetTimerLocalization({
	TimerPortalsOpen		= "Відкриття порталів",
	TimerPortalsClose		= "Закриття порталів", -- Needs review
	TimerBlazingSkeleton	= "Палаючий скелет",
	TimerAbom				= "Наст. поганище (%s)"
})

L:SetOptionLocalization({
	WarnPortalOpen				= "Попередження про відкриття порталів",
	TimerPortalsOpen			= "Відлік для відкриття порталів",
	TimerPortalsClose			= "Зворотній відлік до закриття порталів", -- Needs review
	TimerBlazingSkeleton		= "Відлік до Палаючого скелета"
})

L:SetMiscLocalization({
	YellPull		= "Чужаки увірвалися у внутрішні покої. Знищте зелений дракон! Нехай залишаться лише кістки та порох для воскресіння!",
	YellPortals		= "Я открыла портал в Изумрудный Сон. Там вы найдете спасение, герои..."
})

------------------
--  Sindragosa  --
------------------
L = DBM:GetModLocalization("Sindragosa")

L:SetGeneralLocalization({
	name = "Сіндрагоса"
})

L:SetWarningLocalization({
	WarnAirphase			= "Повітряна фаза",
	WarnGroundphaseSoon		= "Синдрагоса скоро приземлиться"
})

L:SetTimerLocalization({
	TimerNextAirphase		= "Слід. повітряна фаза",
	TimerNextGroundphase	= "Слід. наземна фаза",
	AchievementMystic		= "Час для усунення Таємничої енергії"
})

L:SetOptionLocalization({
	WarnAirphase			= "Оголошувати повітряну фазу",
	WarnGroundphaseSoon		= "Попереджати заздалегідь про наземну фазу",
	TimerNextAirphase		= "Відлік до наступної повітряної фази",
	TimerNextGroundphase	= "Відлік до наступної наземної фази",
	AnnounceFrostBeaconIcons= "Оголошувати мітки цілей заклинання $spell:70126 у рейд-чат<br/>(потрібні права помічника)",
	ClearIconsOnAirphase	= "Знімати всі мітки перед повітряною фазою",
	AssignWarnDirectionsCount	= "Призначте напрямки для цілей $spell:70126 і розраховуйте на фазі 2",
	AchievementCheck		= "Оголошувати попередження для досягнення 'Таємнича дама'<br/>в рейд-чат (потрібні права помічника)",
	RangeFrame				= "Показувати гравців з мітками у вікні перевірки дистанції (10 норм., 20 гер.)"
})

L:SetMiscLocalization({
	YellAirphase		= "Здесь ваше вторжение и окончится! Никто не уцелеет.",
	YellPhase2			= "А теперь почувствуйте всю мощь господина и погрузитесь в отчаяние!",
	YellAirphaseDem		= "Rikk zilthuras rikk zila Aman adare tiriosh ",--Demonic, since curse of tonges is used by some guilds and it messes up yell detection.
	YellPhase2Dem		= "Zar kiel xi romathIs zilthuras revos ruk toralar ",--Demonic, since curse of tonges is used by some guilds and it messes up yell detection.
	BeaconIconSet		= "Крижана мітка {rt%d} встановлена на: %s",
	AchievementWarning	= "Попередження: %s отримав 5 стаків Таємничої енергії",
	AchievementFailed	= ">> ДОСЯГНЕННЯ ПРОВАЛЕНО: %s отримав %d стаків Таємничої енергії <<"
})

---------------------
--  The Lich King  --
---------------------
L = DBM:GetModLocalization("LichKing")

L:SetGeneralLocalization({
	name = "Король-лич"
})

L:SetWarningLocalization({
	ValkyrWarning			= "%s |3-3(>%s<) %s схопили!",
	SpecWarnYouAreValkd		= "Вас схопили",
	WarnNecroticPlagueJump	= "Мертва чума перестрибнула на |3-3(>%s<)",
	SpecWarnValkyrLow		= "У Валь'кіри менше 55%"
})

L:SetTimerLocalization({
	TimerRoleplay				= "Подання",
	PhaseTransition				= "Перехідна фаза",
	TimerNecroticPlagueCleanse	= "Очищення Мертвої чуми"
})

L:SetOptionLocalization({
	TimerRoleplay				= "Відлік для подання",
	WarnNecroticPlagueJump		= "Оголошувати цілі стрибків $spell:73912",
	TimerNecroticPlagueCleanse	= "Відлік для очищення Мертвої чуми до першого тику",
	PhaseTransition				= "Відлік для перехідної фази",
	ValkyrWarning				= "Оголошувати, кого схопили Валь'кіри",
	SpecWarnYouAreValkd			= "Спец-попередження, коли вас схопила Валь'кіра",
	AnnounceValkGrabs			= "Оголошувати гравців, схоплених Валь'кірами, в рейд-чат\n(потрібні права помічника)",
	SpecWarnValkyrLow			= "Спец-попередження, коли у Валь'кіри менше 55% HP",
	AnnouncePlagueStack			= "Оголошувати стаки заклинання $spell:73912 у рейд-чат (10\nстаків, далі кожні 5) (потрібні права помічника)",
	ShowFrame					= "Показати вікно цілей Валь'Кір",
	FrameClassColor				= "Використовувати кольори класів у вікні цілей Валь'Кір",
	FrameUpwards				= "Зростання вікна цілей Валь'Кір вгору",
	FrameLocked					= "Зафіксувати вікно цілей Валь'Кір",
	RemoveImmunes				= "Знімати заклинання імунітету перед виходом з кімнати Крижаної Скорботи"
})

L:SetMiscLocalization({
	LKPull					= "Неужели прибыли наконец хваленые силы Света? Мне бросить Ледяную Скорбь и сдаться на твою милость, Фордринг?",
	LKRoleplay				= "Що рухає вами?.. Праведність? Не знаю...",
	ValkGrabbedIcon			= "Валь'кіра {rt%d} схопила %s",
	ValkGrabbed				= "Валь'кіра схопила %s",
	PlagueStackWarning		= "Попередження: %s отримав %d стаків Мертвої чуми",
	AchievementCompleted	= ">> ДОСЯГНЕННЯ ВИКОНАНО: %s отримав %d стаків Мертвої чуми <<",
	FrameTitle				= "Цілі Валь'Кір",
	FrameLock				= "Закріпити вікно",
	FrameClassColor			= "Використовувати кольори класів",
	FrameOrientation		= "Зростання вгору",
	FrameHide				= "Приховати вікно",
	FrameClose				= "Закрити",
	FrameGUIDesc			= "Рамка Валь'кір",
	FrameGUIMoveMe			= "Перемістити рамку Валь'кір"
})

-------------
--  Trash  --
-------------
L = DBM:GetModLocalization("ICCTrash")

L:SetGeneralLocalization({
	name = "Icecrown Trash"
})

L:SetWarningLocalization({
	SpecWarnTrapL		= "Пастку активовано! - Заклятий вартовий звільнений",
	SpecWarnTrapP		= "Пастку активовано! - наближаються Мстиві свіжарі",
	SpecWarnGosaEvent	= "Наближаються захисники Сіндрагоси!"
})

L:SetOptionLocalization({
	SpecWarnTrapL		= "Спец-попередження для активації пастки",
	SpecWarnTrapP		= "Спец-попередження для активації пастки",
	SpecWarnGosaEvent	= "Спец-попередження для активації захисників Сіндрагоси"
})

L:SetMiscLocalization({
	WarderTrap1			= "Кто... идет?",
	WarderTrap2			= "Я пробудился...",
	WarderTrap3			= "В покои господина проникли!",
	FleshreaperTrap1	= "Скорей, нападем на них сзади!",
	FleshreaperTrap2	= "Вам не уйти от нас.",
	FleshreaperTrap3	= "Живые? Здесь?!",
	SindragosaEvent		= "Они не должны прорваться к Синдрагосе! Скорее, остановите их!"
})
