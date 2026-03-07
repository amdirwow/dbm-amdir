if GetLocale() ~= "ruRU" then return end

local L

----------------------------------
--  Ahn'Kahet: The Old Kingdom  --
----------------------------------
--  Prince Taldaram  --
-----------------------
L = DBM:GetModLocalization("Taldaram")

L:SetGeneralLocalization({
	name = "Принц Талдарам"
})

-------------------
--  Elder Nadox  --
-------------------
L = DBM:GetModLocalization("Nadox")

L:SetGeneralLocalization({
	name = "Старійшина Надокс"
})

---------------------------
--  Jedoga Shadowseeker  --
---------------------------
L = DBM:GetModLocalization("JedogaShadowseeker")

L:SetGeneralLocalization({
	name = "Джедога Шукальниця Тіней"
})

---------------------
--  Herald Volazj  --
---------------------
L = DBM:GetModLocalization("Volazj")

L:SetGeneralLocalization({
	name = "Глашатай Волаж"
})

----------------
--  Amanitar  --
----------------
L = DBM:GetModLocalization("Amanitar")

L:SetGeneralLocalization({
	name = "Аманітар"
})

-------------------
--  Azjol-Nerub  --
---------------------------------
--  Krik'thir the Gatewatcher  --
---------------------------------
L = DBM:GetModLocalization("Krikthir")

L:SetGeneralLocalization({
	name = "Крик'тир Охоронець Брам"
})

----------------
--  Hadronox  --
----------------
L = DBM:GetModLocalization("Hadronox")

L:SetGeneralLocalization({
	name = "Хадронокс"
})

-------------------------
--  Anub'arak (Party)  --
-------------------------
L = DBM:GetModLocalization("Anubarak")

L:SetGeneralLocalization({
	name = "Ануб'арак (група)"
})

---------------------------------------
--  Caverns of Time: Old Stratholme  --
---------------------------------------
--  Meathook  --
----------------
L = DBM:GetModLocalization("Meathook")

L:SetGeneralLocalization({
	name = "М'ясний Крюк"
})

--------------------------------
--  Salramm the Fleshcrafter  --
--------------------------------
L = DBM:GetModLocalization("SalrammTheFleshcrafter")

L:SetGeneralLocalization({
	name = "Салрамм Плоторіз"
})

-------------------------
--  Chrono-Lord Epoch  --
-------------------------
L = DBM:GetModLocalization("ChronoLordEpoch")

L:SetGeneralLocalization({
	name = "Хронолорд Епох"
})

-----------------
--  Mal'Ganis  --
-----------------
L = DBM:GetModLocalization("MalGanis")

L:SetGeneralLocalization({
	name = "Мал'Ганіс"
})

L:SetMiscLocalization({
	Outro	= "Твоя подорож починається, молодий принц. Збирай свої війська і вирушай у царство вічних снігів, до Нордсколу. Там ми й залагодимо всі наші справи, там ти дізнаєшся про свою долю."
})

-------------------
--  Wave Timers  --
-------------------
L = DBM:GetModLocalization("StratWaves")

L:SetGeneralLocalization({
	name = "Хвилі Стратхольму"
})

L:SetWarningLocalization({
	WarningWaveNow = "Хвиля %d: заклик %s"
})

L:SetTimerLocalization({
	TimerWaveIn		= "Наступна хвиля (6)",
	TimerRoleplay	= "Вступна вистава"
})

L:SetOptionLocalization({
	WarningWaveNow	= "Попередження про нову хвилю",
	TimerWaveIn		= "Відлік до наступної хвилі (після боса 5-ої хвилі)",
	TimerRoleplay	= "Відлік для вступного подання"
})

L:SetMiscLocalization({
	Meathook	= "М'ясний Крюк",
	Salramm		= "Салрамм Плоторіз",
	Devouring	= "Всепожираючий вовкул",
	Enraged		= "Вурдалак, що розлютився.",
	Necro		= "Некромант",
	Fiend		= "Некрорахнід",
	Stalker		= "Цвинтарний ловець",
	Abom		= "Шматкове створення",
	Acolyte		= "Послушник",
	Wave1		= "%d %s",
	Wave2		= "%d %s та %d %s",
	Wave3		= "%d %s, %d %s та %d %s",
	Wave4		= "%d %s, %d %s, %d %s та %d %s",
	WaveBoss	= "%s",
	WaveCheck	= "Атаки Плеті: (%d+)/10",
	Roleplay	= "Я радий, що ти прийшов, Утере!",
	Roleplay2	= "Схоже, всі готові. Пам'ятайте, ці люди заражені чумою і скоро помруть. Ми повинні очистити Стратхольм і захистити Лордерон від Плеті. Уперед."
})

------------------------
--  Drak'Tharon Keep  --
------------------------
--  Trollgore  --
-----------------
L = DBM:GetModLocalization("Trollgore")

L:SetGeneralLocalization({
	name = "Кровотролль"
})

L:SetMiscLocalization({
	YellExplosion = "Труп будить!"
})

--------------------------
--  Novos the Summoner  --
--------------------------
L = DBM:GetModLocalization("NovosTheSummoner")

L:SetGeneralLocalization({
	name = "Новос Закличник"
})

L:SetWarningLocalization({
	WarnCrystalHandler	= "Кришталевий приборкувач (%d залишилося)"
})

L:SetTimerLocalization({
	timerCrystalHandler	= "Кришталевий приборкувач"
})

L:SetOptionLocalization({
	WarnCrystalHandler	= "Попередження з появою Кришталевого приборкувача",
	timerCrystalHandler	= "Відлік до появи наступного Кришталевого приборкувача"
})

L:SetMiscLocalization({
	YellPull		= "Вам холодно? Це подих швидкої смерті.",
	HandlerYell		= "Захищайте мене! Швидше, будьте ви прокляті!",
	Phase2			= "Невже ви не розумієте всієї марності того, що відбувається?",
	YellKill		= "Ваші зусилля... марні."
})

-----------------
--  King Dred  --
-----------------
L = DBM:GetModLocalization("KingDred")

L:SetGeneralLocalization({
	name = "Король Дред"
})

-----------------------------
--  The Prophet Tharon'ja  --
-----------------------------
L = DBM:GetModLocalization("ProphetTharonja")

L:SetGeneralLocalization({
	name = "Пророк Тарон'джа"
})

---------------
--  Gundrak  --
----------------
--  Slad'ran  --
----------------
L = DBM:GetModLocalization("Sladran")

L:SetGeneralLocalization({
	name = "Сладран"
})

---------------
--  Moorabi  --
---------------
L = DBM:GetModLocalization("Moorabi")

L:SetGeneralLocalization({
	name = "Мурабі"
})

-------------------------
--  Drakkari Colossus  --
-------------------------
L = DBM:GetModLocalization("BloodstoneAnnihilator")

L:SetGeneralLocalization({
	name = "Колос Драккарі"
})

L:SetWarningLocalization({
	WarningElemental	= "Фаза 2. Елементаль",
	WarningStone		= "Фаза 1. Колос"
})

L:SetOptionLocalization({
	WarningElemental	= "Попередження Фазу 2. Елементаль",
	WarningStone		= "Попередження для Фаза 1. Колос"
})

-----------------
--  Gal'darah  --
-----------------
L = DBM:GetModLocalization("Galdarah")

L:SetGeneralLocalization({
	name = "Гал'дара"
})

L:SetWarningLocalization({
	TimerPhase2		= "Фаза 2: Аватар Акалі",
	TimerPhase1		= "Фаза 1: Верховний пророк Акалі"
})

L:SetTimerLocalization({
	TimerPhase2		= "Фаза 2: Аватар Акалі",
	TimerPhase1		= "Фаза 1: Верховний пророк Акалі"
})

L:SetOptionLocalization({
	TimerPhase2		= "Попередження для Фаза 2: Аватара Акалі",
	TimerPhase1		= "Попередження Фазі 1: Верховний пророк Акалі"
})

L:SetMiscLocalization({
	YellPhase2_1	= "Після цього нічого не лишиться!",
	YellPhase2_2	= "Хочете побачити силу? Я покажу вам... силу!"
})

-------------------------
--  Eck the Ferocious  --
-------------------------
L = DBM:GetModLocalization("Eck")

L:SetGeneralLocalization({
	name = "Ек Лютий"
})

--------------------------
--  Halls of Lightning  --
--------------------------
--  General Bjarngrim  --
-------------------------
L = DBM:GetModLocalization("Bjarngrin")

L:SetGeneralLocalization({
	name = "Генерал Б'ярнгрін"
})

-------------
--  Ionar  --
-------------
L = DBM:GetModLocalization("Ionar")

L:SetGeneralLocalization({
	name = "Іонар"
})

---------------
--  Volkhan  --
---------------
L = DBM:GetModLocalization("Volkhan")

L:SetGeneralLocalization({
	name = "Волхан"
})

-------------
--  Loken  --
-------------
L = DBM:GetModLocalization("Loken")

L:SetGeneralLocalization({
	name = "Локен"
})

----------------------
--  Halls of Stone  --
-----------------------
--  Maiden of Grief  --
-----------------------
L = DBM:GetModLocalization("MaidenOfGrief")

L:SetGeneralLocalization({
	name = "Діва Скорботи"
})

------------------
--  Krystallus  --
------------------
L = DBM:GetModLocalization("Krystallus")

L:SetGeneralLocalization({
	name = "Кристалус"
})

------------------------------
--  Sjonnir the Ironshaper  --
------------------------------
L = DBM:GetModLocalization("SjonnirTheIronshaper")

L:SetGeneralLocalization({
	name = "Сьоннір Ливарник"
})

--------------------------------------
--  Brann Bronzebeard Escort Event  --
--------------------------------------
L = DBM:GetModLocalization("BrannBronzebeard")

L:SetGeneralLocalization({
	name = "Ескорт Брана"
})

L:SetWarningLocalization({
	WarningPhase	= "Фаза %d"
})

L:SetTimerLocalization({
	timerEvent	= "Час, що залишився"
})

L:SetOptionLocalization({
	WarningPhase	= "Попередження про зміну фази",
	timerEvent		= "Відлік тривалості події"
})

L:SetMiscLocalization({
	Pull	= "Тепер будьте уважні! Не встигнете й оком моргнути, як…",
	Phase1	= "Виявлено вторгнення до системи. Пріоритетність робіт з аналізу історичних архівів знижено. Заходи у відповідь ініційовані.",
	Phase2	= "Порог допустимої загрози перевищено. Астрономічний архів вимкнено. Рівень безпеки підвищено.",
	Phase3	= "Критичне значення рівня небезпеки. Перенаправлення аналізу Безодні. Ініціювання протоколу очищення.",
	Kill	= "Увага: запобіжні заходи деактивовані. Починаю стирання пам'яті та…"
})

-----------------
--  The Nexus  --
-----------------
--  Anomalus  --
----------------
L = DBM:GetModLocalization("Anomalus")

L:SetGeneralLocalization({
	name = "Аномалус"
})

-------------------------------
--  Ormorok the Tree-Shaper  --
-------------------------------
L = DBM:GetModLocalization("OrmorokTheTreeShaper")

L:SetGeneralLocalization({
	name = "Орморок Вихователь Дерев"
})

----------------------------
--  Grand Magus Telestra  --
----------------------------
L = DBM:GetModLocalization("GrandMagusTelestra")

L:SetGeneralLocalization({
	name = "Велика ведуня Телестра"
})

L:SetWarningLocalization({
	WarningSplitSoon	= "Скоро Поділ",
	WarningSplitNow		= "Поділ",
	WarningMerge		= "Злиття"
})
L:SetOptionLocalization({
	WarningSplitSoon	= "Попереджати заздалегідь про Поділ",
	WarningSplitNow		= "Попереджати про Поділ",
	WarningMerge		= "Попереджати про злиття"
})

L:SetMiscLocalization({
	SplitTrigger1		= "Мене вистачить на вас!",
	SplitTrigger2		= "Ви отримаєте більше, ніж заслуговуєте!",
	MergeTrigger		= "Ну а тепер, покінчимо з цим!"
})

-------------------
--  Keristrasza  --
-------------------
L = DBM:GetModLocalization("Keristrasza")

L:SetGeneralLocalization({
	name = "Керістраза"
})

-----------------------------------
--  Commander Kolurg/Stoutbeard  --
-----------------------------------
L = DBM:GetModLocalization("Commander")

local commander = "Невідомий"
if UnitFactionGroup("player") == "Alliance" then
	commander = "Командир Колург"
elseif UnitFactionGroup("player") == "Horde" then
	commander = "Командир Пивобород"
end

L:SetGeneralLocalization({
	name = commander
})

------------------
--  The Oculus  --
-------------------------------
--  Drakos the Interrogator  --
-------------------------------
L = DBM:GetModLocalization("DrakosTheInterrogator")

L:SetGeneralLocalization({
	name = "Дракос Дізнавач"
})


L:SetOptionLocalization({
	MakeitCountTimer	= "Відлік для Вас всім зарахується (досягнення)"
})

L:SetMiscLocalization({
	MakeitCountTimer	= "Вам усім зарахується"
})

----------------------
--  Mage-Lord Urom  --
----------------------
L = DBM:GetModLocalization("MageLordUrom")

L:SetGeneralLocalization({
	name = "Маг-лорд Уром"
})

L:SetMiscLocalization({
	CombatStart		= "Нещасні сліпі дурні!"
})

--------------------------
--  Varos Cloudstrider  --
--------------------------
L = DBM:GetModLocalization("VarosCloudstrider")

L:SetGeneralLocalization({
	name = "Варос Захмарний Мандрівник"
})

---------------------------
--  Ley-Guardian Eregos  --
---------------------------
L = DBM:GetModLocalization("LeyGuardianEregos")

L:SetGeneralLocalization({
	name = "Зберігач енергії Ерегос"
})

L:SetMiscLocalization({
	MakeitCountTimer	= "Вам усім зарахується"
})

--------------------
--  Utgarde Keep  --
-----------------------
--  Prince Keleseth  --
-----------------------
L = DBM:GetModLocalization("Keleseth")

L:SetGeneralLocalization({
	name = "Принц Келесет"
})

--------------------------------
--  Skarvald the Constructor  --
--  & Dalronn the Controller  --
--------------------------------
L = DBM:GetModLocalization("ConstructorAndController")

L:SetGeneralLocalization({
	name = "Скарвальд і Далрон"
})

----------------------------
--  Ingvar the Plunderer  --
----------------------------
L = DBM:GetModLocalization("IngvarThePlunderer")

L:SetGeneralLocalization({
	name = "Інгвар Розкрадач"
})

L:SetMiscLocalization({
	YellIngvarPhase2	= "Я повернувся! Ще один шанс розкроїти вам голови!",
	YellCombatEnd		= "Ні! Я зможу це зробити… я зможу…"
})

------------------------
--  Utgarde Pinnacle  --
--------------------------
--  Skadi the Ruthless  --
--------------------------
L = DBM:GetModLocalization("SkadiTheRuthless")

L:SetGeneralLocalization({
	name = "Скаді Безжальний"
})

L:SetMiscLocalization({
	CombatStart		= "Що за недоноски наважилися вторгнутися сюди? Скоріше, брати мої! Частування тому, хто принесе мені їхні голови!",
	Phase2			= "Нікчемні лакеї! Ваші трупи стануть гарною закускою для мого нового дракона!"
})

-------------------
--  King Ymiron  --
-------------------
L = DBM:GetModLocalization("Ymiron")

L:SetGeneralLocalization({
	name = "Король Імірон"
})

-------------------------
--  Svala Sorrowgrave  --
-------------------------
L = DBM:GetModLocalization("SvalaSorrowgrave")

L:SetGeneralLocalization({
	name = "Свала Вічноскорботна"
})

L:SetTimerLocalization({
	timerRoleplay		= "Свала Вічноскорботна активується"
})

L:SetOptionLocalization({
	timerRoleplay		= "Відлік для подання перед активацією Свали Вічноскорбящей"
})

L:SetMiscLocalization({
	SvalaRoleplayStart	= "Мій пане! Я зробила, як ви наказали, і тепер благаю вас про благословення!"
})

-----------------------
--  Gortok Palehoof  --
-----------------------
L = DBM:GetModLocalization("GortokPalehoof")

L:SetGeneralLocalization({
	name = "Горток Бліде Копито"
})

-----------------------
--  The Violet Hold  --
-----------------------
--  Cyanigosa  --
-----------------
L = DBM:GetModLocalization("Cyanigosa")

L:SetGeneralLocalization({
	name = "Сінігоса"
})

L:SetMiscLocalization({
	CyanArrived	= "Ви доблесно обороняєтеся, але це місто має бути стерте з лиця землі, і я особисто виконаю волю Малігоса!"
})

--------------
--  Erekem  --
--------------
L = DBM:GetModLocalization("Erekem")

L:SetGeneralLocalization({
	name = "Ерекем"
})

---------------
--  Ichoron  --
---------------
L = DBM:GetModLocalization("Ichoron")

L:SetGeneralLocalization({
	name = "Гнойрон"
})

-----------------
--  Lavanthor  --
-----------------
L = DBM:GetModLocalization("Lavanthor")

L:SetGeneralLocalization({
	name = "Лавантор"
})

--------------
--  Moragg  --
--------------
L = DBM:GetModLocalization("Moragg")

L:SetGeneralLocalization({
	name = "Мораґг"
})

--------------
--  Xevozz  --
--------------
L = DBM:GetModLocalization("Xevoss")

L:SetGeneralLocalization({
	name = "Ксевозз"
})

-------------------------------
--  Zuramat the Obliterator  --
-------------------------------
L = DBM:GetModLocalization("Zuramat")

L:SetGeneralLocalization({
	name = "Зурамат Знищувач"
})

---------------------
--  Portal Timers  --
---------------------
L = DBM:GetModLocalization("PortalTimers")

L:SetGeneralLocalization({
	name = "Таймери порталів"
})

L:SetWarningLocalization({
	WarningPortalSoon	= "Незабаром новий портал",
	WarningPortalNow	= "Портал #%d",
	WarningBossNow		= "Прибуття Боса"
})

L:SetTimerLocalization({
	TimerPortalIn	= "Портал #%d" ,
})

L:SetOptionLocalization({
	WarningPortalNow		= "Попередження для нового порталу",
	WarningPortalSoon		= "Попереднє попередження для нового порталу",
	WarningBossNow			= "Попередження про появу боса",
	TimerPortalIn			= "Відлік до наступного порталу (після боса)",
	ShowAllPortalTimers		= "Відлік для всіх порталів (неточний)"
})

L:SetMiscLocalization({
	yell1		= "Гей, вартові! Ідемо! Славні герої про все подбають. За мною!",
	Sealbroken	= "Ми прорвалися через тюремні ворота! Дорога до Даларану відкрита! Тепер ми нарешті припинимо війну Нексуса!",
	WavePortal	= "Відкрито порталів: (%d+)/18"
})

-----------------------------
--  Trial of the Champion  --
-----------------------------
--  The Black Knight  --
------------------------
L = DBM:GetModLocalization("BlackKnight")

L:SetGeneralLocalization({
	name = "Чорний лицар"
})

L:SetOptionLocalization({
	AchievementCheck		= "Оголошувати про провал досягнення 'Бувало і гірше' в чат гурту"
})

L:SetMiscLocalization({
	Pull				= "Чудово. Сьогодні ви в чесній боротьбі заслужили…",
	AchievementFailed	= ">> ДОСЯГНЕННЯ ПРОВАЛЕНО: %s отримав шкоду від Вибуху вурдалаку <<",
	YellCombatEnd		= "Ні! Я не можу… знову… програти."
})

-----------------------
--  Grand Champions  --
-----------------------
L = DBM:GetModLocalization("GrandChampions")

L:SetGeneralLocalization({
	name = "Абсолютні чемпіони"
})

L:SetMiscLocalization({
	YellCombatEnd	= "Ви чудово боролися! Наступним випробуванням стане битва з одним із членів Авангарду. Ви перевірите свої сили у сутичці з гідним суперником."
})

----------------------------------
--  Argent Confessor Paletress  --
----------------------------------
L = DBM:GetModLocalization("Confessor")

L:SetGeneralLocalization({
	name = "Сповідниця Пейлтресс"
})

L:SetMiscLocalization({
	YellCombatEnd	= "Чудово!"
})

-----------------------
--  Eadric the Pure  --
-----------------------
L = DBM:GetModLocalization("EadricthePure")

L:SetGeneralLocalization({
	name = "Едрік Чистий"
})

L:SetMiscLocalization({
	YellCombatEnd	= "Я здаюсь! Я переможений. Чудова робота. Чи можна тепер тікати?"
})

--------------------
--  Pit of Saron  --
---------------------
--  Ick and Krick  --
---------------------
L = DBM:GetModLocalization("Ick")

L:SetGeneralLocalization({
	name = "Ік та Крик"
})

----------------------------
--  Forgemaster Garfrost  --
----------------------------
L = DBM:GetModLocalization("ForgemasterGarfrost")

L:SetGeneralLocalization({
	name = "Начальник кузні Гархлад"
})

L:SetOptionLocalization({
	AchievementCheck			= "Оголошувати попередження про досягнення 'Не чекай до одинадцяти!' у чат групи"
})

L:SetMiscLocalization({
	SaroniteRockThrow	= "%s шпурляє в вас глибою сароніту!",
	AchievementWarning	= "Попередження: %s отримав %d стаків Вічної мерзлоти",
	AchievementFailed	= ">> ДОСЯГНЕННЯ ПРОВАЛЕНО: %s отримав %d стаків Вічної мерзлоти <<"
})

----------------------------
--  Scourgelord Tyrannus  --
----------------------------
L = DBM:GetModLocalization("ScourgelordTyrannus")

L:SetGeneralLocalization({
	name = "Король Плеті Тираній"
})

L:SetMiscLocalization({
	CombatStart	= "На жаль, безстрашні герої ваша нав'язливість прискорила розв'язку. Ви чуєте гуркіт кісток і скрегіт стали за вашими спинами? Це провісники швидкої смерті.",
	HoarfrostTarget	= "Крижаний змій Іней дивиться на (%S+), готуючи морозну атаку!",
	YellCombatEnd	= "Не може бути... Інею... Попередь..."
})

----------------------
--  Forge of Souls  --
----------------------
--  Bronjahm  --
----------------
L = DBM:GetModLocalization("Bronjahm")

L:SetGeneralLocalization({
	name = "Броньям"
})

-------------------------
--  Devourer of Souls  --
-------------------------
L = DBM:GetModLocalization("DevourerofSouls")

L:SetGeneralLocalization({
	name = "Пожирач Душ"
})

---------------------------
--  Halls of Reflection  --
---------------------------
--  Wave Timers  --
-------------------
L = DBM:GetModLocalization("HoRWaveTimer")

L:SetGeneralLocalization({
	name = "Таймери хвиль"
})

L:SetWarningLocalization({
	WarnNewWaveSoon	= "Скоро нова хвиля",
	WarnNewWave		= "%s входить у бій"
})

L:SetTimerLocalization({
	TimerNextWave	= "Наступна хвиля"
})

L:SetOptionLocalization({
	WarnNewWave			= "Попередження про вступ боса до бою",
	WarnNewWaveSoon		= "Попереджати заздалегідь про нову хвилю (після боса 5-ої хвилі)",
	ShowAllWaveWarnings	= "Попередження для всіх хвиль",
	TimerNextWave		= "Відлік до наступної хвилі (після боса 5-ої хвилі)",
	ShowAllWaveTimers	= "Попередження та відлік для всіх хвиль (неточний)"
})

L:SetMiscLocalization({
	Falric		= "Фалрік",
	WaveCheck	= "Відображено атаки привидів = (%d+)/10"
})

--------------
--  Falric  --
--------------
L = DBM:GetModLocalization("Falric")

L:SetGeneralLocalization({
	name = "Фалрік"
})

--------------
--  Marwyn  --
--------------
L = DBM:GetModLocalization("Marwyn")

L:SetGeneralLocalization({
	name = "Марвін"
})

-----------------------
--  Lich King Event  --
-----------------------
L = DBM:GetModLocalization("LichKingEvent")

L:SetGeneralLocalization({
	name = "Втеча від Артаса"
})

L:SetTimerLocalization({
	achievementEscape	= "Час для втечі"
})

L:SetOptionLocalization({
	WarnWave	= "Попередження для хвиль, що прибувають"
})

L:SetMiscLocalization({
	ArthasYellKill	= "ВОГОНЬ! ВОГОНЬ!",
	Ghoul			= "Гнівна вовка",		--creature id 36940. Not sure how to use these in function above to simplify locals though. :\
	Abom			= "Незграбне поганище",		--creature id 37069
	WitchDoctor		= "Воскресений відьмак",	--creature id 36941
	Wave1			= "^ Бігти нікуди.",
	Wave2			= "Підкоріться смерті, що леденить!",
	Wave3			= "Ви у пастці!",
	Wave4			= "Як довго ви зможете чинити опір?"
})
