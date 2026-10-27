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
}
