// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => 'सूर्यमालेची सफर, पूर्णपणे ऑफलाइन';

  @override
  String get navExplore => 'शोधा';

  @override
  String get navCompare => 'तुलना';

  @override
  String get navWeight => 'वजन';

  @override
  String get navQuiz => 'प्रश्नमंजुषा';

  @override
  String get viewMode => 'दृश्य मोड';

  @override
  String get settings => 'सेटिंग्ज';

  @override
  String get notToScale => 'प्रमाणात नाही · उघडण्यासाठी ग्रहावर टॅप करा';

  @override
  String get dragToRotate => 'फिरवण्यासाठी ओढा · झूमसाठी पिंच करा';

  @override
  String get planetsTitle => 'ग्रह';

  @override
  String get planetMercury => 'बुध';

  @override
  String get planetVenus => 'शुक्र';

  @override
  String get planetEarth => 'पृथ्वी';

  @override
  String get planetMars => 'मंगळ';

  @override
  String get planetJupiter => 'गुरू';

  @override
  String get planetSaturn => 'शनी';

  @override
  String get planetUranus => 'युरेनस';

  @override
  String get planetNeptune => 'नेपच्यून';

  @override
  String planetOrder(int n) {
    return 'सूर्यापासून ग्रह क्रमांक $n';
  }

  @override
  String get openDetails => 'तपशील उघडा';

  @override
  String get diameter => 'व्यास';

  @override
  String get gravity => 'गुरुत्वाकर्षण';

  @override
  String get avgTemp => 'सरासरी तापमान';

  @override
  String get avgTempShort => 'सरासरी तापमान';

  @override
  String get dayLength => 'दिवस';

  @override
  String get yearLength => 'वर्ष';

  @override
  String get moons => 'ज्ञात चंद्र';

  @override
  String get moonsShort => 'चंद्र';

  @override
  String get distance => 'सूर्यापासून अंतर';

  @override
  String get pressure => 'पृष्ठभागावरील दाब';

  @override
  String get noSurface => 'घन पृष्ठभाग नाही';

  @override
  String valueKm(String value) {
    return '$value किमी';
  }

  @override
  String valueMillionKm(String value) {
    return '$value दशलक्ष किमी';
  }

  @override
  String valueHours(String value) {
    return '$value तास';
  }

  @override
  String valueDays(String value) {
    return '$value दिवस';
  }

  @override
  String valueYears(String value) {
    return '$value वर्षे';
  }

  @override
  String get atmosphere => 'वातावरण';

  @override
  String get thinAtmosphere =>
      'जवळजवळ वातावरण नाही. हे वायू एक्सोस्फियर नावाचा अतिशय पातळ थर बनवतात.';

  @override
  String get oxygen => 'ऑक्सिजन';

  @override
  String get oxygenVsEarth => 'ऑक्सिजन: पृथ्वीशी तुलना';

  @override
  String get breathable => 'माणसांना श्वास घेण्यायोग्य';

  @override
  String get notBreathable => 'श्वास घेण्यायोग्य नाही, स्पेससूट लागेल';

  @override
  String weightFeelsLike(String weight) {
    return 'पृथ्वीवरचे $weight किलो इथे इतके वाटतील';
  }

  @override
  String get gasCo2 => 'कार्बन डायऑक्साइड';

  @override
  String get gasN2 => 'नायट्रोजन';

  @override
  String get gasO2 => 'ऑक्सिजन';

  @override
  String get gasAr => 'आर्गॉन';

  @override
  String get gasH2 => 'हायड्रोजन';

  @override
  String get gasHe => 'हीलियम';

  @override
  String get gasCh4 => 'मिथेन';

  @override
  String get gasNa => 'सोडियम';

  @override
  String get gasK => 'पोटॅशियम';

  @override
  String get compareTitle => 'ग्रहांची तुलना';

  @override
  String get compareHint => 'शेजारी शेजारी पाहण्यासाठी दोन ग्रह निवडा.';

  @override
  String get weightTitle => 'इतर ग्रहांवर तुमचे वजन';

  @override
  String get weightInput => 'पृथ्वीवर तुमचे वजन (किलो)';

  @override
  String gravityTimes(String factor) {
    return 'पृथ्वीच्या गुरुत्वाच्या $factor×';
  }

  @override
  String get quizTitle => 'ग्रह प्रश्नमंजुषा';

  @override
  String get quizIntro => 'ग्रहांबद्दल 10 प्रश्न. तुम्ही किती बरोबर देऊ शकता?';

  @override
  String get quizStart => 'प्रश्नमंजुषा सुरू करा';

  @override
  String quizProgress(int current, int total) {
    return 'प्रश्न $current / $total';
  }

  @override
  String get quizNext => 'पुढे';

  @override
  String get quizSeeResult => 'निकाल पहा';

  @override
  String get quizCorrect => 'बरोबर!';

  @override
  String quizWrong(String answer) {
    return 'नाही. बरोबर उत्तर $answer आहे.';
  }

  @override
  String quizScore(int score, int total) {
    return '$total पैकी $score बरोबर';
  }

  @override
  String quizBest(int score) {
    return 'सर्वोत्तम गुण: $score';
  }

  @override
  String get quizNewBest => 'नवीन सर्वोत्तम गुण!';

  @override
  String get quizAgain => 'पुन्हा खेळा';

  @override
  String get qLargest => 'सर्वात मोठा ग्रह कोणता?';

  @override
  String get qSmallest => 'सर्वात लहान ग्रह कोणता?';

  @override
  String get qHottest => 'सर्वात उष्ण ग्रह कोणता?';

  @override
  String get qColdest => 'सर्वात थंड ग्रह कोणता?';

  @override
  String get qMostMoons => 'कोणत्या ग्रहाला सर्वाधिक ज्ञात चंद्र आहेत?';

  @override
  String get qBreathable => 'कोणत्या ग्रहावर माणूस हवेत श्वास घेऊ शकतो?';

  @override
  String get qClosest => 'सूर्याच्या सर्वात जवळचा ग्रह कोणता?';

  @override
  String get qFarthest => 'सूर्यापासून सर्वात दूरचा ग्रह कोणता?';

  @override
  String get qStrongestGravity => 'कोणत्या ग्रहाचे गुरुत्वाकर्षण सर्वाधिक आहे?';

  @override
  String get qShortestDay => 'कोणत्या ग्रहाचा दिवस सर्वात लहान आहे?';

  @override
  String get qLongestDay => 'कोणत्या ग्रहाचा दिवस सर्वात मोठा आहे?';

  @override
  String get appearance => 'स्वरूप';

  @override
  String get theme => 'थीम';

  @override
  String get themeSystem => 'सिस्टम';

  @override
  String get themeLight => 'लाइट';

  @override
  String get themeDark => 'डार्क';

  @override
  String get language => 'भाषा';

  @override
  String get appLanguage => 'ॲपची भाषा';

  @override
  String get languageNote => '20 भाषा · ग्रहांची नावेही';

  @override
  String get phoneLanguage => 'फोनची भाषा';

  @override
  String get updates => 'अपडेट';

  @override
  String get version => 'आवृत्ती';

  @override
  String get checkForUpdates => 'अपडेट तपासा';

  @override
  String get checking => 'तपासत आहे…';

  @override
  String get autoUpdateCheck => 'दिवसातून एकदा आपोआप तपासा';

  @override
  String get updateNote =>
      'अपडेट GitHub Releases वरून येतात. तुमच्या सेटिंग्ज फोनमध्येच राहतात.';

  @override
  String get upToDate => 'तुमच्याकडे नवीनतम आवृत्ती आहे.';

  @override
  String get updateFailed =>
      'GitHub पर्यंत पोहोचता आले नाही. इंटरनेट तपासून पुन्हा प्रयत्न करा.';

  @override
  String get updateAvailable => 'अपडेट उपलब्ध आहे';

  @override
  String updateReady(String version) {
    return 'आवृत्ती $version डाउनलोडसाठी तयार आहे.';
  }

  @override
  String get download => 'डाउनलोड';

  @override
  String get later => 'नंतर';

  @override
  String get about => 'माहिती';

  @override
  String get sourceCode => 'GitHub वर सोर्स कोड';

  @override
  String get privacyLine => 'ऑफलाइन · जाहिराती नाहीत · ट्रॅकिंग नाही';

  @override
  String get dataSource => 'माहिती: NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'लिंक उघडता आली नाही.';

  @override
  String get bodySun => 'सूर्य';

  @override
  String get bodyMoon => 'चंद्र';

  @override
  String get bodyPluto => 'प्लूटो';

  @override
  String get moonIo => 'आयो';

  @override
  String get moonEuropa => 'युरोपा';

  @override
  String get moonGanymede => 'गॅनिमीड';

  @override
  String get moonCallisto => 'कॅलिस्टो';

  @override
  String get moonTitan => 'टायटन';

  @override
  String get moonEnceladus => 'एन्सेलाडस';

  @override
  String get moonTriton => 'ट्रायटन';

  @override
  String get kindStar => 'आपला तारा, सूर्यमालेचे केंद्र';

  @override
  String get kindDwarf => 'बटू ग्रह';

  @override
  String moonOf(String planet) {
    return '$planet चा चंद्र';
  }

  @override
  String get orbitPeriod => 'एक प्रदक्षिणा';

  @override
  String distanceFrom(String body) {
    return '$body पासून अंतर';
  }

  @override
  String get composition => 'हे कशापासून बनले आहे';

  @override
  String get noAtmosphere => 'खरे वातावरण नाही, जवळजवळ निर्वात आहे.';

  @override
  String get majorMoons => 'मुख्य चंद्र';

  @override
  String get lifeTitle => 'माणूस इथे राहू शकेल का?';

  @override
  String get lifeScoreShort => 'जीवन गुण';

  @override
  String get lifeNote =>
      'तापमान, हवेचा दाब, ऑक्सिजन, पाणी, पृष्ठभाग आणि गुरुत्वाकर्षणावरून मोजले. पृथ्वीचे गुण 10.';

  @override
  String get water => 'पाणी';

  @override
  String get waterLiquid => 'द्रव पाणी';

  @override
  String get waterIce => 'बर्फ';

  @override
  String get waterOcean => 'बर्फाखाली महासागर';

  @override
  String get waterNone => 'पाणी नाही';

  @override
  String get surface => 'पृष्ठभाग';

  @override
  String get solidSurface => 'घन पृष्ठभाग';

  @override
  String get lifeHome => 'अगदी घरासारखे';

  @override
  String get lifeHard => 'खूप कठीण, बंद तळ आणि स्पेससूट लागेल';

  @override
  String get lifeNo => 'माणसांसाठी अशक्य';

  @override
  String get downloadInstall => 'डाउनलोड करून इन्स्टॉल करा';

  @override
  String downloadingPercent(String percent) {
    return 'डाउनलोड होत आहे… $percent%';
  }

  @override
  String get installNow => 'इन्स्टॉल करा';

  @override
  String get allowInstalls =>
      'उघडलेल्या स्क्रीनवर Heliora ला ॲप इन्स्टॉल करण्याची परवानगी द्या, मग परत येऊन इन्स्टॉल दाबा.';

  @override
  String get downloadFailed =>
      'डाउनलोड पूर्ण झाले नाही. इंटरनेट तपासून पुन्हा प्रयत्न करा.';

  @override
  String get tryAgain => 'पुन्हा प्रयत्न करा';

  @override
  String get today => 'आज';

  @override
  String get play => 'चालवा';

  @override
  String get pause => 'थांबवा';

  @override
  String get monthBack => '30 दिवस आधी';

  @override
  String get monthForward => '30 दिवस नंतर';

  @override
  String get positionsNote =>
      'या तारखेची खरी स्थिती · आकार आणि अंतर प्रमाणात नाही · ग्रहावर टॅप करा';

  @override
  String get navYou => 'तुम्ही';

  @override
  String get ageTitle => 'इतर ग्रहांवर तुमचे वय';

  @override
  String get setBirthDate => 'तुमची जन्मतारीख टाका';

  @override
  String get changeBirthDate => 'बदला';

  @override
  String nextBirthday(String days) {
    return 'पुढचा वाढदिवस $days दिवसांत';
  }

  @override
  String get ageNote => 'तुमची जन्मतारीख फक्त या फोनमध्येच सेव्ह होते.';

  @override
  String get share => 'शेअर करा';

  @override
  String shareText(String planet) {
    return 'Heliora मध्ये $planet, मोफत ऑफलाइन सूर्यमाला ॲप: https://github.com/lumio-apps/heliora';
  }

  @override
  String get shareFailed => 'चित्र शेअर करता आले नाही.';

  @override
  String get travelTitle => 'किती दूर आहे?';

  @override
  String get distanceFromEarth => 'आज पृथ्वीपासून अंतर';

  @override
  String get lightTime => 'प्रकाशाला लागतात';

  @override
  String get bySpacecraft => 'ताशी 60,000 किमी अंतराळयानाने';

  @override
  String get byCar => 'ताशी 100 किमी कारने';

  @override
  String valueSeconds(String value) {
    return '$value सेकंद';
  }

  @override
  String valueMinutes(String value) {
    return '$value मिनिटे';
  }

  @override
  String get sizeTitle => 'आकार';

  @override
  String sizeTimes(String big, String times, String small) {
    return '$big रुंदीत $small पेक्षा $times× मोठा आहे.';
  }

  @override
  String sizeSimilar(String a, String b) {
    return '$a आणि $b जवळजवळ सारख्या आकाराचे आहेत.';
  }

  @override
  String get navSky => 'आकाश';

  @override
  String get skyTitle => 'आजच्या रात्रीचे आकाश';

  @override
  String get chooseCity => 'तुमचे शहर निवडा';

  @override
  String get chooseCityHint =>
      'चंद्र आणि आज रात्री दिसणारे ग्रह पाहण्यासाठी जवळचे शहर निवडा. लोकेशनची परवानगी लागत नाही, आणि हे फोनमध्येच राहते.';

  @override
  String get searchCity => 'शहर शोधा';

  @override
  String get noCityFound => 'शहर सापडले नाही';

  @override
  String get cityNote =>
      'वेळ तुमच्या फोनच्या टाइम झोनमध्ये आहे. अंधाऱ्या आकाशात क्षितिजापासून किमान 5° वर असल्यास ग्रह दिसतो असे मानले जाते.';

  @override
  String illuminated(String percent) {
    return '$percent% प्रकाशित';
  }

  @override
  String get moonrise => 'चंद्रोदय';

  @override
  String get moonset => 'चंद्रास्त';

  @override
  String get sunset => 'सूर्यास्त';

  @override
  String get sunrise => 'सूर्योदय';

  @override
  String get nextFull => 'पुढची पौर्णिमा';

  @override
  String get nextNew => 'पुढची अमावस्या';

  @override
  String get phaseNew => 'अमावस्या';

  @override
  String get phaseWaxingCrescent => 'वाढती चंद्रकोर';

  @override
  String get phaseFirstQuarter => 'शुक्ल अष्टमी';

  @override
  String get phaseWaxingGibbous => 'वाढता चंद्र';

  @override
  String get phaseFull => 'पौर्णिमा';

  @override
  String get phaseWaningGibbous => 'कमी होणारा चंद्र';

  @override
  String get phaseLastQuarter => 'कृष्ण अष्टमी';

  @override
  String get phaseWaningCrescent => 'कमी होणारी चंद्रकोर';

  @override
  String get planetsTonight => 'आजच्या रात्रीचे ग्रह';

  @override
  String get statusVisible => 'आज रात्री दिसेल';

  @override
  String get statusEvening => 'संध्याकाळी, सूर्यास्तानंतर';

  @override
  String get statusMorning => 'सकाळी, सूर्योदयापूर्वी';

  @override
  String get statusNotVisible => 'आज रात्री दिसणार नाही';

  @override
  String bestAt(String time) {
    return 'सर्वोत्तम वेळ $time';
  }

  @override
  String altitudeDir(String direction, String degrees) {
    return '$direction, $degrees° उंच';
  }

  @override
  String riseSet(String rise, String set) {
    return 'उदय $rise · अस्त $set';
  }

  @override
  String get needsTelescope => 'दुर्बीण किंवा टेलिस्कोप लागेल';

  @override
  String get dirN => 'उत्तर';

  @override
  String get dirNE => 'ईशान्य';

  @override
  String get dirE => 'पूर्व';

  @override
  String get dirSE => 'आग्नेय';

  @override
  String get dirS => 'दक्षिण';

  @override
  String get dirSW => 'नैऋत्य';

  @override
  String get dirW => 'पश्चिम';

  @override
  String get dirNW => 'वायव्य';

  @override
  String get findPlanet => 'आकाशात शोधा';

  @override
  String finderTitle(String name) {
    return '$name शोधा';
  }

  @override
  String get pointPhone => 'फोन वर धरा आणि हळूहळू फिरवा.';

  @override
  String turnRight(String degrees) {
    return '$degrees° उजवीकडे वळा';
  }

  @override
  String turnLeft(String degrees) {
    return '$degrees° डावीकडे वळा';
  }

  @override
  String tiltUp(String degrees) {
    return '$degrees° वर उचला';
  }

  @override
  String tiltDown(String degrees) {
    return '$degrees° खाली करा';
  }

  @override
  String onTarget(String name) {
    return '$name अगदी तिथेच आहे!';
  }

  @override
  String belowHorizon(String name) {
    return '$name आत्ता क्षितिजाखाली आहे.';
  }

  @override
  String risesAt(String time) {
    return 'तो $time वाजता उगवेल.';
  }

  @override
  String get noSensor =>
      'या फोनमध्ये होकायंत्र सेन्सर नाही, त्यामुळे शोधक काम करणार नाही.';

  @override
  String get calibrate =>
      'होकायंत्र कॅलिब्रेट करायचे आहे: फोन काही वेळा 8 च्या आकारात फिरवा.';

  @override
  String get phoneNow => 'तुमचा फोन या दिशेला आहे';

  @override
  String get finderNote =>
      'फोनची मागची बाजू आकाशाकडे ठेवा आणि चुंबक व धातूपासून दूर ठेवा. सूर्याकडे कधीही पाहू नका.';

  @override
  String get eventsTitle => 'अंतराळातील घटना';

  @override
  String get eventsSubtitle => 'पुढील 12 महिन्यांत आकाशात काय पाहावे.';

  @override
  String eventsNext(String event, String when) {
    return 'पुढील: $event · $when';
  }

  @override
  String get eventFullMoon => 'पौर्णिमा';

  @override
  String get eventNewMoon => 'अमावस्या';

  @override
  String eventOpposition(String planet) {
    return '$planet प्रतियुतीत';
  }

  @override
  String eventEveningElongation(String planet) {
    return '$planet: संध्याकाळी पाहण्याची सर्वोत्तम वेळ';
  }

  @override
  String eventMorningElongation(String planet) {
    return '$planet: सकाळी पाहण्याची सर्वोत्तम वेळ';
  }

  @override
  String eventConjunction(String a, String b) {
    return '$a आणि $b जवळ येतात';
  }

  @override
  String get eventMarchEquinox => 'मार्च विषुव';

  @override
  String get eventJuneSolstice => 'जून अयनांत';

  @override
  String get eventSeptemberEquinox => 'सप्टेंबर विषुव';

  @override
  String get eventDecemberSolstice => 'डिसेंबर अयनांत';

  @override
  String get eventFullMoonDesc =>
      'चंद्राचा पूर्ण चेहरा प्रकाशित असतो. तो सूर्यास्ताच्या सुमारास उगवतो.';

  @override
  String get eventNewMoonDesc =>
      'चंद्र दिसत नाही. तारे आणि ग्रह पाहण्यासाठी महिन्यातील सर्वात अंधारे आकाश.';

  @override
  String eventOppositionDesc(String planet) {
    return '$planet सूर्याच्या अगदी समोर आहे. यंदा तो सर्वात तेजस्वी आहे आणि रात्रभर दिसतो.';
  }

  @override
  String eventEveningDesc(String planet, String degrees) {
    return '$planet सूर्यापासून $degrees° दूर आहे, सर्वाधिक अंतर. सूर्यास्तानंतर पश्चिमेला खाली पाहा.';
  }

  @override
  String eventMorningDesc(String planet, String degrees) {
    return '$planet सूर्यापासून $degrees° दूर आहे, सर्वाधिक अंतर. सूर्योदयापूर्वी पूर्वेला खाली पाहा.';
  }

  @override
  String eventConjunctionDesc(String degrees) {
    return 'आकाशात हे फक्त $degrees° अंतरावरून जातात.';
  }

  @override
  String get eventEquinoxDesc =>
      'पृथ्वीवर सर्वत्र दिवस आणि रात्र जवळजवळ सारखे असतात.';

  @override
  String get eventJuneSolsticeDesc =>
      'उत्तरेत सर्वात मोठा दिवस, दक्षिणेत सर्वात लहान.';

  @override
  String get eventDecemberSolsticeDesc =>
      'उत्तरेत सर्वात लहान दिवस, दक्षिणेत सर्वात मोठा.';

  @override
  String eventMeteorShower(String shower) {
    return '$shower उल्कावर्षाव';
  }

  @override
  String eventMeteorDesc(String rate, String percent) {
    return 'अंधाऱ्या आकाशात तासाला सुमारे $rate पर्यंत उल्का. चंद्र $percent% प्रकाशित असेल.';
  }

  @override
  String get showerQuadrantids => 'क्वाड्रंटिड्स';

  @override
  String get showerLyrids => 'लायरिड्स';

  @override
  String get showerEtaAquariids => 'एटा एक्वेरिड्स';

  @override
  String get showerPerseids => 'पर्सिड्स';

  @override
  String get showerOrionids => 'ओरायोनिड्स';

  @override
  String get showerLeonids => 'लिओनिड्स';

  @override
  String get showerGeminids => 'जेमिनिड्स';

  @override
  String get showerUrsids => 'अर्सिड्स';

  @override
  String get eventToday => 'आज';

  @override
  String get eventTomorrow => 'उद्या';

  @override
  String eventInDays(String days) {
    return '$days दिवसांत';
  }

  @override
  String get eventsNote =>
      'तारखा तुमच्या फोनवरच मोजल्या जातात आणि त्याच्या टाइम झोनमध्ये दिसतात. उल्कावर्षावाचे शिखर दिवस दरवर्षीचे सामान्य दिवस आहेत, एक दिवस मागेपुढे होऊ शकतो. रिमाइंडर तुमच्या फोनवरच राहतात.';

  @override
  String get remindMe => 'मला आठवण करून द्या';

  @override
  String reminderSet(String date) {
    return 'ठीक आहे, मी तुम्हाला $date रोजी आठवण करून देईन.';
  }

  @override
  String get reminderOff => 'रिमाइंडर काढला.';

  @override
  String get reminderTooLate => 'ही घटना खूप जवळ आहे, रिमाइंडर लावता येत नाही.';

  @override
  String get notificationsOff =>
      'Heliora च्या सूचना बंद आहेत. Android सेटिंग्जमध्ये चालू करा.';

  @override
  String get reminderTomorrow => 'उद्या होणार आहे';

  @override
  String get reminderToday => 'आज होत आहे';

  @override
  String get onlineTitle => 'ऑनलाइन सुविधा';

  @override
  String get onlineSubtitle =>
      'अंतराळ स्थानक आणि रॉकेट प्रक्षेपणे दाखवा. तेव्हा Heliora फक्त wheretheiss.at, Celestrak आणि Launch Library 2 शी संपर्क करते, ज्यांना तुमच्या फोनचा इंटरनेट पत्ता दिसू शकतो. आणखी काही पाठवले जात नाही. सुरुवातीला बंद असते.';

  @override
  String get turnOnOnline => 'ऑनलाइन सुविधा चालू करा';

  @override
  String get issTitle => 'अंतराळ स्थानक';

  @override
  String get issCardHint => 'आत्ता कुठे आहे आणि तुमच्या वरून कधी जाईल';

  @override
  String get issNeedsOnline =>
      'स्थानक दाखवण्यासाठी Heliora ला इंटरनेटवरून त्याचा कक्षा डेटा लागतो. तो एकदा डाउनलोड होतो आणि मग काही दिवस ऑफलाइन चालतो.';

  @override
  String get issLoading => 'कक्षा डेटा मिळवत आहे…';

  @override
  String get issFailed =>
      'कक्षा डेटा मिळाला नाही. इंटरनेट तपासा आणि पुन्हा प्रयत्न करा.';

  @override
  String issStale(String days) {
    return 'कक्षा डेटा $days दिवस जुना आहे, त्यामुळे स्थान थोडे चुकू शकते. नवीन घेण्यासाठी इंटरनेटशी जोडा.';
  }

  @override
  String get issHeight => 'उंची';

  @override
  String get issSpeed => 'वेग';

  @override
  String get issFromYou => 'तुमच्यापासून अंतर';

  @override
  String valueKmh(String value) {
    return '$value किमी/तास';
  }

  @override
  String issAboveHorizon(String direction, String degrees) {
    return 'आत्ता तुमच्या क्षितिजावर आहे! $direction दिशेला पाहा, $degrees° उंच.';
  }

  @override
  String get issBelowHorizon => 'आत्ता तुमच्या क्षितिजाखाली आहे.';

  @override
  String issPassesTitle(String city) {
    return '$city वरून पुढील फेऱ्या';
  }

  @override
  String get issNoPasses => 'पुढील 5 दिवसांत चांगली फेरी नाही.';

  @override
  String issMaxHigh(String degrees) {
    return '$degrees° पर्यंत उंच';
  }

  @override
  String issFromTo(String start, String end) {
    return '$start ते $end';
  }

  @override
  String get issVisible => 'सहज दिसेल';

  @override
  String get issHidden => 'दिसणे कठीण';

  @override
  String get issPassTitle => 'अंतराळ स्थानक तुमच्या वरून जात आहे';

  @override
  String issPassBody(String degrees, String direction) {
    return '10 मिनिटांत उगवेल, $degrees° पर्यंत उंच. $direction दिशेला पाहा.';
  }

  @override
  String get issNote =>
      'स्थाने तुमच्या फोनवरच स्थानकाच्या कक्षा डेटावरून मोजली जातात. आकाश अंधारे आणि स्थानकावर सूर्यप्रकाश असताना ते सहज दिसते: चमकदार, वेगवान ताऱ्यासारखे.';

  @override
  String get launchesNeedOnline =>
      'येणारी रॉकेट प्रक्षेपणे येथे पाहण्यासाठी ऑनलाइन सुविधा चालू करा.';

  @override
  String get launchesFailed =>
      'प्रक्षेपण यादी अपडेट होऊ शकली नाही. जतन केलेली यादी दाखवत आहे.';

  @override
  String get launchesNote =>
      'प्रक्षेपणाची वेळ Launch Library 2 कडून येते आणि अनेकदा बदलते. नावे आणि ठिकाणे इंग्रजीत आहेत.';

  @override
  String get launchReminderBody => 'सुमारे एका तासात उड्डाण. वेळ बदलू शकते.';

  @override
  String get launchTimeTbd => 'वेळ अजून ठरलेली नाही';
}
