if GetLocale() ~= "ruRU" then return end
if not DBM_CORE_L then DBM_CORE_L = {} end

local L = DBM_CORE_L

L.HOW_TO_USE_MOD					= "Ласкаво просимо до " .. L.DBM .. ". Наберіть /dbm help, щоб отримати список підтримуваних команд. Щоб відкрити налаштування, наберіть /dbm у чаті. Завантажуйте конкретні зони вручну, щоб налаштувати окремих босів на власний смак. " .. L.DBM .. " встановить стандартні параметри для Вашої спеціалізації, але за потреби Ви можете налаштувати їх точніше."
L.SILENT_REMINDER					= "Нагадування: " .. L.DBM .. " усе ще в тихому режимі."
-- L.NEWS_UPDATE						= "|h|c11ff1111Новости|r|h: Это обновление представляет собой повторный выпуск версии 9.1.9 для устранения ложного обнаружения вредоносного ПО в хэше предыдущего выпуска файла. Подробнее об этом |Hgarrmission:DBM:news|h|cff3588ff[здесь]|r|h"

L.COPY_URL_DIALOG_NEWS				= "Щоб прочитати останні новини, перейдіть за посиланням нижче"

L.LOAD_MOD_ERROR					= "Помилка під час завантаження бос модуля для %s: %s"
L.LOAD_MOD_SUCCESS					= "Завантажений модуль для '%s'. Для додаткових налаштувань введіть /dbm або /dbm help у чаті."
L.LOAD_MOD_COMBAT					= "Завантаження '%s' відкладено до виходу з бою"
L.LOAD_GUI_ERROR					= "Не вдалося завантажити GUI: %s"
L.LOAD_GUI_COMBAT					= "GUI не може бути початково завантажено під час бою. GUI буде завантажено після бою. Після цього Ви зможете відкривати його і в бою."
L.BAD_LOAD							= L.DBM .. " не вдалося повністю завантажити модуль для цього підземелля, оскільки Ви перебуваєте в бою. Щойно вийдете з бою, будь ласка, виконайте /console reloadui якнайшвидше."
L.LOAD_MOD_VER_MISMATCH				= "%s не може бути завантажений, тому що ваш DBM-Core не відповідає вимогам. Потрібна оновлена версія."
L.LOAD_MOD_EXP_MISMATCH				= "%s не може бути завантажений, тому що він створений для доповнення WoW, яке на даний момент недоступне. Коли додаток стане доступним, модуль запрацює автоматично."
L.LOAD_MOD_TOC_MISMATCH				= "%s не може бути завантажений, тому що він створений для патча WoW (%s), який на даний момент недоступний. Коли патч стане доступним, модуль запрацює автоматично."
L.LOAD_MOD_DISABLED					= "%s встановлено, але в даний момент вимкнено. Цей модуль не буде завантажений, поки Ви його не увімкнете."
L.LOAD_MOD_DISABLED_PLURAL			= "%s встановлені, але в даний момент вимкнено. Ці модулі не будуть завантажені, доки Ви їх не увімкнете."

L.COPY_URL_DIALOG					= "Копіювати посилання"

L.NO_RANGE							= "Радар не може бути використаний у підземеллях. Використовуватиметься текстове вікно перевірки дистанції"
L.NO_ARROW							= "Стрілка не може бути використана в старих підземеллях, де немає карти (завантажте патч або ніяк)"
L.NO_HUD							= "HUDMap не може бути використана в підземеллях"

L.DYNAMIC_DIFFICULTY_CLUMP			= L.DBM .. " вимкнув динамічне вікно перевірки дистанції на цьому босі, оскільки немає точної інформації про потрібну кількість гравців у скупченні для рейду вашого розміру."
L.DYNAMIC_ADD_COUNT					= L.DBM .. " вимкнув попередження про помічників на цьому босі, оскільки немає точної інформації про кількість помічників, які з'являються в рейді вашого розміру."
L.DYNAMIC_MULTIPLE					= L.DBM .. " вимкнув кілька таймерів і попереджень на цьому босі, оскільки немає точної інформації про те, як працюють механіки бою для рейду вашого розміру."

L.LOOT_SPEC_REMINDER				= "Ваша поточна спеціалізація %s. Ви вибрали видобуток для спеціалізації %s."

L.BIGWIGS_ICON_CONFLICT				= L.DBM .. " виявив, що у Вас одночасно ввімкнено встановлення міток у BigWigs і " .. L.DBM .. ". Будь ласка, вимкніть мітки в одному з аддонів, щоб уникнути конфліктів."

L.MOD_AVAILABLE						= "Для цього вмісту доступний додатковий модуль %s. Ви можете завантажити його з" .. L.UPDATEREMINDER_URL

L.COMBAT_STARTED					= "%s входить у бій. Успіхів! :)"
L.COMBAT_STARTED_IN_PROGRESS		= "%s входить у бій (у процесі). Успіхів! :)"
L.GUILD_COMBAT_STARTED				= "%s входить у бій із групою гільдії %s"
-- L.SCENARIO_STARTED					= "%s начат. Удачи! :)"
-- L.SCENARIO_STARTED_IN_PROGRESS		= "Вы зашли в сценарий %s (в процессе). Удачи! :)"
L.BOSS_DOWN							= "%s гине через %s!"
L.BOSS_DOWN_I						= "%s гине! Загальна кількість перемог у вас %d."
L.BOSS_DOWN_L						= "%s гине через %s! Ваш останній бій тривав %s, а найкращий бій тривав %s. Загальна кількість перемог у вас %d."
L.BOSS_DOWN_NR						= "%s гине через %s! Це новий рекорд! (Попередній рекорд був %s). Загальна кількість перемог у вас %d."
L.RAID_DOWN							= "%s зачищений за %s!"
L.RAID_DOWN_L						= "%s зачищений за %s! Поточний рекорд %s."
L.RAID_DOWN_NR						= "%s зачищений за %s! Це новий рекорд! (Попередній рекорд був %s)."
L.GUILD_BOSS_DOWN					= "%s зазнав поразки від групи гільдії %s через %s!"
-- L.SCENARIO_COMPLETE					= "%s завершён спустя %s!"
-- L.SCENARIO_COMPLETE_I				= "%s завершён! Общее количество прохождений у Вас %d."
-- L.SCENARIO_COMPLETE_L				= "%s завершён спустя %s! Ваше последнее прохождение заняло %s, а лучшее прохождение заняло %s. Общее количество прохождений у Вас %d."
-- L.SCENARIO_COMPLETE_NR				= "%s завершён спустя %s! Это новый рекорд! (Предыдущий рекорд был %s). Общее количество прохождений у Вас %d."
L.COMBAT_ENDED_AT					= "Бій з %s (%s) закінчився через %s."
L.COMBAT_ENDED_AT_LONG				= "Бій з %s (%s) закінчився через %s. На цьому рівні складності Ви вже вайпалися %d разів."
L.GUILD_COMBAT_ENDED_AT				= "Група гільдії %s зазнала вайпу на %s (%s) через %s."
-- L.SCENARIO_ENDED_AT					= "%s закончился спустя %s."
-- L.SCENARIO_ENDED_AT_LONG			= "%s закончился спустя %s. На этом уровне сложности Вы не завершили сценарий уже %d раз."
L.COMBAT_STATE_RECOVERED			= "%s був атакований %s назад, відновлюю таймери..."
L.TRANSCRIPTOR_LOG_START			= "Логування за допомогою Transcriptor розпочато."
L.TRANSCRIPTOR_LOG_END				= "Логування за допомогою Transcriptor закінчено."

L.MOVIE_SKIPPED						= "Ролик був автоматично пропущений."
L.BONUS_SKIPPED						= L.DBM .. " автоматично закрив вікно бонусного кидка. Якщо потрібно повернути це вікно, введіть /dbmbonusroll протягом 3 хвилин."

L.AFK_WARNING						= "Ви АФК і в бою (залишилось %d відсотків здоров'я), запуск звукового сигналу. Якщо Ви не є АФК, вимкніть АФК режим або цю опцію в 'Додаткові можливості'."

L.COMBAT_STARTED_AI_TIMER			= "Мій ЦП - це процесор нейронної мережі, який навчає комп'ютер. (Цей бій використовуватиме нову функцію таймера AI для генерації наближень таймера)"

L.PROFILE_NOT_FOUND					= "<" .. L.DBM .. "> Ваш поточний профіль пошкоджено. " .. L.DBM .. " завантажить профіль 'За замовчуванням'."
L.PROFILE_CREATED					= "Профіль '%s' створено."
L.PROFILE_CREATE_ERROR				= "Не вдалося створити профіль. Неправильне ім'я профілю."
L.PROFILE_CREATE_ERROR_D			= "Не вдалося створити профіль. Профіль '%s' вже існує."
L.PROFILE_APPLIED					= "Профіль '%s' застосовано."
L.PROFILE_APPLY_ERROR				= "Не вдалося застосувати профіль. Профіль '%s' не існує."
L.PROFILE_COPIED					= "Профіль '%s' скопійовано."
L.PROFILE_COPY_ERROR				= "Неможливо скопіювати профіль. Профіль '%s' не існує."
L.PROFILE_COPY_ERROR_SELF			= "Неможливо скопіювати профіль сам у себе."
L.PROFILE_DELETED					= "Профіль '%s' видалено. Профіль 'За замовчуванням' буде застосовано."
L.PROFILE_DELETE_ERROR				= "Не вдалося видалити профіль. Профіль '%s' не існує."
L.PROFILE_CANNOT_DELETE				= "Неможливо видалити профіль 'За замовчуванням'."
L.MPROFILE_COPY_SUCCESS				= "Налаштування модуля від %s (спеціалізація %d) було скопійовано."
L.MPROFILE_COPY_SELF_ERROR			= "Неможливо скопіювати параметри персонажа самі в себе."
L.MPROFILE_COPY_S_ERROR				= "Джерело пошкоджено. Установки не скопійовані або частково скопійовані. Скопіювати не вдалося."
L.MPROFILE_COPYS_SUCCESS			= "Звукові налаштування модуля від %s (спеціалізація %d) були скопійовані."
L.MPROFILE_COPYS_SELF_ERROR			= "Неможливо скопіювати звукові налаштування персонажа в себе."
L.MPROFILE_COPYS_S_ERROR			= "Джерело пошкоджено. Звукові установки не скопійовані або частково скопійовані. Скопіювати не вдалося."
L.MPROFILE_DELETE_SUCCESS			= "Налаштування модуля від %s (спеціалізація %d) було видалено."
L.MPROFILE_DELETE_SELF_ERROR		= "Налаштування модуля, що використовується в даний момент, не можна видалити."
L.MPROFILE_DELETE_S_ERROR			= "Джерело пошкоджено. Установки не видалені або частково видалені. Видалити не вдалося."

L.NOTE_SHARE_SUCCESS				= "%s поділився своєю заміткою для %s"
L.NOTE_SHARE_LINK					= "Натисніть тут, щоб відкрити нотатку"
L.NOTE_SHARE_FAIL					= "%s спробував поділитися з Вами нотаткою для %s. Однак модуль, пов'язаний із цією здатністю, не встановлений або не завантажений. Якщо Вам потрібна ця нотатка, переконайтеся, що модуль, для якого вони діляться нотаткою, завантажений і попросіть знову поділитися."

L.NOTEHEADER						= "Вставте текст вашого нотатки для %s тут. Помістивши ім'я гравця між ><, пофарбує його в колір класу. Для попередження з кількома нотатками розділіть їх за допомогою '/'"
L.NOTEFOOTER						= "Коли оновлено нотатку, просто натисніть 'ОК', щоб зберегти"
L.NOTESHAREDHEADER					= "%s поділився заміткою для %s. Якщо Ви приймете її, вона перевизначить Вашу поточну нотатку"
L.NOTESHARED						= "Ваша нотатка була відправлена групі"
L.NOTESHAREERRORSOLO				= "Самотньо? Ви не повинні передавати нотатки самому собі"
L.NOTESHAREERRORBLANK				= "Не можна поділитися порожньою нотаткою"
L.NOTESHAREERRORGROUPFINDER			= "Не можна поділитися нотаткою на БГ, у пошуку рейду чи підземелля"
L.NOTESHAREERRORALREADYOPEN			= "Не можна відкрити посилання нотатки, поки відкрито редактор нотаток, щоб запобігти втраті нотатки, яку Ви в даний момент редагуєте"

L.ALLMOD_DEFAULT_LOADED				= "Налаштування 'за замовчуванням' для всіх модулів у цьому підземеллі було завантажено."
L.ALLMOD_STATS_RESETED				= "Уся статистика модуля була скинута."
L.MOD_DEFAULT_LOADED				= "Налаштування за промовчанням для цього бою були завантажені."

L.WORLDBOSS_ENGAGED					= "У Вашому ігровому світі можливо розпочався бій із %s (%s відсотків здоров'я, відправив %s)."
L.WORLDBOSS_DEFEATED				= "%s можливо був переможений у Вашому ігровому світі (відправив %s)."
L.WORLDBUFF_STARTED					= "У Вашому ігровому світі розпочався світовий бафф %s для фракції %s (надправив %s)."

L.TIMER_FORMAT_SECS					= "%.2f сек"
L.TIMER_FORMAT_MINS					= "%d хв"
L.TIMER_FORMAT						= "%d хв %.2f сек"

L.MIN								= "хв"
L.MIN_FMT							= "%d хв"
L.SEC								= "сік"
L.SEC_FMT							= "%s сек"

L.GENERIC_WARNING_OTHERS			= "і ще один"
L.GENERIC_WARNING_OTHERS2			= "та %d інших"
L.GENERIC_WARNING_BERSERK			= "Берсерк через %s %s"
L.GENERIC_TIMER_BERSERK				= "Берсерк"
L.OPTION_TIMER_BERSERK				= "Відлік до $spell:26662"
L.GENERIC_TIMER_COMBAT				= "Бій починається"
L.OPTION_TIMER_COMBAT				= "Відлік до початку бою"
L.BAD								= "Поганий"
L.OPTION_HEALTH_FRAME				= "Відображати здоров'я боса"

L.OPTION_CATEGORY_TIMERS			= "Індикатори"
--Sub cats for "announce" object
L.OPTION_CATEGORY_WARNINGS			= "Загальні попередження"
L.OPTION_CATEGORY_WARNINGS_YOU		= "Персональні попередження"
L.OPTION_CATEGORY_WARNINGS_OTHER	= "Попередження для цілі"
L.OPTION_CATEGORY_WARNINGS_ROLE		= "Попередження для ролі"
L.OPTION_CATEGORY_SPECWARNINGS		= "Спеціальні попередження"

L.OPTION_CATEGORY_SOUNDS			= "Звуки"
--Misc object broken down into sub cats
L.OPTION_CATEGORY_DROPDOWNS			= "Випадні списки"
L.OPTION_CATEGORY_YELLS				= "Крики"
L.OPTION_CATEGORY_NAMEPLATES		= "Індикатори"
L.OPTION_CATEGORY_ICONS				= "Мітки"

L.AUTO_RESPONDED					= "Автовідповідь."
L.STATUS_WHISPER					= "%s: %s, %d/%d людина живі"
--Bosses
L.AUTO_RESPOND_WHISPER				= "%s зараз зайнятий, у бою проти %s (%s, %d/%d людина живі)"
L.WHISPER_COMBAT_END_KILL			= "%s здобув перемогу над %s!"
L.WHISPER_COMBAT_END_KILL_STATS		= "%s здобув перемогу над %s! Загальна кількість перемог у них – %d."
L.WHISPER_COMBAT_END_WIPE_AT		= "%s зазнав поразки від %s на %s"
L.WHISPER_COMBAT_END_WIPE_STATS_AT	= "%s зазнав поразки від %s на %s. Загальна кількість вайпів у них – %d."
--Scenarios (no percents. words like "fighting" or "wipe" changed to better fit scenarios)
-- L.AUTO_RESPOND_WHISPER_SCENARIO		= "%s сейчас занят в %s (%d/%d человек живые)"
-- L.WHISPER_SCENARIO_END_KILL			= "%s завершил %s!"
-- L.WHISPER_SCENARIO_END_KILL_STATS	= "%s завершил %s! Общее количество побед у них - %d."
-- L.WHISPER_SCENARIO_END_WIPE			= "%s не завершил %s"
-- L.WHISPER_SCENARIO_END_WIPE_STATS	= "%s не завершил %s. Общее количество незавершённых у них - %d."

L.VERSIONCHECK_HEADER				= "Boss Mod - Версії"
L.VERSIONCHECK_ENTRY				= "%s: %s (%s) %s"
L.VERSIONCHECK_ENTRY_TWO			= "%s: %s (%s) & %s (%s)"--Two Boss mods
L.VERSIONCHECK_ENTRY_NO_DBM			= "%s: Boss Mod не встановлено"
L.VERSIONCHECK_FOOTER				= "Знайдено %d |4гравців:гравця:гравців; з" .. L.DBM .. "і %d |4гравців:гравця:гравців; з BigWigs"
L.VERSIONCHECK_OUTDATED				= "Наступні %d гравці мають застарілу версію: %s"
L.YOUR_VERSION_OUTDATED				= "Ваша версія" .. L.DEADLY_BOSS_MODS .. "застаріла! Будь ласка, відвідайте" .. L.UPDATEREMINDER_URL .. "для завантаження останньої версії."
L.VOICE_PACK_OUTDATED				= "У Вашому голосовому пакеті" .. L.DBM .. "відсутні звуки, що підтримуються цією версією" .. L.DBM .. ". Фільтр звуків спецпопереджень було вимкнено. Будь ласка, завантажте оновлену версію голосового пакета або зв'яжіться з автором для оновлення, яке містить відсутні звукові файли."
L.VOICE_MISSING						= "Вибраний голосовий пакет" .. L.DBM .. "не знайдено. Якщо це помилка, переконайтеся, що Ваш голосовий пакет правильно встановлений та включений у модифікації."
L.VOICE_DISABLED					= "У Вас встановлений принаймні один голосовий пакет" .. L.DBM .. ", але жоден не включений. Якщо Ви збираєтеся використовувати голосовий пакет, переконайтеся, що він вибраний у 'Spoken Alerts', інакше видаліть голосові пакети, які не використовуються, щоб приховати це повідомлення."
L.VOICE_COUNT_MISSING				= "Голос відліку %d використовує голосовий пакет, який не було знайдено. Він був скинутий на налаштування за промовчанням: %s."
L.BIG_WIGS							= "BigWigs"

L.UPDATEREMINDER_HEADER				= "Ваша версія" .. L.DEADLY_BOSS_MODS .. "застаріла.\n Версія %s (%s) доступна для завантаження тут:" .. L.UPDATEREMINDER_URL
L.UPDATEREMINDER_FOOTER				= "Натисніть" .. (IsMacClient() and "Cmd-C" or "Ctrl-C")  ..  ", щоб скопіювати посилання на завантаження в буфер обміну."
L.UPDATEREMINDER_FOOTER_GENERIC		= "Натисніть" .. (IsMacClient() and "Cmd-C" or "Ctrl-C")  ..  ", щоб скопіювати посилання на буфер обміну."
L.UPDATEREMINDER_DISABLE			= "ПОПЕРЕДЖЕННЯ: Оскільки Ваш " .. L.DEADLY_BOSS_MODS .. " застарів і несумісний із новими версіями " .. L.DBM .. ", його було примусово вимкнено, доки Ви не оновите аддон. Це потрібно для того, щоб несумісні моди не псували гру ані Вам, ані іншим учасникам групи."
L.UPDATEREMINDER_DISABLETEST		= "ПОПЕРЕДЖЕННЯ: Оскільки Ваш " .. L.DEADLY_BOSS_MODS .. " застарів, а це тестовий/бета-ігровий світ, його було примусово вимкнено, доки Ви не оновите аддон. Це потрібно, щоб застарілі моди не впливали на результати тестування."
L.UPDATEREMINDER_HOTFIX				= "Ваша версія " .. L.DBM .. " матиме некоректні таймери або попередження в цьому бою. Це виправлено в новій версії."
L.UPDATEREMINDER_HOTFIX_ALPHA		= "Ваша версія " .. L.DBM .. " матиме некоректні таймери або попередження в цьому бою. Це виправлено в наступній версії (або альфа-версії)."
L.UPDATEREMINDER_MAJORPATCH			= "ПОПЕРЕДЖЕННЯ: Оскільки Ваш " .. L.DEADLY_BOSS_MODS .. " застарів, його вимкнено до оновлення, бо це великий ігровий патч. Це потрібно, щоб старий і несумісний код не погіршував ігровий досвід для Вас та членів Вашої групи. Переконайтеся, що Ви завантажили нову версію з Curse, Wago, WoWI або зі сторінки релізів GitHub."
L.VEM								= "ПОПЕРЕДЖЕННЯ: Ви використовуєте " .. L.DEADLY_BOSS_MODS .. " і Voice Encounter Mods одночасно. " .. L.DBM .. " не буде завантажено, оскільки ці два аддони не можуть працювати разом."
L.OUTDATEDPROFILES					= "ПОПЕРЕДЖЕННЯ: DBM-Profiles несумісний з цією версією" .. L.DBM .. ". Він повинен бути видалений, перш ніж"..L.DBM.."зможе продовжити, щоб уникнути конфліктів."
L.OUTDATEDSPELLTIMERS				= "ПОПЕРЕДЖЕННЯ: DBM-SpellTimers несумісний з" .. L.DBM .. "і має бути вимкнений для коректної роботи" .. L.DBM .. "."
L.OUTDATEDRLT						= "ПОПЕРЕДЖЕННЯ: DBM-RaidLeadTools несумісний з" .. L.DBM .. ". DBM-RaidLeadTools більше не підтримується і має бути видалено для коректної роботи" .. L.DBM .. "."
L.VICTORYSOUND						= "ПОПЕРЕДЖЕННЯ: DBM-VictorySound несумісний з цією версією" .. L.DBM .. ". Він повинен бути вилучений, щоб" .. L.DBM .. "міг продовжити без конфліктів."
L.DPMCORE							= "ПОПЕРЕДЖЕННЯ: Deadly PvP mods несумісні з цією версією" .. L.DBM .. ". Щоб продовжити, видаліть їх, щоб уникнути конфліктів."
L.DBMLDB							= "ПОПЕРЕДЖЕННЯ: DBM-LDB тепер вбудований у DBM-Core. Рекомендовано видалити 'DBM-LDB' з папки з вашими аддонами."
L.DBMLOOTREMINDER					= "ПОПЕРЕДЖЕННЯ: Виявлено встановлений DBM-LootReminder. Цей аддон більше не сумісний із клієнтом WoW Retail і ламає пул-таймери " .. L.DBM .. ". Рекомендується видалити цей аддон."
L.UPDATE_REQUIRES_RELAUNCH			= "ПОПЕРЕДЖЕННЯ: Це оновлення " .. L.DBM .. " не працюватиме коректно, якщо Ви не перезапустите ігровий клієнт. Воно містить нові файли або зміни в .toc, які не можуть бути завантажені через ReloadUI. Якщо продовжите без перезапуску клієнта, можливі зламані функції або помилки."
L.OUT_OF_DATE_NAG					= "Ваша версія " .. L.DBM .. " застаріла, а цей бій має нові можливості й виправлення в новій версії. Рекомендується оновитися, щоб не пропустити важливі попередження, таймери або крики, на які розраховує решта групи."

L.MOVABLE_BAR						= "Перетягніть!"

L.PIZZA_SYNC_INFO					= "|Hplayer:%1$s|h[%1$s]|h транслює Вам таймер " .. L.DBM .. ": '%2$s'\n|HDBM:cancel:%2$s:nil|h|cff3588ff[Скасувати цей таймер]|r|h  |HDBM:ignore:%2$s:%1$s|h|cff3588ff[Ігнорувати таймери від %1$s]|r|h"
L.PIZZA_CONFIRM_IGNORE				= "Ігнорувати таймери" .. L.DBM .. "від %s під час поточного сеансу?"
L.PIZZA_ERROR_USAGE					= "Використання: / dbm [broadcast] timer <time> <text>. <time> має бути більше 3."

--L.MINIMAP_TOOLTIP_HEADER (Same as English locales)
L.MINIMAP_TOOLTIP_FOOTER			= "[Shift+ЛКМ] – перемістити значок" .. L.DBM

L.RANGECHECK_HEADER					= "Перевірка дистанції (%d м)"
L.RANGECHECK_HEADERT				= "Перевірка дистанції (%dм-%dP)"
L.RANGECHECK_RHEADER				= "R-Перевірка дистанції (%dм)"
L.RANGECHECK_RHEADERT				= "R-Перевірка дистанції (%dм-%dP)"
L.RANGECHECK_SETRANGE				= "Налаштування дистанції"
L.RANGECHECK_SETTHRESHOLD			= "Налаштування порогу гравців"
L.RANGECHECK_SOUNDS					= "Звуковий сигнал"
L.RANGECHECK_SOUND_OPTION_1			= "Один із гравців підійшов до Вас надто близько"
L.RANGECHECK_SOUND_OPTION_2			= "Декілька людей знаходяться біля Вас"
L.RANGECHECK_SOUND_0				= "Без звуку"
L.RANGECHECK_SOUND_1				= "За замовчуванням"
L.RANGECHECK_SOUND_2				= "Дратівливий звуковий сигнал"
L.RANGECHECK_SETRANGE_TO			= "%d м"
L.RANGECHECK_LOCK					= "Закріпити смугу"
L.RANGECHECK_OPTION_FRAMES			= "Фрейми"
L.RANGECHECK_OPTION_RADAR			= "Показувати радар"
L.RANGECHECK_OPTION_TEXT			= "Показувати текстовий кадр"
L.RANGECHECK_OPTION_BOTH			= "Показувати обидва кадри"
L.RANGERADAR_HEADER					= "Радар:%d Гравців:%d"
L.RANGERADAR_RHEADER				= "R-Радар:%d Гравців:%d"
L.RANGERADAR_BOSS_HEADER			= "Діапазон босів (%d м)"
L.RANGECHECK_OPTION_SPEED			= "Швидкість поновлення (/reload)"
L.RANGECHECK_OPTION_SLOW			= "Повільна 0.5 сек (найменше CPU інтенсивне)"
L.RANGECHECK_OPTION_AVERAGE			= "Середня 0.25 сек"
L.RANGECHECK_OPTION_FAST			= "Швидка 0.05 сек (майже real-time)"
L.RANGERADAR_IN_RANGE_TEXT			= "%d у радіусі (%0.1fм)"
L.RANGECHECK_IN_RANGE_TEXT			= "%d у радіусі"--Text based doesn't need (%dyd), especially since it's not very accurate to the specific yard anyways
L.RANGERADAR_IN_RANGE_TEXTONE		= "%s (%0.1fм)"--One target

L.LOCK_FRAME						= "Закріпити вікно"
L.INFOFRAME_SHOW_SELF				= "Завжди показувати вашу енергію"		-- Always show your own power value even if you are below the threshold
L.INFOFRAME_SETLINES				= "Максимальна кількість рядків"
L.INFOFRAME_SETCOLS					= "Максимальна кількість стовпців"
L.INFOFRAME_LINESDEFAULT			= "За замовчуванням"
L.INFOFRAME_LINES_TO				= "%d рядків"
L.INFOFRAME_COLS_TO					= "%d стовпців"
L.INFOFRAME_POWER					= "Power"
L.INFOFRAME_AGGRO					= "Загроза"
L.INFOFRAME_MAIN					= "Main:"--Main power
L.INFOFRAME_ALT						= "Alt:"--Alternate Power

L.LFG_INVITE						= "Запрошення до підземелля"

L.SLASHCMD_HELP = {
	"Доступні команди:",
	"-----------------",
	"/dbm unlock: Відображає індикатор таймера, що переміщується (псевдонім: move).",
	"/range <число> або /distance <число>: Показати вікно перевірки дистанції. /rrange або /rdistance для зворотних кольорів.",
	"/dbm timer: Запускає відлік, для дод. інформації введіть '/dbm timer'.",
	"/dbm arrow: Показує стрілку" .. L.DBM .. "для дод. інформації введіть '/dbm arrow help'.",
	"/dbm help2: Показує команди управління рейдом"
}
L.SLASHCMD_HELP2 = {
	"Доступні команди:",
	"-----------------",
	"/dbm pull <сек>: Транслює відлік до атаки всім членам рейду (потрібні права лідера чи помічника).",
	"/dbm break <мин>: Транслює відлік відпочинку всім членам рейду (потрібні права лідера чи помічника).",
	"/dbm version: Виконує перевірку версії бос мода, що використовується рейдом (псевдонім: ver).",
	"/dbm version2: Виконує перевірку версії бос мода, що використовується рейдом, і відправляє повідомлення пошепки членам рейду зі застарілою версією (псевдонім: ver2).",
	"/dbm lockout: Отримати список поточних збережень підземель у членів рейду (псведоніми: lockouts, ids) (потрібні права лідера чи помічника).",
	"/dbm lag: Перевірка затримки всього рейду.",
	"/dbm durability: Перевірка міцності всього рейду."
}
L.TIMER_USAGE = {
	L.DBM .. "команди таймера:",
	"-----------------",
	"/dbm timer <сек> <текст>: Запускає таймер із зазначеним текстом.",
	"/dbm ltimer <сек> <текст>: Запускає таймер, який автоматично повторюється до скасування.",
	"/dbm broadcast timer <x> <text>: транслює <x> сек. Pizza Timer з ім'ям <text> у рейд (потрібні права лідера або помічника)",
	"Додайте 'broadcast' перед типом таймера, щоб поділитися ним з рейдом (потрібні права лідера чи помічника).",
	"/dbm timer endloop: Зупиняє будь-який повторюваний ltimer."
}

L.ERROR_NO_PERMISSION				= "У Вас недостатньо прав для виконання цієї операції."
L.TIME_TOO_SHORT					= "Таймер атаки повинен бути більше 3 секунд."

L.BOSSHEALTH_HIDE_FRAME				= "Приховати"

L.BREAK_USAGE						= "Перерва не може бути довшою за 60 хвилин. Переконайтеся, що Ви вводите час у хвилинах, а не в секундах."
L.BREAK_START						= "Перерва починається – у Вас є %s! (Відправив %s)"
L.BREAK_MIN							= "Перерва закінчується через %s хв.!"
L.BREAK_SEC							= "Перерва закінчується через %s сек.!"
L.TIMER_BREAK						= "Перерва!"
L.ANNOUNCE_BREAK_OVER				= "Перерва закінчилася в %s"

L.TIMER_PULL						= "Атака"
L.ANNOUNCE_PULL_MODE				= "Атака режим: %s"
L.ANNOUNCE_PULL						= "Атака через %d сек. (Відправив %s)"
L.ANNOUNCE_PULL_NOW					= "Атака!"
L.ANNOUNCE_PULL_TARGET				= "Атакуємо %s через %d сек. (Відправив %s)"
L.ANNOUNCE_PULL_NOW_TARGET			= "Атакуємо %s!"
L.GEAR_WARNING						= "Увага: Перевірка екіпірування. Рівень одягнених предметів на %d нижчий, ніж максимальний"
L.GEAR_WARNING_WEAPON				= "Увага: Перевірте, чи у Вас коректна зброя."
L.GEAR_FISHING_POLE					= "Вудка"

L.ACHIEVEMENT_TIMER_SPEED_KILL		= "Швидке вбивство"

-- Auto-generated Warning Localizations
L.AUTO_ANNOUNCE_TEXTS.you			= "%s на тобі"
L.AUTO_ANNOUNCE_TEXTS.target		= "%s на |3-5(>%%s<)"
L.AUTO_ANNOUNCE_TEXTS.targetdistance	= "%s на |3-5(>%%s<) (%%d м)"
L.AUTO_ANNOUNCE_TEXTS.targetsource	= ">%%s< применяется %s на >%%s<"
L.AUTO_ANNOUNCE_TEXTS.targetcount	= "%s (%%s) на |3-5(>%%s<)"
L.AUTO_ANNOUNCE_TEXTS.targetcountdistance	= "%s (%%s) на |3-5(>%%s<) (%%d м)"
L.AUTO_ANNOUNCE_TEXTS.spell			= "%s"
L.AUTO_ANNOUNCE_TEXTS.incoming		= "%s вхідний дебафф"
L.AUTO_ANNOUNCE_TEXTS.incomingcount	= "%s вхідний дебафф (%%s)"
L.AUTO_ANNOUNCE_TEXTS.ends			= "%s закінчується"
L.AUTO_ANNOUNCE_TEXTS.endtarget		= "%s закінчується: >%%s<"
L.AUTO_ANNOUNCE_TEXTS.fades			= "%s спадає"
L.AUTO_ANNOUNCE_TEXTS.addsleft		= "Залишилось %s: %%d"
L.AUTO_ANNOUNCE_TEXTS.cast			= "Застосування заклинання %s: %.1f сек"
L.AUTO_ANNOUNCE_TEXTS.soon			= "Незабаром %s"
L.AUTO_ANNOUNCE_TEXTS.sooncount		= "Скоро %s (%%s)"
L.AUTO_ANNOUNCE_TEXTS.countdown		= "%s через %%ds"
L.AUTO_ANNOUNCE_TEXTS.prewarn		= "%s через %s"
L.AUTO_ANNOUNCE_TEXTS.bait			= "Скоро %s - байті"
L.AUTO_ANNOUNCE_TEXTS.stage			= "Фаза %s"
L.AUTO_ANNOUNCE_TEXTS.prestage		= "Незабаром фаза %s"
L.AUTO_ANNOUNCE_TEXTS.count			= "%s (%%s)"
L.AUTO_ANNOUNCE_TEXTS.stack			= "%s на |3-5(>%%s<) (%%d)"
L.AUTO_ANNOUNCE_TEXTS.moveto		= "%s - біжіть до >%%s<"

local prewarnOption						= "Попереджати заздалегідь про $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.you				= "Оголошувати коли $spell:%s на тобі"
L.AUTO_ANNOUNCE_OPTIONS.target			= "Оголошувати цілі заклинання $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.targetdistance	= "Оголошувати цілі заклинання $spell:%s (відстань)"
L.AUTO_ANNOUNCE_OPTIONS.targetNF		= "Оголошувати цілі заклинання $spell:%s (ігнорує глобальні фільтри цілей)"
L.AUTO_ANNOUNCE_OPTIONS.targetsource	= "Оголошувати цілі заклинання $spell:%s (з джерелом)"
L.AUTO_ANNOUNCE_OPTIONS.targetcount		= "Оголошувати цілі заклинання $spell:%s (з лічильником)"
L.AUTO_ANNOUNCE_OPTIONS.targetcountdistance	= "Оголошувати цілі заклинання $spell:%s (з лічильником та відстанню)"
L.AUTO_ANNOUNCE_OPTIONS.spell			= "Попередження для $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.incoming		= "Оголошувати, коли $spell:%s отримує негативні ефекти"
L.AUTO_ANNOUNCE_OPTIONS.incomingcount	= "Оголошувати (з лічильником), коли $spell:%s отримує негативні ефекти"
L.AUTO_ANNOUNCE_OPTIONS.ends			= "Попереджати про закінчення $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.endtarget		= "Попереджати про закінчення $spell:%s (мета)"
L.AUTO_ANNOUNCE_OPTIONS.fades			= "Попереджати про спадання $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.addsleft			= "Оголошувати, скільки залишилося $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.cast			= "Попереджати застосування заклинання $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.soon			= prewarnOption
L.AUTO_ANNOUNCE_OPTIONS.sooncount		= prewarnOption
L.AUTO_ANNOUNCE_OPTIONS.countdow		= "Спамити заздалегідь відлік до заклинання $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.prewarn			= prewarnOption
L.AUTO_ANNOUNCE_OPTIONS.bait			= "Попереджати заздалегідь (щоб байти) для $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.stage			= "Оголошувати фазу %s"
L.AUTO_ANNOUNCE_OPTIONS.stagechange		= "Оголошувати зміни фаз"
L.AUTO_ANNOUNCE_OPTIONS.prestage		= "Попереджати про фазу %s"
L.AUTO_ANNOUNCE_OPTIONS.count			= "Попередження для $spell:%s (з лічильником)"
L.AUTO_ANNOUNCE_OPTIONS.stack			= "Оголошувати кількість стаків $spell:%s"
L.AUTO_ANNOUNCE_OPTIONS.moveto			= "Оголошувати, коли потрібно переміститися до когось або кудись для $spell:%s"

L.AUTO_SPEC_WARN_TEXTS.spell			= "%s!"
L.AUTO_SPEC_WARN_TEXTS.ends				= "%s закінчується"
L.AUTO_SPEC_WARN_TEXTS.fades			= "%s спадає"
L.AUTO_SPEC_WARN_TEXTS.soon				= "Скоро %s"
L.AUTO_SPEC_WARN_TEXTS.sooncount		= "Скоро %s (%%s)"
L.AUTO_SPEC_WARN_TEXTS.bait				= "Скоро %s - байті"
L.AUTO_SPEC_WARN_TEXTS.prewarn			= "%s через %s"
L.AUTO_SPEC_WARN_TEXTS.dispel			= "%s на |3-5(>%%s<) - розсійте заклинання"
L.AUTO_SPEC_WARN_TEXTS.interrupt		= "%s - перервіть >%%s<!"
L.AUTO_SPEC_WARN_TEXTS.interruptcount	= "%s - перервіть >%%s<! (%%d)"
L.AUTO_SPEC_WARN_TEXTS.you				= "%s на Вас"
L.AUTO_SPEC_WARN_TEXTS.youcount			= "%s (%%s) на Вас"
L.AUTO_SPEC_WARN_TEXTS.youpos			= "%s (Позиція: %%s) на Вас"
L.AUTO_SPEC_WARN_TEXTS.youposcount		= "%s (%%s) (Позиція: %%s) на Вас"
L.AUTO_SPEC_WARN_TEXTS.soakpos			= "%s (Позиція погл.: %%s)"
L.AUTO_SPEC_WARN_TEXTS.target			= "%s на |3-5(>%%s<)"
L.AUTO_SPEC_WARN_TEXTS.targetcount		= "%s (%%s) на >%%s<"
L.AUTO_SPEC_WARN_TEXTS.defensive		= "%s - захистіться"
L.AUTO_SPEC_WARN_TEXTS.taunt			= "%s на >%%s< - затаунті"
L.AUTO_SPEC_WARN_TEXTS.close			= "%s на |3-5(>%%s<) біля Вас"
L.AUTO_SPEC_WARN_TEXTS.move				= "%s - відійдіть"
L.AUTO_SPEC_WARN_TEXTS.keepmove			= "%s - продовжуйте рухатися"
L.AUTO_SPEC_WARN_TEXTS.stopmove			= "%s - зупиніться"
L.AUTO_SPEC_WARN_TEXTS.dodge			= "%s - уникайте"
L.AUTO_SPEC_WARN_TEXTS.dodgecount		= "%s (%%s) - уникайте"
L.AUTO_SPEC_WARN_TEXTS.dodgeloc			= "%s - уникайте від %%s"
L.AUTO_SPEC_WARN_TEXTS.moveaway			= "%s - відійдіть від інших"
L.AUTO_SPEC_WARN_TEXTS.moveawaycount	= "%s (%%s) - відійдіть від інших"
L.AUTO_SPEC_WARN_TEXTS.moveto			= "%s - біжіть до >%%s<"
L.AUTO_SPEC_WARN_TEXTS.soak				= "%s - перекрийте"
L.AUTO_SPEC_WARN_TEXTS.soakcount		= "%s - перекрийте %%s"
L.AUTO_SPEC_WARN_TEXTS.jump				= "%s - підстрибніть"
L.AUTO_SPEC_WARN_TEXTS.run				= "%s - тікайте"
L.AUTO_SPEC_WARN_TEXTS.runcount 		= "%s - тікайте (%%s)"
L.AUTO_SPEC_WARN_TEXTS.cast				= "%s - припиніть читання заклинань"
L.AUTO_SPEC_WARN_TEXTS.lookaway			= "%s на %%s - відверніться"
L.AUTO_SPEC_WARN_TEXTS.reflect			= "%s на |3-5(>%%s<) - припиніть атаку"
L.AUTO_SPEC_WARN_TEXTS.count			= "%s! (%%s)"
L.AUTO_SPEC_WARN_TEXTS.stack			= "На Вас %%d стаків від %s"
L.AUTO_SPEC_WARN_TEXTS.switch			= "%s - перейдіть"
L.AUTO_SPEC_WARN_TEXTS.switchcount		= "%s - перейдіть (%%s)"
L.AUTO_SPEC_WARN_TEXTS.gtfo				= "Під вами %%s - вийдіть"
L.AUTO_SPEC_WARN_TEXTS.adds				= "Прибули адди - змініть ціль"
L.AUTO_SPEC_WARN_TEXTS.addscount		= "Прибули адди - змініть ціль (%%s)"
L.AUTO_SPEC_WARN_TEXTS.addscustom		= "Прибули адди - %%s"
L.AUTO_SPEC_WARN_TEXTS.targetchange		= "Зміна мети - перейдіть на %%s"

-- Auto-generated Special Warning Localizations
L.AUTO_SPEC_WARN_OPTIONS.spell			= "Спецпопередження для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.ends			= "Спецпопередження про закінчення $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.fades			= "Спец Попередження про падіння $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.soon			= "Спецпопередження, що скоро $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.sooncount		= "Спецпопередження (з лічильником) для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.bait			= "Спецпопередження (для байта) для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.prewarn		= "Спецпопередження за %s сек. до $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.dispel		= "Спецпопередження для розсіювання/викрадення заклинання $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.interrupt		= "Спецпопередження для переривання заклинання $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.interruptcount	= "Спецпопередження (з лічильником) для переривання заклинання $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.you			= "Спецпопередження, коли на Вас $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.youcount		= "Спецпопередження (з лічильником), коли на Вас $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.youpos			= "Спецпопередження (з позицією), коли Вас $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.youposcount	= "Спецпопередження (з позицією та лічильником), коли на Вас $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.soakpos		= "Спецпопередження (з позицією) для допомоги з поглинанням $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.target			= "Спецпопередження, коли на комусь $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.targetcount	= "Спецпопередження (з лічильником), коли на комусь $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.defensive		= "Спецпопередження для використання захисних здібностей від $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.taunt			= "Спецпопередження \"затаунтіть\", коли на іншому танку $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.close			= "Спецпопередження, коли на комусь поряд з вами $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.move			= "Спецпопередження \"відійдіть\" для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.keepmove		= "Спецпопередження \"продовжуйте рухатися\" для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.stopmove		= "Спецпопередження \"зупиніться\" для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.dodge			= "Спецпопередження \"уникайте\" для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.dodgecount		= "Спецпопередження \"уникайте\" (з лічильником) для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.dodgeloc		= "Спецпопередження \"уникайте\" (з місцем) для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.moveaway		= "Спецпопередження \"відійдіть від інших\" для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.moveawaycount	= "Спецпопередження \"відійдіть від інших\" (зі лічильником) для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.moveto			= "Спецпопередження \"біжіть до когось\", на кому $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.soak			= "Спецпопередження \"перекрийте\" для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.soakcount		= "Спецпопередження \"перекрийте\" (з лічильником) для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.jump			= "Спецпопередження \"підстрибніть\" для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.run			= "Спецпопередження \"втікайте\" для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.runcount		= "Спецпопередження (з лічильником) \"втікайте\" для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.cast			= "Спецпопередження \"припиніть читання заклинань\" для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.lookaway		= "Спецпопередження \"відверніться\" для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.reflect		= "Спецпопередження \"припиніть атаку\" для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.count			= "Спецпопередження (з лічильником) для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.stack			= "Спецпопередження, коли на Вас >=%d стаків $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.switch			= "Спецпопередження про зміну мети для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.switchcount	= "Спец Попередження (з лічильником) про зміну мети для $spell:%s"
L.AUTO_SPEC_WARN_OPTIONS.gtfo 			= "Спецпопередження про вибігання з увійди на землі"
L.AUTO_SPEC_WARN_OPTIONS.adds			= "Спецпопередження про зміну мети для аддів, що прибувають"
L.AUTO_SPEC_WARN_OPTIONS.addscount		= "Спецпопередження (з лічильником) про зміну мети для аддів, що прибувають"
L.AUTO_SPEC_WARN_OPTIONS.addscustom		= "Спецпопередження для аддів, що прибувають"
L.AUTO_SPEC_WARN_OPTIONS.targetchange	= "Спецпопередження для зміни пріоритетної мети"

-- Auto-generated Timer Localizations
L.AUTO_TIMER_TEXTS.target			= "%s: >%%s<"
L.AUTO_TIMER_TEXTS.targetcount		= "%s (%%2$s): %%1$s"
L.AUTO_TIMER_TEXTS.cast			= "%s"
L.AUTO_TIMER_TEXTS.castshort		= "%s "--if short timers enabled, cast and next are same timer text, this is a conflict. the space resolves it
L.AUTO_TIMER_TEXTS.castcount		= "%s (%%s)"
L.AUTO_TIMER_TEXTS.castcountshort	= "%s (%%s) "--Resolve short timer conflict with next timers
L.AUTO_TIMER_TEXTS.castsource		= "%s: %%s"
L.AUTO_TIMER_TEXTS.castsourceshort	= "%s: %%s "--Resolve short timer conflict with next timers
L.AUTO_TIMER_TEXTS.active			= "%s закінчується" --Buff/Debuff/event on boss
L.AUTO_TIMER_TEXTS.fades			= "%s спадає" --Buff/Debuff on players
L.AUTO_TIMER_TEXTS.ai				= "%s ІІ"
L.AUTO_TIMER_TEXTS.cd				= "Відновлення. %s"
L.AUTO_TIMER_TEXTS.cdshort			= "~%s"
L.AUTO_TIMER_TEXTS.cdcount			= "Відновлення. %s (%%s)"
L.AUTO_TIMER_TEXTS.cdcountshort		= "~%s (%%s)"
L.AUTO_TIMER_TEXTS.cdsource			= "Відновлення. %s: >%%s<"
L.AUTO_TIMER_TEXTS.cdsourceshort	= "~%s: >%%s<"
L.AUTO_TIMER_TEXTS.cdspecial		= "Відновлення. спецздібності"
L.AUTO_TIMER_TEXTS.cdspecialshort	= "~Відновлення. спецздібності"

L.AUTO_TIMER_TEXTS.var				= "%s"
L.AUTO_TIMER_TEXTS.varcount			= "%s (%%s)"
L.AUTO_TIMER_TEXTS.varsource		= "%s: >%%s<"
L.AUTO_TIMER_TEXTS.varspecial		= "Спецздатність"
L.AUTO_TIMER_TEXTS.varcombo			= "%%1$s + %%2$s"

L.AUTO_TIMER_TEXTS.next			= "Слід. %s"
L.AUTO_TIMER_TEXTS.nextshort		= "%s"
L.AUTO_TIMER_TEXTS.nextcount		= "Слід. %s (%%s)"
L.AUTO_TIMER_TEXTS.nextcountshort	= "%s (%%s)"
L.AUTO_TIMER_TEXTS.nextsource		= "Слід. %s: >%%s<"
L.AUTO_TIMER_TEXTS.nextsourceshort	= "%s: %%s"
L.AUTO_TIMER_TEXTS.nextspecial		= "Слід. спецздібності"
L.AUTO_TIMER_TEXTS.nextspecialshort	= "Спецздатність"
L.AUTO_TIMER_TEXTS.achievement		= "%s"
L.AUTO_TIMER_TEXTS.stage			= "Слід. фаза"
L.AUTO_TIMER_TEXTS.stageshort		= "Фаза"
L.AUTO_TIMER_TEXTS.adds				= "Прибуття аддів"
L.AUTO_TIMER_TEXTS.addsshort		= "Адди"
L.AUTO_TIMER_TEXTS.addscustom		= "Прибуття аддів (%%s)"
L.AUTO_TIMER_TEXTS.addscustomshort	= "Адди (%%s)"
L.AUTO_TIMER_TEXTS.roleplay			= "Рольова гра"

L.AUTO_TIMER_OPTIONS.target		= "Відлік дії дебаффа $spell:%s (%ss)"
L.AUTO_TIMER_OPTIONS.targetcount	= "Відлік дії дебаффа (з лічильником) $spell:%s (%ss)"
L.AUTO_TIMER_OPTIONS.cast			= "Відлік застосування заклинання $spell:%s (%ss)"
L.AUTO_TIMER_OPTIONS.castcount		= "Відлік застосування заклинання (з лічильником) для $spell:%s (%ss)"
L.AUTO_TIMER_OPTIONS.castsource		= "Відлік застосування заклинання (з джерелом) для $spell:%s (%ss)"
L.AUTO_TIMER_OPTIONS.active		= "Відлік дії $spell:%s (%ss)"
L.AUTO_TIMER_OPTIONS.fades			= "Відлік до спадання $spell:%s з гравців (%ss)"
L.AUTO_TIMER_OPTIONS.ai				= "Відлік до відновлення $spell:%s (ІІ) (%ss)"
L.AUTO_TIMER_OPTIONS.cd			= "Відлік до відновлення $spell:%s (%ss)"
L.AUTO_TIMER_OPTIONS.cdcount		= "Відлік до відновлення $spell:%s (%ss)"
L.AUTO_TIMER_OPTIONS.cdsource		= "Відлік до відновлення $spell:%s (з джерелом) (%ss)"
L.AUTO_TIMER_OPTIONS.cdspecial		= "Відлік до відновлення спец-здатності (%ss)"
L.AUTO_TIMER_OPTIONS.next			= "Відлік до наступного $spell:%s (%ss)"
L.AUTO_TIMER_OPTIONS.nextcount		= "Відлік до наступного $spell:%s (%ss)"
L.AUTO_TIMER_OPTIONS.nextsource		= "Відлік до наступного $spell:%s (з джерелом) (%ss)"
L.AUTO_TIMER_OPTIONS.nextspecial	= "Відлік до наступної спец-здатності (%ss)"

L.AUTO_TIMER_OPTIONS.var 			= "Відлік (з розкидом) до відновлення $spell:%s (%ss)"
L.AUTO_TIMER_OPTIONS.varcount 		= "Відлік (з кількістю та розкидом) до відновлення $spell:%s (%ss)"
L.AUTO_TIMER_OPTIONS.varnp 			= "Показувати лише таймер на індикаторах здоров'я (з розкидом) до відновлення $spell:%s (%ss)"
L.AUTO_TIMER_OPTIONS.varpnp 		= "Показувати лише таймер пріоритету на індикаторах здоров'я (з розкидом) до відновлення $spell:%s (%ss)"
L.AUTO_TIMER_OPTIONS.varsource 		= "Відлік (з джерелом та розкидом) до відновлення $spell:%s (%ss)"
L.AUTO_TIMER_OPTIONS.varspecial 	= "Відлік (з різницею) до відновлення спецздатності (%ss)"
L.AUTO_TIMER_OPTIONS.varcombo 		= "Відлік (з розкидом) до відновлення комбо здібностей (%ss)"

L.AUTO_TIMER_OPTIONS.achievement	= "Відлік для %s (%ss)"
L.AUTO_TIMER_OPTIONS.stage			= "Відлік до наступної фази (%ss)"
L.AUTO_TIMER_OPTIONS.adds			= "Відлік до прибуття аддів (%ss)"
L.AUTO_TIMER_OPTIONS.addscustom		= "Відлік до прибуття аддів (%ss)"
L.AUTO_TIMER_OPTIONS.roleplay		= "Відлік для рольової гри (%ss)"

L.AUTO_ICONS_OPTION_TARGETS			= "Встановлювати мітки на цілі $spell:%s"
L.AUTO_ICONS_OPTION_TARGETS_TANK_A		= "Встановлювати мітки на цілі $spell:%s з пріоритетом танка над ближнім боєм, над дальнім та за алфавітом"
L.AUTO_ICONS_OPTION_TARGETS_TANK_R		= "Встановлювати мітки на цілі $spell:%s з пріоритетом танка над ближнім боєм, над дальнім та рейдовим складом"
L.AUTO_ICONS_OPTION_TARGETS_MELEE_A		= "Встановлювати мітки на цілі $spell:%s з пріоритетом ближнього бою та в алфавітному порядку"
L.AUTO_ICONS_OPTION_TARGETS_MELEE_R		= "Встановлювати мітки на цілі $spell:%s з пріоритетом ближнього бою та рейдового складу"
L.AUTO_ICONS_OPTION_TARGETS_RANGED_A	= "Встановлювати мітки на цілі $spell:%s з пріоритетом далекого бою та в алфавітному порядку"
L.AUTO_ICONS_OPTION_TARGETS_RANGED_R	= "Встановлювати мітки на цілі $spell:%s з пріоритетом далекого бою та рейдового складу"
L.AUTO_ICONS_OPTION_TARGETS_ALPHA		= "Встановлювати мітки на цілі $spell:%s в алфавітному порядку"
L.AUTO_ICONS_OPTION_NPCS			= "Встановлювати мітки на $spell:%s"
L.AUTO_ICONS_OPTION_CONFLICT		= "(Може конфліктувати з іншими параметрами)"
L.AUTO_ARROW_OPTION_TEXT			= "Показувати стрілку" .. L.DBM .. "до мети, на якій $spell:%s"
L.AUTO_ARROW_OPTION_TEXT2			= "Показувати стрілку" .. L.DBM .. "від мети, на якій $spell:%s"
L.AUTO_ARROW_OPTION_TEXT3			= "Показувати стрілку" .. L.DBM .. "до певного місця для $spell:%s"

L.AUTO_YELL_OPTION_TEXT.shortyell	= "Кричати, коли на Вас $spell:%s"
L.AUTO_YELL_OPTION_TEXT.yell		= "Кричати (з ім'ям гравця), коли на Вас $spell:%s"
L.AUTO_YELL_OPTION_TEXT.yellme		= "Кричати, коли на Вас $spell:%s"
L.AUTO_YELL_OPTION_TEXT.count		= "Кричати (з лічильником), коли на Вас $spell:%s"
L.AUTO_YELL_OPTION_TEXT.fade		= "Кричати (зі зворотним відліком), коли $spell:%s спадає"
L.AUTO_YELL_OPTION_TEXT.shortfade	= "Кричати (зі зворотним відліком), коли $spell:%s спадає"
L.AUTO_YELL_OPTION_TEXT.iconfade	= "Кричати (зі зворотним відліком та міткою), коли $spell:%s спадає"
L.AUTO_YELL_OPTION_TEXT.position	= "Кричати (з позицією та ім'ям гравця), коли на Вас $spell:%s"
L.AUTO_YELL_OPTION_TEXT.shortposition	= "Кричати (з позицією), коли на Вас $spell:%s"
L.AUTO_YELL_OPTION_TEXT.combo		= "Кричати (з текстом користувача), коли на Вас $spell:%s і в той же час інші заклинання"
L.AUTO_YELL_OPTION_TEXT.repeatplayer	= "Кричати повторно (з ім'ям гравця), коли на Вас $spell:%s"
L.AUTO_YELL_OPTION_TEXT.repeaticon	= "Кричати повторно (з позначкою), коли на Вас $spell:%s"

L.AUTO_YELL_ANNOUNCE_TEXT.shortyell	= "%s"
L.AUTO_YELL_ANNOUNCE_TEXT.yell		= "%s на" .. UnitName("player") .. "!"
L.AUTO_YELL_ANNOUNCE_TEXT.yellme	= "%s на мені!"
L.AUTO_YELL_ANNOUNCE_TEXT.count		= "%s на" .. UnitName("player") .. "! (%%d)"
L.AUTO_YELL_ANNOUNCE_TEXT.fade		= "%s спадає через %%d"
L.AUTO_YELL_ANNOUNCE_TEXT.shortfade	= "%%d"
L.AUTO_YELL_ANNOUNCE_TEXT.iconfade	= "{rt%%2$d}%%1$d"
L.AUTO_YELL_ANNOUNCE_TEXT.position	= "%s %%s на {rt%%d}"..UnitName("player").."{rt%%d}"
L.AUTO_YELL_ANNOUNCE_TEXT.shortposition		= "{rt%%1$d}%s %%2$d"
L.AUTO_YELL_ANNOUNCE_TEXT.combo		= "%s та %%s"--Spell name (from option, plus spellname given in arg)
L.AUTO_YELL_ANNOUNCE_TEXT.repeaticon	= "{rt%%1$d}"

L.AUTO_YELL_CUSTOM_FADE				= "%s спав"
L.AUTO_HUD_OPTION_TEXT				= "Показувати HudMap для $spell:%s"
L.AUTO_HUD_OPTION_TEXT_MULTI		= "Показувати HudMap для різних механік"
L.AUTO_NAMEPLATE_OPTION_TEXT		= "Показувати аури індикаторів для $spell:%s, використовуючи сумісний аддон індикаторів або"..L.DBM..""
L.AUTO_NAMEPLATE_OPTION_TEXT_FORCED	= "Показувати аури індикаторів для $spell:%s, використовуючи тільки"..L.DBM..""
L.AUTO_RANGE_OPTION_TEXT			= "Показувати вікно перевірки дистанції (%s м) для $spell:%s"--string used for range so we can use things like "5/2" as a value for that field
L.AUTO_RANGE_OPTION_TEXT_SHORT		= "Показувати вікно перевірки дистанції (%s м)"--For when a range frame is just used for more than one thing
L.AUTO_RRANGE_OPTION_TEXT			= "Показувати зворотне вікно перевірки дистанції (%s) для $spell:%s"--Reverse range frame (green when players in range, red when not)
L.AUTO_RRANGE_OPTION_TEXT_SHORT		= "Показувати зворотне вікно перевірки дистанції (%s)"
L.AUTO_INFO_FRAME_OPTION_TEXT		= "Показувати інформаційне вікно для $spell:%s"
L.AUTO_INFO_FRAME_OPTION_TEXT2		= "Показувати інформаційне вікно для огляду бою"
L.AUTO_INFO_FRAME_OPTION_TEXT3		= "Показати інформаційний кадр для $spell:%s (при досягненні порогового значення %%s)"
L.AUTO_READY_CHECK_OPTION_TEXT		= "Програвати звук перевірки готовності, коли кулять боса (навіть якщо він не є метою)"
L.AUTO_SPEEDCLEAR_OPTION_TEXT		= "Показати таймер для швидкого зачищення %s"
L.AUTO_PRIVATEAURA_OPTION_TEXT		= "Відтворювати звукові оповіщення DBM для приватних аур $spell:%s у цьому бою. Пріоритет звуку: голосовий пакет, якщо він доступний, резервний - Повітряний горн (Air Horn)"

--Sounds
L.AUTO_SOUND_OPTION_TEXT			= "Звуковий сигнал при $spell:%d"
L.AUTO_SOUND_OPTION_TEXT5			= "5-секундний звуковий відлік до $spell:%d"
L.AUTO_SOUND_OPTION_TEXT3			= "3-секундний звуковий відлік до $spell:%d"
L.AUTO_SOUND_OPTION_TEXT_YOU		= "Звуковий сигнал при $spell:%d на Вас"
L.AUTO_SOUND_OPTION_TEXT_SOON		= "Звуковий сигнал при $spell:%d скоро"
L.AUTO_SOUND_OPTION_TEXT_CLOSE		= "Звуковий сигнал при $spell:%d біля Вас"

-- New special warnings
L.MOVE_WARNING_BAR					= "Індикатор попередження"
L.MOVE_WARNING_MESSAGE				= "Дякую за використання" .. L.DEADLY_BOSS_MODS
L.MOVE_SPECIAL_WARNING_BAR			= "Індикатор спецпопередження"
L.MOVE_SPECIAL_WARNING_TEXT			= "Спеціальне попередження"

L.ARROW_MOVABLE						= "Індикатор стрілки"
L.ARROW_WAY_USAGE					= "/dway <x> <y>: Створює стрілку, яка вказує на певне місце (використовуючи координати поточної зони)"
L.ARROW_WAY_SUCCESS					= "Щоб сховати стрілку, введіть '/dbm arrow hide' або досягніть вказаного місця."
L.ARROW_ERROR_USAGE	= {
	"Використання" .. L.DBM .. "-Arrow:",
	"-----------------",
	"/dbm arrow <x> <y>: створює стрілку, яка вказує на певну точку (використовуючи координати світу)",
	"/dbm arrow map <x> <y>: створює стрілку, яка вказує на певну точку (використовуючи координати зони)",
	"/dbm arrow <player>: створює стрілку, яка вказує на певного гравця у Вашій групі або рейді (реєстрозалежно!)",
	"/dbm arrow hide: приховує стрілку",
	"/dbm arrow move: дозволяє переміщення стрілки"
}

L.SPEED_KILL_TIMER_TEXT				= "Рекордна перемога"
L.SPEED_CLEAR_TIMER_TEXT			= "Найкраще проходження"
L.COMBAT_RES_TIMER_TEXT				= "Слід. заряд БР"
L.TIMER_RESPAWN						= "Поява %s"

L.REQ_INSTANCE_ID_PERMISSION		= "%s запитує дозвіл на перегляд поточних збережень підземель.\nВи хочете надати %s таке право? Цей гравець отримає можливість запитувати цю інформацію без попередження протягом вашої поточної ігрової сесії."
L.ERROR_NO_RAID					= "Ви повинні перебувати в рейдовій групі для використання цієї функції."
L.INSTANCE_INFO_REQUESTED			= "Надіслано запит на перегляд поточних збережень підземель у членів рейду.\nЗверніть увагу, що гравці будуть повідомлені про це і можуть відхилити ваш запит."
L.INSTANCE_INFO_STATUS_UPDATE		= "На запит відповіли %d гравців з %d користувачів DBM: %d надіслали дані, %d відхилили запит. Очікування відповіді продовжено на %d секунд..."
L.INSTANCE_INFO_ALL_RESPONSES		= "Отримано відповідь від усіх членів рейду"
L.INSTANCE_INFO_DETAIL_DEBUG		= "Гравець: %s ТипРезультату: %s Інстанс: %s ID: %s Складність: %d Розмір: %d Прогрес: %s"
L.INSTANCE_INFO_DETAIL_HEADER		= "%s, складність %s:"
L.INSTANCE_INFO_DETAIL_INSTANCE	= "ID %s, прогрес %d: %s"
L.INSTANCE_INFO_DETAIL_INSTANCE2	= "прогрес %d: %s"
L.INSTANCE_INFO_NOLOCKOUT			= "Ваша рейдова група не має збереження підземель."
L.INSTANCE_INFO_STATS_DENIED		= "Відхилили запит: %s"
L.INSTANCE_INFO_STATS_AWAY		= "Відійшли від комп'ютера: %s"
L.INSTANCE_INFO_STATS_NO_RESPONSE	= "Встановлено застарілу версію DBM: %s"
L.INSTANCE_INFO_RESULTS			= "Результати сканування збережень. Зауважте, що інстанси можуть з'являтися більше одного разу, якщо у вашому рейді є гравці з локалізованими клієнтами WoW."
--L.INSTANCE_INFO_SHOW_RESULTS		= "Игроки, которые еще не ответили: %s\n|HDBM:showRaidIdResults|h|cff3588ff[Показать текущие результаты]|r|h"
L.INSTANCE_INFO_SHOW_RESULTS		= "Гравці, які ще не відповіли: %s"

L.LAG_CHECKING						= "Перевірка затримки біля рейду..."
L.LAG_HEADER						= L.DEADLY_BOSS_MODS.. "- результати перевірки затримки"
L.LAG_ENTRY							= "%s: глобальна затримка [%d ms] / локальна затримка [%d ms]"
L.LAG_FOOTER						= "Немає відповіді: %s"

L.DUR_CHECKING						= "Перевірка міцності біля рейду."
L.DUR_HEADER						= L.DEADLY_BOSS_MODS.. "- результати перевірки міцності"
L.DUR_ENTRY							= "%s: міцність [%d відсотків] / екіпірування зламана [%s]"
L.LAG_FOOTER						= "Немає відповіді: %s"

L.OVERRIDE_ACTIVATED					= "Перевизначення конфігурації були активовані для цієї битви за допомогою рейд-лідера"

--LDB
L.LDB_TOOLTIP_HELP1					= "[ЛКМ] - відкрити" .. L.DBM
L.LDB_TOOLTIP_HELP2					= "[Alt+ПКМ] - переключення в беззвучний режим"
L.SILENTMODE_IS						= "Тихий режим"

L.WORLD_BUFFS.hordeOny			= "Народи Орди, мешканці Оргріммара! Приходьте, збирайтеся та вітайте героя Орди"
L.WORLD_BUFFS.allianceOny		= "Громадяни та союзники Штормграда, цього дня вершилася історія."
L.WORLD_BUFFS.hordeNef			= "НЕФАРІАН Вбито! Мешканці Оргріммара"
L.WORLD_BUFFS.allianceNef		= "Громадяни Альянсу! Владика Чорної гори повалений!"
L.WORLD_BUFFS.zgHeart			= "Тепер залишився лише один крок до порятунку від Свіжувача Душ"
L.WORLD_BUFFS.zgHeartBooty		= "Кривавий Свіжувач Душ переможений! Тепер нам нічого не загрожує!"
L.WORLD_BUFFS.zgHeartYojamba	= "Починайте ритуал, мої слуги. Ми повинні відправити серце Хаккара назад у Пустоту!"
L.WORLD_BUFFS.rendHead			= "Самозванець Ренд Чорнорук мертвий!"

--Retail Globals
L.RAID_INFO_WORLD_BOSS				= "Бос поза підземелля"
L.SCENARIO_STAGE					= "%d-й етап"
L.SPECIALIZATION					= "Спеціалізація" -- ID: 22433
-- EJ
L.HARD_MODE							= "Складний режим" -- 17220
L.BOSS_YOU_DEFEATED					= "Ви перемогли" -- 25559
L.BOSS_KILL_SUBTITLE				= "Бос переможений" -- 25560
