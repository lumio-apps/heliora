// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => 'సౌర కుటుంబాన్ని అన్వేషించండి, పూర్తిగా ఆఫ్‌లైన్‌లో';

  @override
  String get navExplore => 'అన్వేషించు';

  @override
  String get navCompare => 'పోలిక';

  @override
  String get navWeight => 'బరువు';

  @override
  String get navQuiz => 'క్విజ్';

  @override
  String get viewMode => 'వీక్షణ మోడ్';

  @override
  String get settings => 'సెట్టింగ్‌లు';

  @override
  String get notToScale => 'స్కేల్ ప్రకారం కాదు · తెరవడానికి గ్రహంపై నొక్కండి';

  @override
  String get dragToRotate => 'తిప్పడానికి లాగండి · జూమ్ కోసం పించ్ చేయండి';

  @override
  String get planetsTitle => 'గ్రహాలు';

  @override
  String get planetMercury => 'బుధుడు';

  @override
  String get planetVenus => 'శుక్రుడు';

  @override
  String get planetEarth => 'భూమి';

  @override
  String get planetMars => 'అంగారకుడు';

  @override
  String get planetJupiter => 'బృహస్పతి';

  @override
  String get planetSaturn => 'శని';

  @override
  String get planetUranus => 'యురేనస్';

  @override
  String get planetNeptune => 'నెప్ట్యూన్';

  @override
  String planetOrder(int n) {
    return 'సూర్యుని నుండి గ్రహం సంఖ్య $n';
  }

  @override
  String get openDetails => 'వివరాలు తెరవండి';

  @override
  String get diameter => 'వ్యాసం';

  @override
  String get gravity => 'గురుత్వాకర్షణ';

  @override
  String get avgTemp => 'సగటు ఉష్ణోగ్రత';

  @override
  String get avgTempShort => 'సగటు ఉష్ణం';

  @override
  String get dayLength => 'రోజు';

  @override
  String get yearLength => 'సంవత్సరం';

  @override
  String get moons => 'తెలిసిన చంద్రులు';

  @override
  String get moonsShort => 'చంద్రులు';

  @override
  String get distance => 'సూర్యుని నుండి దూరం';

  @override
  String get pressure => 'ఉపరితల పీడనం';

  @override
  String get noSurface => 'ఘన ఉపరితలం లేదు';

  @override
  String valueKm(String value) {
    return '$value కి.మీ';
  }

  @override
  String valueMillionKm(String value) {
    return '$value మిలియన్ కి.మీ';
  }

  @override
  String valueHours(String value) {
    return '$value గంటలు';
  }

  @override
  String valueDays(String value) {
    return '$value రోజులు';
  }

  @override
  String valueYears(String value) {
    return '$value సంవత్సరాలు';
  }

  @override
  String get atmosphere => 'వాతావరణం';

  @override
  String get thinAtmosphere =>
      'దాదాపు వాతావరణం లేదు. ఈ వాయువులు ఎక్సోస్ఫియర్ అనే చాలా పలుచని పొరను ఏర్పరుస్తాయి.';

  @override
  String get oxygen => 'ఆక్సిజన్';

  @override
  String get oxygenVsEarth => 'ఆక్సిజన్: భూమితో పోలిక';

  @override
  String get breathable => 'మనుషులు శ్వాసించడానికి అనుకూలం';

  @override
  String get notBreathable => 'శ్వాసించడానికి అనుకూలం కాదు, స్పేస్‌సూట్ అవసరం';

  @override
  String weightFeelsLike(String weight) {
    return 'భూమిపై $weight కిలోలు ఇక్కడ ఇంత అనిపిస్తుంది';
  }

  @override
  String get gasCo2 => 'కార్బన్ డయాక్సైడ్';

  @override
  String get gasN2 => 'నైట్రోజన్';

  @override
  String get gasO2 => 'ఆక్సిజన్';

  @override
  String get gasAr => 'ఆర్గాన్';

  @override
  String get gasH2 => 'హైడ్రోజన్';

  @override
  String get gasHe => 'హీలియం';

  @override
  String get gasCh4 => 'మీథేన్';

  @override
  String get gasNa => 'సోడియం';

  @override
  String get gasK => 'పొటాషియం';

  @override
  String get compareTitle => 'గ్రహాల పోలిక';

  @override
  String get compareHint => 'పక్కపక్కనే చూడటానికి రెండు గ్రహాలను ఎంచుకోండి.';

  @override
  String get weightTitle => 'ఇతర గ్రహాలపై మీ బరువు';

  @override
  String get weightInput => 'భూమిపై మీ బరువు (కిలో)';

  @override
  String gravityTimes(String factor) {
    return 'భూమి గురుత్వాకర్షణకు $factor×';
  }

  @override
  String get quizTitle => 'గ్రహ క్విజ్';

  @override
  String get quizIntro =>
      'గ్రహాల గురించి 10 ప్రశ్నలు. మీరు ఎన్ని సరిగ్గా చెప్పగలరు?';

  @override
  String get quizStart => 'క్విజ్ ప్రారంభించండి';

  @override
  String quizProgress(int current, int total) {
    return 'ప్రశ్న $current / $total';
  }

  @override
  String get quizNext => 'తదుపరి';

  @override
  String get quizSeeResult => 'ఫలితం చూడండి';

  @override
  String get quizCorrect => 'సరైనది!';

  @override
  String quizWrong(String answer) {
    return 'కాదు. సరైన జవాబు $answer.';
  }

  @override
  String quizScore(int score, int total) {
    return '$total లో $score సరైనవి';
  }

  @override
  String quizBest(int score) {
    return 'ఉత్తమ స్కోరు: $score';
  }

  @override
  String get quizNewBest => 'కొత్త ఉత్తమ స్కోరు!';

  @override
  String get quizAgain => 'మళ్లీ ఆడండి';

  @override
  String get qLargest => 'అతిపెద్ద గ్రహం ఏది?';

  @override
  String get qSmallest => 'అతిచిన్న గ్రహం ఏది?';

  @override
  String get qHottest => 'అత్యంత వేడి గ్రహం ఏది?';

  @override
  String get qColdest => 'అత్యంత చల్లని గ్రహం ఏది?';

  @override
  String get qMostMoons => 'ఏ గ్రహానికి ఎక్కువ తెలిసిన చంద్రులు ఉన్నారు?';

  @override
  String get qBreathable => 'ఏ గ్రహంపై మనుషులు గాలిని శ్వాసించగలరు?';

  @override
  String get qClosest => 'సూర్యునికి అత్యంత దగ్గరి గ్రహం ఏది?';

  @override
  String get qFarthest => 'సూర్యుని నుండి అత్యంత దూరపు గ్రహం ఏది?';

  @override
  String get qStrongestGravity => 'ఏ గ్రహానికి అత్యధిక గురుత్వాకర్షణ ఉంది?';

  @override
  String get qShortestDay => 'ఏ గ్రహం రోజు అతి తక్కువ?';

  @override
  String get qLongestDay => 'ఏ గ్రహం రోజు అతి పొడవు?';

  @override
  String get appearance => 'రూపం';

  @override
  String get theme => 'థీమ్';

  @override
  String get themeSystem => 'సిస్టమ్';

  @override
  String get themeLight => 'లైట్';

  @override
  String get themeDark => 'డార్క్';

  @override
  String get language => 'భాష';

  @override
  String get appLanguage => 'యాప్ భాష';

  @override
  String get languageNote => '20 భాషలు · గ్రహాల పేర్లు కూడా';

  @override
  String get phoneLanguage => 'ఫోన్ భాష';

  @override
  String get updates => 'అప్‌డేట్‌లు';

  @override
  String get version => 'వెర్షన్';

  @override
  String get checkForUpdates => 'అప్‌డేట్‌ల కోసం చూడండి';

  @override
  String get checking => 'తనిఖీ చేస్తోంది…';

  @override
  String get autoUpdateCheck => 'రోజుకు ఒకసారి ఆటోమేటిక్‌గా చూడండి';

  @override
  String get updateNote =>
      'అప్‌డేట్‌లు GitHub Releases నుండి వస్తాయి. మీ సెట్టింగ్‌లు మీ ఫోన్‌లోనే ఉంటాయి.';

  @override
  String get upToDate => 'మీ దగ్గర తాజా వెర్షన్ ఉంది.';

  @override
  String get updateFailed =>
      'GitHub ని చేరుకోలేకపోయాం. ఇంటర్నెట్ చూసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get updateAvailable => 'అప్‌డేట్ అందుబాటులో ఉంది';

  @override
  String updateReady(String version) {
    return 'వెర్షన్ $version డౌన్‌లోడ్‌కు సిద్ధంగా ఉంది.';
  }

  @override
  String get download => 'డౌన్‌లోడ్';

  @override
  String get later => 'తర్వాత';

  @override
  String get about => 'గురించి';

  @override
  String get sourceCode => 'GitHub లో సోర్స్ కోడ్';

  @override
  String get privacyLine => 'ఆఫ్‌లైన్ · ప్రకటనలు లేవు · ట్రాకింగ్ లేదు';

  @override
  String get dataSource => 'వాస్తవాలు: NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'లింక్ తెరవలేకపోయాం.';

  @override
  String get bodySun => 'సూర్యుడు';

  @override
  String get bodyMoon => 'చంద్రుడు';

  @override
  String get bodyPluto => 'ప్లూటో';

  @override
  String get moonIo => 'అయో';

  @override
  String get moonEuropa => 'యూరోపా';

  @override
  String get moonGanymede => 'గానిమీడ్';

  @override
  String get moonCallisto => 'కాలిస్టో';

  @override
  String get moonTitan => 'టైటాన్';

  @override
  String get moonEnceladus => 'ఎన్సెలాడస్';

  @override
  String get moonTriton => 'ట్రైటాన్';

  @override
  String get kindStar => 'మన నక్షత్రం, సౌర కుటుంబ కేంద్రం';

  @override
  String get kindDwarf => 'మరుగుజ్జు గ్రహం';

  @override
  String moonOf(String planet) {
    return '$planet చంద్రుడు';
  }

  @override
  String get orbitPeriod => 'ఒక పరిభ్రమణం';

  @override
  String distanceFrom(String body) {
    return '$body నుండి దూరం';
  }

  @override
  String get composition => 'ఇది దేనితో తయారైంది';

  @override
  String get noAtmosphere => 'నిజమైన వాతావరణం లేదు, దాదాపు శూన్యం.';

  @override
  String get majorMoons => 'ముఖ్య చంద్రులు';

  @override
  String get lifeTitle => 'మనుషులు ఇక్కడ జీవించగలరా?';

  @override
  String get lifeScoreShort => 'జీవ స్కోరు';

  @override
  String get lifeNote =>
      'ఉష్ణోగ్రత, గాలి పీడనం, ఆక్సిజన్, నీరు, ఉపరితలం, గురుత్వాకర్షణ ఆధారంగా లెక్క. భూమికి 10.';

  @override
  String get water => 'నీరు';

  @override
  String get waterLiquid => 'ద్రవ నీరు';

  @override
  String get waterIce => 'మంచు';

  @override
  String get waterOcean => 'మంచు కింద సముద్రం';

  @override
  String get waterNone => 'నీరు లేదు';

  @override
  String get surface => 'ఉపరితలం';

  @override
  String get solidSurface => 'ఘన ఉపరితలం';

  @override
  String get lifeHome => 'అచ్చం ఇంటిలాగే';

  @override
  String get lifeHard => 'చాలా కష్టం, మూసి ఉన్న స్థావరం, స్పేస్‌సూట్ అవసరం';

  @override
  String get lifeNo => 'మనుషులకు అసాధ్యం';

  @override
  String get downloadInstall => 'డౌన్‌లోడ్ చేసి ఇన్‌స్టాల్ చేయండి';

  @override
  String downloadingPercent(String percent) {
    return 'డౌన్‌లోడ్ అవుతోంది… $percent%';
  }

  @override
  String get installNow => 'ఇన్‌స్టాల్';

  @override
  String get allowInstalls =>
      'తెరిచిన స్క్రీన్‌లో Heliora కు యాప్‌లు ఇన్‌స్టాల్ చేసే అనుమతి ఇవ్వండి, తర్వాత తిరిగి వచ్చి ఇన్‌స్టాల్ నొక్కండి.';

  @override
  String get downloadFailed =>
      'డౌన్‌లోడ్ పూర్తి కాలేదు. ఇంటర్నెట్ చూసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get tryAgain => 'మళ్లీ ప్రయత్నించండి';

  @override
  String get today => 'ఈరోజు';

  @override
  String get play => 'ప్లే';

  @override
  String get pause => 'ఆపు';

  @override
  String get monthBack => '30 రోజుల ముందు';

  @override
  String get monthForward => '30 రోజుల తర్వాత';

  @override
  String get positionsNote =>
      'ఈ తేదీన నిజమైన స్థానాలు · పరిమాణం, దూరం స్కేల్ ప్రకారం కాదు · గ్రహంపై నొక్కండి';

  @override
  String get navYou => 'మీరు';

  @override
  String get ageTitle => 'ఇతర గ్రహాలపై మీ వయసు';

  @override
  String get setBirthDate => 'మీ పుట్టిన తేదీ ఇవ్వండి';

  @override
  String get changeBirthDate => 'మార్చు';

  @override
  String nextBirthday(String days) {
    return 'తదుపరి పుట్టినరోజు $days రోజుల్లో';
  }

  @override
  String get ageNote => 'మీ పుట్టిన తేదీ ఈ ఫోన్‌లో మాత్రమే సేవ్ అవుతుంది.';

  @override
  String get share => 'షేర్ చేయండి';

  @override
  String shareText(String planet) {
    return 'Heliora లో $planet, ఉచిత ఆఫ్‌లైన్ సౌర కుటుంబ యాప్: https://github.com/lumio-apps/heliora';
  }

  @override
  String get shareFailed => 'చిత్రాన్ని షేర్ చేయలేకపోయాం.';

  @override
  String get travelTitle => 'ఎంత దూరం?';

  @override
  String get distanceFromEarth => 'ఈరోజు భూమి నుండి దూరం';

  @override
  String get lightTime => 'కాంతికి పట్టే సమయం';

  @override
  String get bySpacecraft => 'గంటకు 60,000 కి.మీ అంతరిక్ష నౌకలో';

  @override
  String get byCar => 'గంటకు 100 కి.మీ కారులో';

  @override
  String valueSeconds(String value) {
    return '$value సె';
  }

  @override
  String valueMinutes(String value) {
    return '$value నిమి';
  }

  @override
  String get sizeTitle => 'పరిమాణం';

  @override
  String sizeTimes(String big, String times, String small) {
    return '$big వెడల్పులో $small కంటే $times× పెద్దది.';
  }

  @override
  String sizeSimilar(String a, String b) {
    return '$a, $b దాదాపు ఒకే పరిమాణం.';
  }

  @override
  String get navSky => 'ఆకాశం';

  @override
  String get skyTitle => 'ఈరాత్రి ఆకాశం';

  @override
  String get chooseCity => 'మీ నగరాన్ని ఎంచుకోండి';

  @override
  String get chooseCityHint =>
      'చంద్రుడిని, ఈరాత్రి కనిపించే గ్రహాలను చూడటానికి దగ్గరి నగరాన్ని ఎంచుకోండి. లొకేషన్ అనుమతి అవసరం లేదు, ఇది ఫోన్‌లోనే ఉంటుంది.';

  @override
  String get searchCity => 'నగరం వెతకండి';

  @override
  String get noCityFound => 'నగరం దొరకలేదు';

  @override
  String get cityNote =>
      'సమయం మీ ఫోన్ టైమ్ జోన్‌లో ఉంది. చీకటి ఆకాశంలో క్షితిజం నుండి కనీసం 5° పైన ఉంటే గ్రహం కనిపిస్తుందని లెక్క.';

  @override
  String illuminated(String percent) {
    return '$percent% వెలుగు';
  }

  @override
  String get moonrise => 'చంద్రోదయం';

  @override
  String get moonset => 'చంద్రాస్తమయం';

  @override
  String get sunset => 'సూర్యాస్తమయం';

  @override
  String get sunrise => 'సూర్యోదయం';

  @override
  String get nextFull => 'తదుపరి పౌర్ణమి';

  @override
  String get nextNew => 'తదుపరి అమావాస్య';

  @override
  String get phaseNew => 'అమావాస్య';

  @override
  String get phaseWaxingCrescent => 'పెరుగుతున్న నెలవంక';

  @override
  String get phaseFirstQuarter => 'శుక్ల అష్టమి';

  @override
  String get phaseWaxingGibbous => 'పెరుగుతున్న చంద్రుడు';

  @override
  String get phaseFull => 'పౌర్ణమి';

  @override
  String get phaseWaningGibbous => 'తరుగుతున్న చంద్రుడు';

  @override
  String get phaseLastQuarter => 'కృష్ణ అష్టమి';

  @override
  String get phaseWaningCrescent => 'తరుగుతున్న నెలవంక';

  @override
  String get planetsTonight => 'ఈరాత్రి గ్రహాలు';

  @override
  String get statusVisible => 'ఈరాత్రి కనిపిస్తుంది';

  @override
  String get statusEvening => 'సాయంత్రం, సూర్యాస్తమయం తర్వాత';

  @override
  String get statusMorning => 'ఉదయం, సూర్యోదయానికి ముందు';

  @override
  String get statusNotVisible => 'ఈరాత్రి కనిపించదు';

  @override
  String bestAt(String time) {
    return 'ఉత్తమ సమయం $time';
  }

  @override
  String altitudeDir(String direction, String degrees) {
    return '$direction, $degrees° ఎత్తులో';
  }

  @override
  String riseSet(String rise, String set) {
    return 'ఉదయం $rise · అస్తమయం $set';
  }

  @override
  String get needsTelescope => 'బైనాక్యులర్ లేదా టెలిస్కోప్ అవసరం';

  @override
  String get dirN => 'ఉత్తరం';

  @override
  String get dirNE => 'ఈశాన్యం';

  @override
  String get dirE => 'తూర్పు';

  @override
  String get dirSE => 'ఆగ్నేయం';

  @override
  String get dirS => 'దక్షిణం';

  @override
  String get dirSW => 'నైరుతి';

  @override
  String get dirW => 'పడమర';

  @override
  String get dirNW => 'వాయువ్యం';

  @override
  String get findPlanet => 'ఆకాశంలో వెతకండి';

  @override
  String finderTitle(String name) {
    return '$name వెతకండి';
  }

  @override
  String get pointPhone => 'ఫోన్‌ను పైకెత్తి నెమ్మదిగా తిప్పండి.';

  @override
  String turnRight(String degrees) {
    return '$degrees° కుడివైపు తిరగండి';
  }

  @override
  String turnLeft(String degrees) {
    return '$degrees° ఎడమవైపు తిరగండి';
  }

  @override
  String tiltUp(String degrees) {
    return '$degrees° పైకి ఎత్తండి';
  }

  @override
  String tiltDown(String degrees) {
    return '$degrees° కిందకు దించండి';
  }

  @override
  String onTarget(String name) {
    return '$name సరిగ్గా అక్కడే ఉంది!';
  }

  @override
  String belowHorizon(String name) {
    return '$name ఇప్పుడు క్షితిజం కింద ఉంది.';
  }

  @override
  String risesAt(String time) {
    return 'ఇది $timeకి ఉదయిస్తుంది.';
  }

  @override
  String get noSensor =>
      'ఈ ఫోన్‌లో దిక్సూచి సెన్సర్ లేదు, కాబట్టి ఫైండర్ పనిచేయదు.';

  @override
  String get calibrate =>
      'దిక్సూచిని క్యాలిబ్రేట్ చేయాలి: ఫోన్‌ను కొన్నిసార్లు 8 ఆకారంలో తిప్పండి.';

  @override
  String get phoneNow => 'మీ ఫోన్ చూపుతున్న దిశ';

  @override
  String get finderNote =>
      'ఫోన్ వెనుక భాగాన్ని ఆకాశం వైపు ఉంచి, అయస్కాంతాలకు, లోహానికి దూరంగా ఉంచండి. సూర్యుడిని ఎప్పుడూ చూడకండి.';
}
