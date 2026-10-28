// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class AppLocalizationsHy extends AppLocalizations {
  AppLocalizationsHy([String locale = 'hy']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline =>
      'Ուսումնասիրեք Արեգակնային համակարգը՝ ամբողջովին անցանց';

  @override
  String get navExplore => 'Ուսումնասիրել';

  @override
  String get navCompare => 'Համեմատել';

  @override
  String get navWeight => 'Քաշ';

  @override
  String get navQuiz => 'Վիկտորինա';

  @override
  String get viewMode => 'Դիտման ռեժիմ';

  @override
  String get settings => 'Կարգավորումներ';

  @override
  String get notToScale => 'Մասշտաբով չէ · Հպեք մոլորակին՝ այն բացելու համար';

  @override
  String get dragToRotate => 'Քաշեք՝ պտտելու համար · Մատներով մեծացրեք';

  @override
  String get planetsTitle => 'Մոլորակներ';

  @override
  String get planetMercury => 'Մերկուրի';

  @override
  String get planetVenus => 'Վեներա';

  @override
  String get planetEarth => 'Երկիր';

  @override
  String get planetMars => 'Մարս';

  @override
  String get planetJupiter => 'Յուպիտեր';

  @override
  String get planetSaturn => 'Սատուրն';

  @override
  String get planetUranus => 'Ուրան';

  @override
  String get planetNeptune => 'Նեպտուն';

  @override
  String planetOrder(int n) {
    return 'Արեգակից $n-րդ մոլորակը';
  }

  @override
  String get openDetails => 'Բացել մանրամասները';

  @override
  String get diameter => 'Տրամագիծ';

  @override
  String get gravity => 'Ձգողություն';

  @override
  String get avgTemp => 'Միջին ջերմաստիճան';

  @override
  String get avgTempShort => 'Միջին ջերմ.';

  @override
  String get dayLength => 'Օր';

  @override
  String get yearLength => 'Տարի';

  @override
  String get moons => 'Հայտնի արբանյակներ';

  @override
  String get moonsShort => 'Արբանյակներ';

  @override
  String get distance => 'Հեռավորությունը Արեգակից';

  @override
  String get pressure => 'Ճնշումը մակերևույթին';

  @override
  String get noSurface => 'Պինդ մակերևույթ չունի';

  @override
  String valueKm(String value) {
    return '$value կմ';
  }

  @override
  String valueMillionKm(String value) {
    return '$value միլիոն կմ';
  }

  @override
  String valueHours(String value) {
    return '$value ժ';
  }

  @override
  String valueDays(String value) {
    return '$value օր';
  }

  @override
  String valueYears(String value) {
    return '$value տարի';
  }

  @override
  String get atmosphere => 'Մթնոլորտ';

  @override
  String get thinAtmosphere =>
      'Գրեթե մթնոլորտ չունի։ Այս գազերը կազմում են շատ բարակ շերտ՝ էկզոսֆերա։';

  @override
  String get oxygen => 'Թթվածին';

  @override
  String get oxygenVsEarth => 'Թթվածինը՝ Երկրի համեմատ';

  @override
  String get breathable => 'Պիտանի է մարդու շնչառության համար';

  @override
  String get notBreathable =>
      'Շնչել հնարավոր չէ, անհրաժեշտ է տիեզերական հագուստ';

  @override
  String weightFeelsLike(String weight) {
    return 'Երկրի վրա $weight կգ-ն այստեղ կլինի';
  }

  @override
  String get gasCo2 => 'Ածխաթթու գազ';

  @override
  String get gasN2 => 'Ազոտ';

  @override
  String get gasO2 => 'Թթվածին';

  @override
  String get gasAr => 'Արգոն';

  @override
  String get gasH2 => 'Ջրածին';

  @override
  String get gasHe => 'Հելիում';

  @override
  String get gasCh4 => 'Մեթան';

  @override
  String get gasNa => 'Նատրիում';

  @override
  String get gasK => 'Կալիում';

  @override
  String get compareTitle => 'Մոլորակների համեմատություն';

  @override
  String get compareHint => 'Ընտրեք երկու մոլորակ՝ կողք կողքի տեսնելու համար։';

  @override
  String get weightTitle => 'Ձեր քաշը այլ մոլորակների վրա';

  @override
  String get weightInput => 'Ձեր քաշը Երկրի վրա (կգ)';

  @override
  String gravityTimes(String factor) {
    return 'Երկրի ձգողության $factor×';
  }

  @override
  String get quizTitle => 'Մոլորակների վիկտորինա';

  @override
  String get quizIntro =>
      '10 հարց մոլորակների մասին։ Քանի՞սին կպատասխանեք ճիշտ։';

  @override
  String get quizStart => 'Սկսել վիկտորինան';

  @override
  String quizProgress(int current, int total) {
    return 'Հարց $current/$total';
  }

  @override
  String get quizNext => 'Հաջորդը';

  @override
  String get quizSeeResult => 'Տեսնել արդյունքը';

  @override
  String get quizCorrect => 'Ճիշտ է։';

  @override
  String quizWrong(String answer) {
    return 'Ոչ այնքան։ Պատասխանն է՝ $answer։';
  }

  @override
  String quizScore(int score, int total) {
    return '$total-ից $score ճիշտ պատասխան';
  }

  @override
  String quizBest(int score) {
    return 'Լավագույն արդյունք՝ $score';
  }

  @override
  String get quizNewBest => 'Նոր լավագույն արդյունք։';

  @override
  String get quizAgain => 'Խաղալ նորից';

  @override
  String get qLargest => 'Ո՞ր մոլորակն է ամենամեծը';

  @override
  String get qSmallest => 'Ո՞ր մոլորակն է ամենափոքրը';

  @override
  String get qHottest => 'Ո՞ր մոլորակն է ամենատաքը';

  @override
  String get qColdest => 'Ո՞ր մոլորակն է ամենացուրտը';

  @override
  String get qMostMoons => 'Ո՞ր մոլորակն ունի ամենաշատ հայտնի արբանյակներ';

  @override
  String get qBreathable => 'Ո՞ր մոլորակի վրա կարող են մարդիկ շնչել օդը';

  @override
  String get qClosest => 'Ո՞ր մոլորակն է ամենամոտը Արեգակին';

  @override
  String get qFarthest => 'Ո՞ր մոլորակն է ամենահեռուն Արեգակից';

  @override
  String get qStrongestGravity => 'Ո՞ր մոլորակի ձգողությունն է ամենաուժեղը';

  @override
  String get qShortestDay => 'Ո՞ր մոլորակի օրն է ամենակարճը';

  @override
  String get qLongestDay => 'Ո՞ր մոլորակի օրն է ամենաերկարը';

  @override
  String get appearance => 'Տեսք';

  @override
  String get theme => 'Թեմա';

  @override
  String get themeSystem => 'Համակարգային';

  @override
  String get themeLight => 'Բաց';

  @override
  String get themeDark => 'Մուգ';

  @override
  String get language => 'Լեզու';

  @override
  String get appLanguage => 'Հավելվածի լեզուն';

  @override
  String get languageNote => '20 լեզու · նաև մոլորակների անունները';

  @override
  String get phoneLanguage => 'Հեռախոսի լեզուն';

  @override
  String get updates => 'Թարմացումներ';

  @override
  String get version => 'Տարբերակ';

  @override
  String get checkForUpdates => 'Ստուգել թարմացումները';

  @override
  String get checking => 'Ստուգվում է…';

  @override
  String get autoUpdateCheck => 'Ավտոմատ ստուգել օրը մեկ անգամ';

  @override
  String get updateNote =>
      'Թարմացումները գալիս են GitHub Releases-ից։ Ձեր կարգավորումները մնում են հեռախոսում։';

  @override
  String get upToDate => 'Դուք ունեք վերջին տարբերակը։';

  @override
  String get updateFailed =>
      'Չհաջողվեց միանալ GitHub-ին։ Ստուգեք ինտերնետը և նորից փորձեք։';

  @override
  String get updateAvailable => 'Հասանելի է թարմացում';

  @override
  String updateReady(String version) {
    return '$version տարբերակը պատրաստ է ներբեռնման։';
  }

  @override
  String get download => 'Ներբեռնել';

  @override
  String get later => 'Ավելի ուշ';

  @override
  String get about => 'Մասին';

  @override
  String get sourceCode => 'Սկզբնական կոդը GitHub-ում';

  @override
  String get privacyLine => 'Անցանց · Առանց գովազդի · Առանց հետևման';

  @override
  String get dataSource => 'Տվյալներ՝ NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'Չհաջողվեց բացել հղումը։';

  @override
  String get bodySun => 'Արեգակ';

  @override
  String get bodyMoon => 'Լուսին';

  @override
  String get bodyPluto => 'Պլուտոն';

  @override
  String get moonIo => 'Իո';

  @override
  String get moonEuropa => 'Եվրոպա';

  @override
  String get moonGanymede => 'Գանիմեդ';

  @override
  String get moonCallisto => 'Կալիստո';

  @override
  String get moonTitan => 'Տիտան';

  @override
  String get moonEnceladus => 'Էնցելադ';

  @override
  String get moonTriton => 'Տրիտոն';

  @override
  String get kindStar => 'Մեր աստղը՝ Արեգակնային համակարգի կենտրոնը';

  @override
  String get kindDwarf => 'Գաճաճ մոլորակ';

  @override
  String moonOf(String planet) {
    return '$planet-ի արբանյակ';
  }

  @override
  String get orbitPeriod => 'Մեկ պտույտ';

  @override
  String distanceFrom(String body) {
    return 'Հեռավորությունը՝ $body';
  }

  @override
  String get composition => 'Ինչից է բաղկացած';

  @override
  String get noAtmosphere => 'Իրական մթնոլորտ չունի, գրեթե վակուում է։';

  @override
  String get majorMoons => 'Գլխավոր արբանյակներ';

  @override
  String get lifeTitle => 'Կարո՞ղ են մարդիկ այստեղ ապրել';

  @override
  String get lifeScoreShort => 'Կյանքի միավոր';

  @override
  String get lifeNote =>
      'Հաշվված է ջերմաստիճանից, օդի ճնշումից, թթվածնից, ջրից, մակերևույթից և ձգողությունից։ Երկիրը ստանում է 10։';

  @override
  String get water => 'Ջուր';

  @override
  String get waterLiquid => 'Հեղուկ ջուր';

  @override
  String get waterIce => 'Սառույց';

  @override
  String get waterOcean => 'Օվկիանոս սառույցի տակ';

  @override
  String get waterNone => 'Ջուր չկա';

  @override
  String get surface => 'Մակերևույթ';

  @override
  String get solidSurface => 'Պինդ մակերևույթ';

  @override
  String get lifeHome => 'Ճիշտ տան պես';

  @override
  String get lifeHard => 'Շատ դժվար է, պետք են փակ բազա և տիեզերական հագուստ';

  @override
  String get lifeNo => 'Անհնար է մարդկանց համար';

  @override
  String get downloadInstall => 'Ներբեռնել և տեղադրել';

  @override
  String downloadingPercent(String percent) {
    return 'Ներբեռնվում է… $percent%';
  }

  @override
  String get installNow => 'Տեղադրել';

  @override
  String get allowInstalls =>
      'Բացված էկրանին թույլ տվեք Heliora-ին տեղադրել հավելվածներ, հետո վերադարձեք և սեղմեք «Տեղադրել»։';

  @override
  String get downloadFailed =>
      'Ներբեռնումը չավարտվեց։ Ստուգեք ինտերնետը և նորից փորձեք։';

  @override
  String get tryAgain => 'Նորից փորձել';

  @override
  String get today => 'Այսօր';

  @override
  String get play => 'Միացնել';

  @override
  String get pause => 'Դադար';

  @override
  String get monthBack => '30 օր առաջ';

  @override
  String get monthForward => '30 օր հետո';

  @override
  String get positionsNote =>
      'Իրական դիրքերը այս ամսաթվին · Չափերը և հեռավորությունները մասշտաբով չեն · Հպեք մոլորակին';

  @override
  String get navYou => 'Դուք';

  @override
  String get ageTitle => 'Ձեր տարիքը այլ մոլորակների վրա';

  @override
  String get setBirthDate => 'Նշեք ծննդյան ամսաթիվը';

  @override
  String get changeBirthDate => 'Փոխել';

  @override
  String nextBirthday(String days) {
    return 'Հաջորդ ծննդյան օրը՝ $days օրից';
  }

  @override
  String get ageNote => 'Ձեր ծննդյան ամսաթիվը պահվում է միայն այս հեռախոսում։';

  @override
  String get share => 'Կիսվել';

  @override
  String shareText(String planet) {
    return '$planet-ը Heliora-ում՝ անվճար անցանց Արեգակնային համակարգի հավելված․ https://github.com/lumio-apps/heliora';
  }

  @override
  String get shareFailed => 'Չհաջողվեց կիսվել նկարով։';

  @override
  String get travelTitle => 'Որքա՞ն հեռու է';

  @override
  String get distanceFromEarth => 'Հեռավորությունը Երկրից այսօր';

  @override
  String get lightTime => 'Լույսին պետք է';

  @override
  String get bySpacecraft => 'Տիեզերանավով՝ 60 000 կմ/ժ';

  @override
  String get byCar => 'Մեքենայով՝ 100 կմ/ժ';

  @override
  String valueSeconds(String value) {
    return '$value վ';
  }

  @override
  String valueMinutes(String value) {
    return '$value ր';
  }

  @override
  String get sizeTitle => 'Չափ';

  @override
  String sizeTimes(String big, String times, String small) {
    return '$big-ը $times× ավելի լայն է, քան $small-ը։';
  }

  @override
  String sizeSimilar(String a, String b) {
    return '$a-ը և $b-ը գրեթե նույն չափի են։';
  }

  @override
  String get navSky => 'Երկինք';

  @override
  String get skyTitle => 'Այս գիշերվա երկինքը';

  @override
  String get chooseCity => 'Ընտրեք ձեր քաղաքը';

  @override
  String get chooseCityHint =>
      'Ընտրեք մոտակա քաղաքը՝ տեսնելու Լուսինը և այս գիշեր տեսանելի մոլորակները։ Տեղորոշման թույլտվություն պետք չէ, և ընտրությունը մնում է հեռախոսում։';

  @override
  String get searchCity => 'Որոնել քաղաք';

  @override
  String get noCityFound => 'Քաղաք չի գտնվել';

  @override
  String get cityNote =>
      'Ժամերը հեռախոսի ժամային գոտով են։ Մոլորակը համարվում է տեսանելի, եթե մութ երկնքում հորիզոնից առնվազն 5° բարձր է։';

  @override
  String illuminated(String percent) {
    return 'Լուսավորված է $percent%';
  }

  @override
  String get moonrise => 'Լուսնածագ';

  @override
  String get moonset => 'Լուսնամուտ';

  @override
  String get sunset => 'Մայրամուտ';

  @override
  String get sunrise => 'Արևածագ';

  @override
  String get nextFull => 'Հաջորդ լիալուսինը';

  @override
  String get nextNew => 'Հաջորդ նորալուսինը';

  @override
  String get phaseNew => 'Նորալուսին';

  @override
  String get phaseWaxingCrescent => 'Աճող մահիկ';

  @override
  String get phaseFirstQuarter => 'Առաջին քառորդ';

  @override
  String get phaseWaxingGibbous => 'Աճող լուսին';

  @override
  String get phaseFull => 'Լիալուսին';

  @override
  String get phaseWaningGibbous => 'Նվազող լուսին';

  @override
  String get phaseLastQuarter => 'Վերջին քառորդ';

  @override
  String get phaseWaningCrescent => 'Նվազող մահիկ';

  @override
  String get planetsTonight => 'Այս գիշերվա մոլորակները';

  @override
  String get statusVisible => 'Տեսանելի է այս գիշեր';

  @override
  String get statusEvening => 'Երեկոյան, մայրամուտից հետո';

  @override
  String get statusMorning => 'Առավոտյան, արևածագից առաջ';

  @override
  String get statusNotVisible => 'Այս գիշեր տեսանելի չէ';

  @override
  String bestAt(String time) {
    return 'Լավագույնը՝ $time';
  }

  @override
  String altitudeDir(String direction, String degrees) {
    return '$direction, $degrees° բարձրության վրա';
  }

  @override
  String riseSet(String rise, String set) {
    return 'Ծագում $rise · Մայրամուտ $set';
  }

  @override
  String get needsTelescope => 'Պետք է հեռադիտակ կամ աստղադիտակ';

  @override
  String get dirN => 'Հյուսիս';

  @override
  String get dirNE => 'Հյուսիս-արևելք';

  @override
  String get dirE => 'Արևելք';

  @override
  String get dirSE => 'Հարավ-արևելք';

  @override
  String get dirS => 'Հարավ';

  @override
  String get dirSW => 'Հարավ-արևմուտք';

  @override
  String get dirW => 'Արևմուտք';

  @override
  String get dirNW => 'Հյուսիս-արևմուտք';

  @override
  String get findPlanet => 'Գտնել երկնքում';

  @override
  String finderTitle(String name) {
    return 'Գտնել՝ $name';
  }

  @override
  String get pointPhone => 'Բարձրացրեք հեռախոսը և դանդաղ շարժեք։';

  @override
  String turnRight(String degrees) {
    return 'Թեքվեք աջ $degrees°';
  }

  @override
  String turnLeft(String degrees) {
    return 'Թեքվեք ձախ $degrees°';
  }

  @override
  String tiltUp(String degrees) {
    return 'Բարձրացրեք $degrees°';
  }

  @override
  String tiltDown(String degrees) {
    return 'Իջեցրեք $degrees°';
  }

  @override
  String onTarget(String name) {
    return '$name-ը հենց այնտեղ է։';
  }

  @override
  String belowHorizon(String name) {
    return '$name-ը հիմա հորիզոնից ցածր է։';
  }

  @override
  String risesAt(String time) {
    return 'Ծագում է $time-ին։';
  }

  @override
  String get noSensor =>
      'Այս հեռախոսը կողմնացույցի սենսոր չունի, ուստի որոնումը չի աշխատի։';

  @override
  String get calibrate =>
      'Կողմնացույցը պետք է չափաբերել՝ հեռախոսով մի քանի անգամ 8 գծեք։';

  @override
  String get phoneNow => 'Հեռախոսը ուղղված է';

  @override
  String get finderNote =>
      'Պահեք հեռախոսի հետևի մասը երկնքին դեմ և հեռու մագնիսներից ու մետաղից։ Երբեք մի նայեք Արեգակին։';

  @override
  String get eventsTitle => 'Տիեզերական իրադարձություններ';

  @override
  String get eventsSubtitle => 'Ինչ դիտել երկնքում առաջիկա 12 ամիսներին։';

  @override
  String eventsNext(String event, String when) {
    return 'Հաջորդը՝ $event · $when';
  }

  @override
  String get eventFullMoon => 'Լիալուսին';

  @override
  String get eventNewMoon => 'Նորալուսին';

  @override
  String eventOpposition(String planet) {
    return '$planet՝ հակադրության մեջ';
  }

  @override
  String eventEveningElongation(String planet) {
    return '$planet՝ երեկոյան դիտման լավագույն ժամանակ';
  }

  @override
  String eventMorningElongation(String planet) {
    return '$planet՝ առավոտյան դիտման լավագույն ժամանակ';
  }

  @override
  String eventConjunction(String a, String b) {
    return '$a-ը և $b-ը մոտենում են';
  }

  @override
  String get eventMarchEquinox => 'Մարտյան գիշերահավասար';

  @override
  String get eventJuneSolstice => 'Հունիսյան արևադարձ';

  @override
  String get eventSeptemberEquinox => 'Սեպտեմբերյան գիշերահավասար';

  @override
  String get eventDecemberSolstice => 'Դեկտեմբերյան արևադարձ';

  @override
  String get eventFullMoonDesc =>
      'Լուսնի ամբողջ դեմքը լուսավորված է։ Այն ծագում է մայրամուտի շուրջ։';

  @override
  String get eventNewMoonDesc =>
      'Լուսինը չի երևում։ Ամսվա ամենամութ երկինքը աստղեր և մոլորակներ դիտելու համար։';

  @override
  String eventOppositionDesc(String planet) {
    return '$planet-ը Արեգակի հակառակ կողմում է։ Այն այս տարվա ամենապայծառն է և երևում է ամբողջ գիշեր։';
  }

  @override
  String eventEveningDesc(String planet, String degrees) {
    return '$planet-ը Արեգակից $degrees° հեռու է՝ առավելագույն հեռավորության վրա։ Նայեք արևմուտքի ցածր մասին մայրամուտից հետո։';
  }

  @override
  String eventMorningDesc(String planet, String degrees) {
    return '$planet-ը Արեգակից $degrees° հեռու է՝ առավելագույն հեռավորության վրա։ Նայեք արևելքի ցածր մասին արևածագից առաջ։';
  }

  @override
  String eventConjunctionDesc(String degrees) {
    return 'Երկնքում դրանք անցնում են ընդամենը $degrees° հեռավորությամբ։';
  }

  @override
  String get eventEquinoxDesc =>
      'Երկրի վրա ամենուր ցերեկն ու գիշերը գրեթե հավասար են։';

  @override
  String get eventJuneSolsticeDesc =>
      'Ամենաերկար օրը հյուսիսում, ամենակարճը՝ հարավում։';

  @override
  String get eventDecemberSolsticeDesc =>
      'Ամենակարճ օրը հյուսիսում, ամենաերկարը՝ հարավում։';

  @override
  String eventMeteorShower(String shower) {
    return '$shower երկնաքարային հոսք';
  }

  @override
  String eventMeteorDesc(String rate, String percent) {
    return 'Մութ երկնքի տակ մինչև ժամում մոտ $rate ընկնող աստղ։ Լուսինը $percent% լուսավորված կլինի։';
  }

  @override
  String get showerQuadrantids => 'Քվադրանտիդներ';

  @override
  String get showerLyrids => 'Լիրիդներ';

  @override
  String get showerEtaAquariids => 'Էտա Ջրհոսիդներ';

  @override
  String get showerPerseids => 'Պերսեիդներ';

  @override
  String get showerOrionids => 'Օրիոնիդներ';

  @override
  String get showerLeonids => 'Լեոնիդներ';

  @override
  String get showerGeminids => 'Երկվորյակիդներ';

  @override
  String get showerUrsids => 'Ուրսիդներ';

  @override
  String get eventToday => 'Այսօր';

  @override
  String get eventTomorrow => 'Վաղը';

  @override
  String eventInDays(String days) {
    return '$days օրից';
  }

  @override
  String get eventsNote =>
      'Ամսաթվերը հաշվարկվում են ձեր հեռախոսում և ցուցադրվում նրա ժամային գոտով։ Երկնաքարային հոսքերի գագաթնակետերը տարեկան սովորական օրեր են և կարող են շեղվել մեկ օրով։ Հիշեցումները մնում են միայն ձեր հեռախոսում։';

  @override
  String get remindMe => 'Հիշեցնել';

  @override
  String reminderSet(String date) {
    return 'Լավ, կհիշեցնեմ $date-ին։';
  }

  @override
  String get reminderOff => 'Հիշեցումը հեռացվեց։';

  @override
  String get reminderTooLate =>
      'Իրադարձությունը շատ մոտ է, հիշեցում դնել հնարավոր չէ։';

  @override
  String get notificationsOff =>
      'Heliora-ի ծանուցումները անջատված են։ Միացրեք Android-ի կարգավորումներում։';

  @override
  String get reminderTomorrow => 'Վաղը';

  @override
  String get reminderToday => 'Տեղի է ունենում այսօր';

  @override
  String get onlineTitle => 'Առցանց գործառույթներ';

  @override
  String get onlineSubtitle =>
      'Ցույց տալ տիեզերակայանը և հրթիռների արձակումները։ Այդ դեպքում Heliora-ն կապվում է միայն wheretheiss.at-ի, Celestrak-ի և Launch Library 2-ի հետ, որոնք կարող են տեսնել ձեր հեռախոսի ինտերնետ հասցեն։ Ուրիշ ոչինչ չի ուղարկվում։ Լռելյայն անջատված է։';

  @override
  String get turnOnOnline => 'Միացնել առցանց գործառույթները';

  @override
  String get issTitle => 'Տիեզերակայան';

  @override
  String get issCardHint => 'Որտեղ է հիմա և երբ կանցնի ձեր վերևով';

  @override
  String get issNeedsOnline =>
      'Կայանը ցույց տալու համար Heliora-ին պետք է նրա ուղեծրի տվյալները ինտերնետից։ Դրանք ներբեռնվում են մեկ անգամ և հետո մի քանի օր աշխատում են անցանց։';

  @override
  String get issLoading => 'Ուղեծրի տվյալները բեռնվում են…';

  @override
  String get issFailed =>
      'Չհաջողվեց ստանալ ուղեծրի տվյալները։ Ստուգեք ինտերնետը և նորից փորձեք։';

  @override
  String issStale(String days) {
    return 'Ուղեծրի տվյալները $days օրվա հին են, ուստի դիրքը կարող է թեթևակի սխալ լինել։ Թարմացնելու համար միացեք ինտերնետին։';
  }

  @override
  String get issHeight => 'Բարձրություն';

  @override
  String get issSpeed => 'Արագություն';

  @override
  String get issFromYou => 'Հեռավորությունը ձեզանից';

  @override
  String valueKmh(String value) {
    return '$value կմ/ժ';
  }

  @override
  String issAboveHorizon(String direction, String degrees) {
    return 'Հիմա ձեր հորիզոնից վերև է։ Նայեք՝ $direction, $degrees° բարձրության վրա։';
  }

  @override
  String get issBelowHorizon => 'Հիմա ձեր հորիզոնից ցածր է։';

  @override
  String issPassesTitle(String city) {
    return 'Հաջորդ անցումները $city-ի վերևով';
  }

  @override
  String get issNoPasses => 'Հաջորդ 5 օրում լավ անցումներ չկան։';

  @override
  String issMaxHigh(String degrees) {
    return 'Մինչև $degrees° բարձրություն';
  }

  @override
  String issFromTo(String start, String end) {
    return '$start-ից $end';
  }

  @override
  String get issVisible => 'Հեշտ երևում է';

  @override
  String get issHidden => 'Դժվար է երևում';

  @override
  String get issPassTitle => 'Տիեզերակայանը անցնում է ձեր վերևով';

  @override
  String issPassBody(String degrees, String direction) {
    return '10 րոպեից կծագի, մինչև $degrees° բարձրության վրա։ Նայեք՝ $direction։';
  }

  @override
  String get issNote =>
      'Դիրքերը հաշվարկվում են ձեր հեռախոսում՝ կայանի ուղեծրի տվյալներից։ Անցումը հեշտ երևում է, երբ երկինքը մութ է, իսկ կայանը լուսավորված է Արևով. այն նման է պայծառ, արագ աստղի։';

  @override
  String get launchesNeedOnline =>
      'Միացրեք առցանց գործառույթները՝ այստեղ հաջորդ հրթիռային արձակումները տեսնելու համար։';

  @override
  String get launchesFailed =>
      'Չհաջողվեց թարմացնել արձակումների ցանկը։ Ցուցադրվում է պահպանվածը։';

  @override
  String get launchesNote =>
      'Արձակման ժամերը գալիս են Launch Library 2-ից և հաճախ փոխվում են։ Անունները և վայրերը անգլերեն են։';

  @override
  String get launchReminderBody =>
      'Արձակվում է մոտ մեկ ժամից։ Ժամը կարող է փոխվել։';

  @override
  String get launchTimeTbd => 'Ժամը դեռ որոշված չէ';
}
