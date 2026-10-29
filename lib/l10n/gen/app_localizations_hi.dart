// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => 'सौरमंडल की सैर, पूरी तरह ऑफ़लाइन';

  @override
  String get navExplore => 'खोजें';

  @override
  String get navCompare => 'तुलना';

  @override
  String get navWeight => 'वज़न';

  @override
  String get navQuiz => 'क्विज़';

  @override
  String get viewMode => 'दृश्य मोड';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get notToScale => 'पैमाने पर नहीं · ग्रह खोलने के लिए उस पर टैप करें';

  @override
  String get dragToRotate => 'घुमाने के लिए खींचें · ज़ूम के लिए पिंच करें';

  @override
  String get planetsTitle => 'ग्रह';

  @override
  String get planetMercury => 'बुध';

  @override
  String get planetVenus => 'शुक्र';

  @override
  String get planetEarth => 'पृथ्वी';

  @override
  String get planetMars => 'मंगल';

  @override
  String get planetJupiter => 'बृहस्पति';

  @override
  String get planetSaturn => 'शनि';

  @override
  String get planetUranus => 'अरुण';

  @override
  String get planetNeptune => 'वरुण';

  @override
  String planetOrder(int n) {
    return 'सूर्य से ग्रह क्रमांक $n';
  }

  @override
  String get openDetails => 'विवरण खोलें';

  @override
  String get diameter => 'व्यास';

  @override
  String get gravity => 'गुरुत्वाकर्षण';

  @override
  String get avgTemp => 'औसत तापमान';

  @override
  String get avgTempShort => 'औसत तापमान';

  @override
  String get dayLength => 'दिन';

  @override
  String get yearLength => 'वर्ष';

  @override
  String get moons => 'ज्ञात चंद्रमा';

  @override
  String get moonsShort => 'चंद्रमा';

  @override
  String get distance => 'सूर्य से दूरी';

  @override
  String get pressure => 'सतह का दबाव';

  @override
  String get noSurface => 'कोई ठोस सतह नहीं';

  @override
  String valueKm(String value) {
    return '$value किमी';
  }

  @override
  String valueMillionKm(String value) {
    return '$value मिलियन किमी';
  }

  @override
  String valueHours(String value) {
    return '$value घंटे';
  }

  @override
  String valueDays(String value) {
    return '$value दिन';
  }

  @override
  String valueYears(String value) {
    return '$value वर्ष';
  }

  @override
  String get atmosphere => 'वायुमंडल';

  @override
  String get thinAtmosphere =>
      'लगभग कोई वायुमंडल नहीं। ये गैसें एक्सोस्फ़ीयर नाम की बहुत पतली परत बनाती हैं।';

  @override
  String get oxygen => 'ऑक्सीजन';

  @override
  String get oxygenVsEarth => 'ऑक्सीजन: पृथ्वी से तुलना';

  @override
  String get breathable => 'इंसानों के साँस लेने लायक';

  @override
  String get notBreathable => 'साँस लेने लायक नहीं, स्पेससूट ज़रूरी है';

  @override
  String weightFeelsLike(String weight) {
    return 'पृथ्वी के $weight किलो यहाँ इतने लगेंगे';
  }

  @override
  String get gasCo2 => 'कार्बन डाइऑक्साइड';

  @override
  String get gasN2 => 'नाइट्रोजन';

  @override
  String get gasO2 => 'ऑक्सीजन';

  @override
  String get gasAr => 'आर्गन';

  @override
  String get gasH2 => 'हाइड्रोजन';

  @override
  String get gasHe => 'हीलियम';

  @override
  String get gasCh4 => 'मीथेन';

  @override
  String get gasNa => 'सोडियम';

  @override
  String get gasK => 'पोटैशियम';

  @override
  String get compareTitle => 'ग्रहों की तुलना';

  @override
  String get compareHint => 'दो ग्रह चुनें और उन्हें साथ-साथ देखें।';

  @override
  String get weightTitle => 'दूसरे ग्रहों पर आपका वज़न';

  @override
  String get weightInput => 'पृथ्वी पर आपका वज़न (किलो)';

  @override
  String gravityTimes(String factor) {
    return 'पृथ्वी के गुरुत्व का $factor×';
  }

  @override
  String get quizTitle => 'ग्रह क्विज़';

  @override
  String get quizIntro =>
      'ग्रहों और चंद्रमाओं के बारे में 10 सवाल। आप कितने सही कर पाएँगे?';

  @override
  String get quizStart => 'क्विज़ शुरू करें';

  @override
  String quizProgress(int current, int total) {
    return 'सवाल $current / $total';
  }

  @override
  String get quizNext => 'अगला';

  @override
  String get quizSeeResult => 'नतीजा देखें';

  @override
  String get quizCorrect => 'सही!';

  @override
  String quizWrong(String answer) {
    return 'नहीं। सही जवाब है $answer।';
  }

  @override
  String quizScore(int score, int total) {
    return 'आपके $total में से $score सही';
  }

  @override
  String quizBest(int score) {
    return 'सबसे अच्छा स्कोर: $score';
  }

  @override
  String get quizNewBest => 'नया सबसे अच्छा स्कोर!';

  @override
  String get quizAgain => 'फिर से खेलें';

  @override
  String get qLargest => 'सबसे बड़ा ग्रह कौन सा है?';

  @override
  String get qSmallest => 'सबसे छोटा ग्रह कौन सा है?';

  @override
  String get qHottest => 'सबसे गर्म ग्रह कौन सा है?';

  @override
  String get qColdest => 'सबसे ठंडा ग्रह कौन सा है?';

  @override
  String get qMostMoons => 'किस ग्रह के सबसे ज़्यादा ज्ञात चंद्रमा हैं?';

  @override
  String get qBreathable => 'किस ग्रह पर इंसान हवा में साँस ले सकते हैं?';

  @override
  String get qClosest => 'सूर्य के सबसे पास कौन सा ग्रह है?';

  @override
  String get qFarthest => 'सूर्य से सबसे दूर कौन सा ग्रह है?';

  @override
  String get qStrongestGravity => 'किस ग्रह का गुरुत्वाकर्षण सबसे ज़्यादा है?';

  @override
  String get qShortestDay => 'किस ग्रह का दिन सबसे छोटा है?';

  @override
  String get qLongestDay => 'किस ग्रह का दिन सबसे लंबा है?';

  @override
  String get appearance => 'दिखावट';

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
  String get appLanguage => 'ऐप की भाषा';

  @override
  String get languageNote => '20 भाषाएँ · ग्रहों के नाम भी';

  @override
  String get phoneLanguage => 'फ़ोन की भाषा';

  @override
  String get updates => 'अपडेट';

  @override
  String get version => 'वर्ज़न';

  @override
  String get checkForUpdates => 'अपडेट जाँचें';

  @override
  String get checking => 'जाँच हो रही है…';

  @override
  String get autoUpdateCheck => 'रोज़ एक बार अपने-आप जाँचें';

  @override
  String get updateNote =>
      'अपडेट GitHub Releases से आते हैं। आपकी सेटिंग्स आपके फ़ोन में ही रहती हैं।';

  @override
  String get upToDate => 'आपके पास नया वर्ज़न है।';

  @override
  String get updateFailed =>
      'GitHub से जुड़ नहीं पाया। इंटरनेट जाँचें और फिर कोशिश करें।';

  @override
  String get updateAvailable => 'अपडेट उपलब्ध है';

  @override
  String updateReady(String version) {
    return 'वर्ज़न $version डाउनलोड के लिए तैयार है।';
  }

  @override
  String get download => 'डाउनलोड';

  @override
  String get later => 'बाद में';

  @override
  String get about => 'जानकारी';

  @override
  String get sourceCode => 'GitHub पर सोर्स कोड';

  @override
  String get privacyLine => 'ऑफ़लाइन · कोई विज्ञापन नहीं · कोई ट्रैकिंग नहीं';

  @override
  String get dataSource => 'तथ्य: NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'लिंक नहीं खुल पाया।';

  @override
  String get bodySun => 'सूर्य';

  @override
  String get bodyMoon => 'चंद्रमा';

  @override
  String get bodyPluto => 'प्लूटो';

  @override
  String get moonIo => 'आयो';

  @override
  String get moonEuropa => 'यूरोपा';

  @override
  String get moonGanymede => 'गैनिमीड';

  @override
  String get moonCallisto => 'कैलिस्टो';

  @override
  String get moonTitan => 'टाइटन';

  @override
  String get moonEnceladus => 'एन्सेलेडस';

  @override
  String get moonTriton => 'ट्राइटन';

  @override
  String get kindStar => 'हमारा तारा, सौरमंडल का केंद्र';

  @override
  String get kindDwarf => 'बौना ग्रह';

  @override
  String moonOf(String planet) {
    return '$planet का चंद्रमा';
  }

  @override
  String get orbitPeriod => 'एक परिक्रमा';

  @override
  String distanceFrom(String body) {
    return '$body से दूरी';
  }

  @override
  String get composition => 'यह किससे बना है';

  @override
  String get noAtmosphere => 'असली वायुमंडल नहीं है, लगभग निर्वात है।';

  @override
  String get majorMoons => 'मुख्य चंद्रमा';

  @override
  String get lifeTitle => 'क्या इंसान यहाँ रह सकते हैं?';

  @override
  String get lifeScoreShort => 'जीवन स्कोर';

  @override
  String get lifeNote =>
      'तापमान, हवा के दबाव, ऑक्सीजन, पानी, सतह और गुरुत्वाकर्षण से गिना गया। पृथ्वी का स्कोर 10 है।';

  @override
  String get water => 'पानी';

  @override
  String get waterLiquid => 'तरल पानी';

  @override
  String get waterIce => 'बर्फ़';

  @override
  String get waterOcean => 'बर्फ़ के नीचे समुद्र';

  @override
  String get waterNone => 'पानी नहीं';

  @override
  String get surface => 'सतह';

  @override
  String get solidSurface => 'ठोस सतह';

  @override
  String get lifeHome => 'बिल्कुल घर जैसा';

  @override
  String get lifeHard => 'बहुत मुश्किल, बंद बेस और स्पेससूट चाहिए';

  @override
  String get lifeNo => 'इंसानों के लिए असंभव';

  @override
  String get downloadInstall => 'डाउनलोड करके इंस्टॉल करें';

  @override
  String downloadingPercent(String percent) {
    return 'डाउनलोड हो रहा है… $percent%';
  }

  @override
  String get installNow => 'इंस्टॉल करें';

  @override
  String get allowInstalls =>
      'जो स्क्रीन खुली है उसमें Heliora को ऐप इंस्टॉल करने की अनुमति दें, फिर वापस आकर इंस्टॉल दबाएँ।';

  @override
  String get downloadFailed =>
      'डाउनलोड पूरा नहीं हुआ। इंटरनेट जाँचें और फिर कोशिश करें।';

  @override
  String get tryAgain => 'फिर कोशिश करें';

  @override
  String get today => 'आज';

  @override
  String get play => 'चलाएँ';

  @override
  String get pause => 'रोकें';

  @override
  String get monthBack => '30 दिन पहले';

  @override
  String get monthForward => '30 दिन बाद';

  @override
  String get positionsNote =>
      'इस तारीख़ पर असली स्थिति · आकार और दूरी पैमाने पर नहीं · ग्रह पर टैप करें';

  @override
  String get navYou => 'आप';

  @override
  String get ageTitle => 'दूसरे ग्रहों पर आपकी उम्र';

  @override
  String get setBirthDate => 'अपनी जन्मतिथि डालें';

  @override
  String get changeBirthDate => 'बदलें';

  @override
  String nextBirthday(String days) {
    return 'अगला जन्मदिन $days दिन में';
  }

  @override
  String get ageNote => 'आपकी जन्मतिथि सिर्फ़ इसी फ़ोन में सेव होती है।';

  @override
  String get share => 'शेयर करें';

  @override
  String shareText(String planet) {
    return 'Heliora में $planet, मुफ़्त ऑफ़लाइन सौरमंडल ऐप: https://github.com/lumio-apps/heliora';
  }

  @override
  String get shareFailed => 'तस्वीर शेयर नहीं हो पाई।';

  @override
  String get travelTitle => 'कितनी दूर है?';

  @override
  String get distanceFromEarth => 'आज पृथ्वी से दूरी';

  @override
  String get lightTime => 'रोशनी को लगता है';

  @override
  String get bySpacecraft => '60,000 किमी/घंटा वाले अंतरिक्ष यान से';

  @override
  String get byCar => '100 किमी/घंटा वाली कार से';

  @override
  String valueSeconds(String value) {
    return '$value सेकंड';
  }

  @override
  String valueMinutes(String value) {
    return '$value मिनट';
  }

  @override
  String get sizeTitle => 'आकार';

  @override
  String sizeTimes(String big, String times, String small) {
    return '$big चौड़ाई में $small से $times× बड़ा है।';
  }

  @override
  String sizeSimilar(String a, String b) {
    return '$a और $b लगभग एक जितने बड़े हैं।';
  }

  @override
  String get navSky => 'आकाश';

  @override
  String get skyTitle => 'आज रात का आकाश';

  @override
  String get chooseCity => 'अपना शहर चुनें';

  @override
  String get chooseCityHint =>
      'अपने सबसे पास का शहर चुनें, ताकि चाँद और आज रात दिखने वाले ग्रह देख सकें। लोकेशन की अनुमति नहीं चाहिए, और यह आपके फ़ोन में ही रहता है।';

  @override
  String get searchCity => 'शहर खोजें';

  @override
  String get noCityFound => 'कोई शहर नहीं मिला';

  @override
  String get cityNote =>
      'समय आपके फ़ोन के टाइम ज़ोन में है। अंधेरे आकाश में क्षितिज से कम से कम 5° ऊपर होने पर ग्रह दिखने वाला माना जाता है।';

  @override
  String illuminated(String percent) {
    return '$percent% रोशन';
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
  String get nextFull => 'अगली पूर्णिमा';

  @override
  String get nextNew => 'अगली अमावस्या';

  @override
  String get phaseNew => 'अमावस्या';

  @override
  String get phaseWaxingCrescent => 'बढ़ता अर्धचंद्र';

  @override
  String get phaseFirstQuarter => 'शुक्ल अष्टमी';

  @override
  String get phaseWaxingGibbous => 'बढ़ता चंद्रमा';

  @override
  String get phaseFull => 'पूर्णिमा';

  @override
  String get phaseWaningGibbous => 'घटता चंद्रमा';

  @override
  String get phaseLastQuarter => 'कृष्ण अष्टमी';

  @override
  String get phaseWaningCrescent => 'घटता अर्धचंद्र';

  @override
  String get planetsTonight => 'आज रात के ग्रह';

  @override
  String get statusVisible => 'आज रात दिखेगा';

  @override
  String get statusEvening => 'शाम को, सूर्यास्त के बाद';

  @override
  String get statusMorning => 'सुबह, सूर्योदय से पहले';

  @override
  String get statusNotVisible => 'आज रात नहीं दिखेगा';

  @override
  String bestAt(String time) {
    return 'सबसे अच्छा समय $time';
  }

  @override
  String altitudeDir(String direction, String degrees) {
    return '$direction, $degrees° ऊँचा';
  }

  @override
  String riseSet(String rise, String set) {
    return 'उदय $rise · अस्त $set';
  }

  @override
  String get needsTelescope => 'दूरबीन या टेलीस्कोप चाहिए';

  @override
  String get dirN => 'उत्तर';

  @override
  String get dirNE => 'उत्तर-पूर्व';

  @override
  String get dirE => 'पूर्व';

  @override
  String get dirSE => 'दक्षिण-पूर्व';

  @override
  String get dirS => 'दक्षिण';

  @override
  String get dirSW => 'दक्षिण-पश्चिम';

  @override
  String get dirW => 'पश्चिम';

  @override
  String get dirNW => 'उत्तर-पश्चिम';

  @override
  String get findPlanet => 'आकाश में खोजें';

  @override
  String finderTitle(String name) {
    return '$name खोजें';
  }

  @override
  String get pointPhone => 'फ़ोन ऊपर उठाकर धीरे-धीरे घुमाएँ।';

  @override
  String turnRight(String degrees) {
    return '$degrees° दाएँ मुड़ें';
  }

  @override
  String turnLeft(String degrees) {
    return '$degrees° बाएँ मुड़ें';
  }

  @override
  String tiltUp(String degrees) {
    return '$degrees° ऊपर करें';
  }

  @override
  String tiltDown(String degrees) {
    return '$degrees° नीचे करें';
  }

  @override
  String onTarget(String name) {
    return '$name ठीक वहीं है!';
  }

  @override
  String belowHorizon(String name) {
    return '$name अभी क्षितिज के नीचे है।';
  }

  @override
  String risesAt(String time) {
    return 'यह $time पर उगेगा।';
  }

  @override
  String get noSensor =>
      'इस फ़ोन में कंपास सेंसर नहीं है, इसलिए खोजक काम नहीं करेगा।';

  @override
  String get calibrate =>
      'कंपास को कैलिब्रेट करना है: फ़ोन को कुछ बार 8 के आकार में घुमाएँ।';

  @override
  String get phoneNow => 'आपका फ़ोन इस ओर है';

  @override
  String get finderNote =>
      'फ़ोन का पिछला हिस्सा आकाश की ओर रखें और चुंबक व धातु से दूर रखें। सूरज को कभी न देखें।';

  @override
  String get eventsTitle => 'अंतरिक्ष की घटनाएँ';

  @override
  String get eventsSubtitle => 'अगले 12 महीनों में आकाश में क्या देखें।';

  @override
  String eventsNext(String event, String when) {
    return 'अगली: $event · $when';
  }

  @override
  String get eventFullMoon => 'पूर्णिमा';

  @override
  String get eventNewMoon => 'अमावस्या';

  @override
  String eventOpposition(String planet) {
    return '$planet प्रतिमुख (ऑपोज़िशन) में';
  }

  @override
  String eventEveningElongation(String planet) {
    return '$planet: शाम को देखने का सबसे अच्छा समय';
  }

  @override
  String eventMorningElongation(String planet) {
    return '$planet: सुबह देखने का सबसे अच्छा समय';
  }

  @override
  String eventConjunction(String a, String b) {
    return '$a और $b एक-दूसरे के पास';
  }

  @override
  String get eventMarchEquinox => 'मार्च विषुव';

  @override
  String get eventJuneSolstice => 'जून अयनांत';

  @override
  String get eventSeptemberEquinox => 'सितंबर विषुव';

  @override
  String get eventDecemberSolstice => 'दिसंबर अयनांत';

  @override
  String get eventFullMoonDesc =>
      'चाँद का पूरा चेहरा रोशन होता है। यह सूर्यास्त के आसपास उगता है।';

  @override
  String get eventNewMoonDesc =>
      'चाँद छिपा रहता है। तारों और ग्रहों को देखने के लिए महीने का सबसे अंधेरा आकाश।';

  @override
  String eventOppositionDesc(String planet) {
    return '$planet सूरज के ठीक सामने है। इस साल यह सबसे चमकीला है और पूरी रात दिखता है।';
  }

  @override
  String eventEveningDesc(String planet, String degrees) {
    return '$planet सूरज से $degrees° दूर है, यानी सबसे दूर। सूर्यास्त के बाद पश्चिम में नीचे देखें।';
  }

  @override
  String eventMorningDesc(String planet, String degrees) {
    return '$planet सूरज से $degrees° दूर है, यानी सबसे दूर। सूर्योदय से पहले पूर्व में नीचे देखें।';
  }

  @override
  String eventConjunctionDesc(String degrees) {
    return 'आकाश में ये बस $degrees° की दूरी से गुज़रते हैं।';
  }

  @override
  String get eventEquinoxDesc => 'पूरी धरती पर दिन और रात लगभग बराबर होते हैं।';

  @override
  String get eventJuneSolsticeDesc =>
      'उत्तर में सबसे लंबा दिन, दक्षिण में सबसे छोटा।';

  @override
  String get eventDecemberSolsticeDesc =>
      'उत्तर में सबसे छोटा दिन, दक्षिण में सबसे लंबा।';

  @override
  String eventMeteorShower(String shower) {
    return '$shower उल्कापात';
  }

  @override
  String eventMeteorDesc(String rate, String percent) {
    return 'साफ़ अंधेरे आकाश में प्रति घंटे लगभग $rate तक उल्काएँ। चाँद $percent% रोशन रहेगा।';
  }

  @override
  String get showerQuadrantids => 'क्वाड्रेंटिड्स';

  @override
  String get showerLyrids => 'लायरिड्स';

  @override
  String get showerEtaAquariids => 'एटा एक्वेरिड्स';

  @override
  String get showerPerseids => 'पर्सीड्स';

  @override
  String get showerOrionids => 'ओरियोनिड्स';

  @override
  String get showerLeonids => 'लियोनिड्स';

  @override
  String get showerGeminids => 'जेमिनिड्स';

  @override
  String get showerUrsids => 'अर्सिड्स';

  @override
  String get eventToday => 'आज';

  @override
  String get eventTomorrow => 'कल';

  @override
  String eventInDays(String days) {
    return '$days दिन में';
  }

  @override
  String get eventsNote =>
      'तारीख़ें आपके फ़ोन में ही निकाली जाती हैं और उसके टाइम ज़ोन में दिखती हैं। उल्कापात के चरम दिन हर साल के सामान्य दिन हैं, इनमें एक दिन का फ़र्क़ हो सकता है। रिमाइंडर आपके फ़ोन में ही रहते हैं।';

  @override
  String get remindMe => 'मुझे याद दिलाएँ';

  @override
  String reminderSet(String date) {
    return 'ठीक है, मैं आपको $date को याद दिलाऊँगा।';
  }

  @override
  String get reminderOff => 'रिमाइंडर हटा दिया।';

  @override
  String get reminderTooLate => 'यह घटना बहुत पास है, रिमाइंडर नहीं लग सकता।';

  @override
  String get notificationsOff =>
      'Heliora की सूचनाएँ बंद हैं। Android सेटिंग में इन्हें चालू करें।';

  @override
  String get reminderTomorrow => 'कल होने वाला है';

  @override
  String get reminderToday => 'आज हो रहा है';

  @override
  String get onlineTitle => 'ऑनलाइन सुविधाएँ';

  @override
  String get onlineSubtitle =>
      'अंतरिक्ष स्टेशन और रॉकेट लॉन्च दिखाएँ। तब Heliora सिर्फ़ wheretheiss.at, Celestrak और Launch Library 2 से जुड़ता है, जो आपके फ़ोन का इंटरनेट पता देख सकते हैं। और कुछ नहीं भेजा जाता। शुरू में बंद रहता है।';

  @override
  String get turnOnOnline => 'ऑनलाइन सुविधाएँ चालू करें';

  @override
  String get issTitle => 'अंतरिक्ष स्टेशन';

  @override
  String get issCardHint => 'अभी कहाँ है और आपके ऊपर से कब गुज़रेगा';

  @override
  String get issNeedsOnline =>
      'स्टेशन दिखाने के लिए Heliora को इंटरनेट से उसका ऑर्बिट डेटा चाहिए। यह एक बार डाउनलोड होता है और फिर कई दिन ऑफ़लाइन चलता है।';

  @override
  String get issLoading => 'ऑर्बिट डेटा लिया जा रहा है…';

  @override
  String get issFailed =>
      'ऑर्बिट डेटा नहीं मिल सका। इंटरनेट जाँचें और फिर कोशिश करें।';

  @override
  String issStale(String days) {
    return 'ऑर्बिट डेटा $days दिन पुराना है, इसलिए जगह थोड़ी गलत हो सकती है। नया लेने के लिए इंटरनेट से जुड़ें।';
  }

  @override
  String get issHeight => 'ऊँचाई';

  @override
  String get issSpeed => 'रफ़्तार';

  @override
  String get issFromYou => 'आपसे दूरी';

  @override
  String valueKmh(String value) {
    return '$value किमी/घंटा';
  }

  @override
  String issAboveHorizon(String direction, String degrees) {
    return 'अभी आपके क्षितिज के ऊपर है! $direction की ओर देखें, $degrees° ऊँचा।';
  }

  @override
  String get issBelowHorizon => 'अभी आपके क्षितिज के नीचे है।';

  @override
  String issPassesTitle(String city) {
    return '$city के ऊपर से अगली उड़ानें';
  }

  @override
  String get issNoPasses => 'अगले 5 दिनों में कोई अच्छी उड़ान नहीं है।';

  @override
  String issMaxHigh(String degrees) {
    return '$degrees° तक ऊँचा';
  }

  @override
  String issFromTo(String start, String end) {
    return '$start से $end तक';
  }

  @override
  String get issVisible => 'आसानी से दिखेगा';

  @override
  String get issHidden => 'मुश्किल से दिखेगा';

  @override
  String get issPassTitle => 'अंतरिक्ष स्टेशन आपके ऊपर से गुज़र रहा है';

  @override
  String issPassBody(String degrees, String direction) {
    return '10 मिनट में उगेगा, $degrees° तक ऊँचा। $direction की ओर देखें।';
  }

  @override
  String get issNote =>
      'जगह आपके फ़ोन में ही स्टेशन के ऑर्बिट डेटा से निकाली जाती है। जब आकाश अंधेरा हो और स्टेशन पर सूरज की रोशनी पड़ रही हो तब वह आसानी से दिखता है: एक चमकीले, तेज़ तारे जैसा।';

  @override
  String get launchesNeedOnline =>
      'आने वाले रॉकेट लॉन्च यहाँ देखने के लिए ऑनलाइन सुविधाएँ चालू करें।';

  @override
  String get launchesFailed =>
      'लॉन्च सूची अपडेट नहीं हो सकी। सहेजी हुई सूची दिखा रहे हैं।';

  @override
  String get launchesNote =>
      'लॉन्च का समय Launch Library 2 से आता है और अक्सर बदलता है। नाम और जगहें अंग्रेज़ी में हैं।';

  @override
  String get launchReminderBody =>
      'करीब एक घंटे में उड़ान भरेगा। समय बदल सकता है।';

  @override
  String get launchTimeTbd => 'समय अभी तय नहीं';

  @override
  String get quizChoose => 'स्तर चुनें';

  @override
  String get levelEasy => 'आसान';

  @override
  String get levelMedium => 'मध्यम';

  @override
  String get levelHard => 'कठिन';

  @override
  String get levelEasyHint => 'ग्रहों की बुनियादी बातें';

  @override
  String get levelMediumHint => 'ग्रह और चंद्रमा';

  @override
  String get levelHardHint => 'मुश्किल तुलनाएँ और क्रम';

  @override
  String get qStar => 'इनमें से कौन सा तारा है, ग्रह नहीं?';

  @override
  String get qDwarf => 'इनमें से कौन सा बौना ग्रह है?';

  @override
  String get qMoonVisited => 'किस चंद्रमा पर इंसान चल चुके हैं?';

  @override
  String get qLargestMoon => 'इन चंद्रमाओं में सबसे बड़ा कौन सा है?';

  @override
  String get qSmallestMoon => 'इन चंद्रमाओं में सबसे छोटा कौन सा है?';

  @override
  String get qThickAirMoon => 'इन चंद्रमाओं में किसका वायुमंडल घना है?';

  @override
  String get qGeyserMoon =>
      'कौन सा चंद्रमा पानी के फ़व्वारे अंतरिक्ष में छोड़ता है?';

  @override
  String get qVolcanicMoon =>
      'किस चंद्रमा पर सबसे ज़्यादा सक्रिय ज्वालामुखी हैं?';

  @override
  String get qBackwardsMoon =>
      'कौन सा चंद्रमा अपने ग्रह का चक्कर उल्टी दिशा में लगाता है?';

  @override
  String get qBiggestRocky => 'चार चट्टानी ग्रहों में सबसे बड़ा कौन सा है?';

  @override
  String get qColdestRocky => 'चार चट्टानी ग्रहों में सबसे ठंडा कौन सा है?';

  @override
  String get qHighestPressure =>
      'किस ग्रह की सतह पर हवा का दबाव सबसे ज़्यादा है?';

  @override
  String get qSecondLargest => 'कौन सा ग्रह दूसरा सबसे बड़ा है?';

  @override
  String get qLongestYear => 'किस ग्रह का साल सबसे लंबा है?';

  @override
  String get qShortestYear => 'किस ग्रह का साल सबसे छोटा है?';

  @override
  String get qSmallestGiant => 'चार विशाल ग्रहों में सबसे छोटा कौन सा है?';

  @override
  String get qRockyLongestYear =>
      'चार चट्टानी ग्रहों में किसका साल सबसे लंबा है?';

  @override
  String get qFastestMoon =>
      'इन चंद्रमाओं में कौन अपने ग्रह का चक्कर सबसे तेज़ लगाता है?';

  @override
  String get qSlowestMoon =>
      'इन चंद्रमाओं में कौन अपने ग्रह का चक्कर लगाने में सबसे ज़्यादा समय लेता है?';

  @override
  String get qStrongestMoonGravity =>
      'इन चंद्रमाओं में किसका गुरुत्वाकर्षण सबसे ज़्यादा है?';

  @override
  String get qColdestMoon => 'इन चंद्रमाओं में सबसे ठंडा कौन सा है?';

  @override
  String get qSecondLargestMoon =>
      'इन चंद्रमाओं में दूसरा सबसे बड़ा कौन सा है?';

  @override
  String get factTitle => 'क्या आप जानते हैं?';

  @override
  String get factTap => 'दूसरा तथ्य देखने के लिए टैप करें';

  @override
  String get factSun1 =>
      'सौरमंडल के कुल द्रव्यमान का 99.8% हिस्सा सूर्य में है।';

  @override
  String get factSun2 =>
      'सूर्य की रोशनी को पृथ्वी तक पहुँचने में करीब 8 मिनट 20 सेकंड लगते हैं।';

  @override
  String get factMercury1 =>
      'बुध पर एक दिन, यानी एक सूर्योदय से अगले सूर्योदय तक, करीब 176 पृथ्वी-दिनों का होता है। यह उसके साल से दोगुना लंबा है।';

  @override
  String get factMercury2 =>
      'बुध पर हवा लगभग नहीं है, इसलिए दिन में भी उसका आसमान काला रहता है और रातें बर्फ़ जैसी ठंडी होती हैं।';

  @override
  String get factVenus1 =>
      'शुक्र उल्टी दिशा में घूमता है, इसलिए वहाँ सूरज पश्चिम में उगता है।';

  @override
  String get factVenus2 =>
      'सूर्य से ज़्यादा दूर होने पर भी शुक्र बुध से ज़्यादा गर्म है, क्योंकि उसकी घनी हवा गर्मी को रोक लेती है।';

  @override
  String get factEarth1 =>
      'पृथ्वी अकेली ऐसी जगह है जहाँ हम जीवन जानते हैं, और उसकी सतह का करीब 71% हिस्सा पानी से ढका है।';

  @override
  String get factEarth2 =>
      'पृथ्वी पूरी तरह गोल नहीं है। घूमने की वजह से वह भूमध्य रेखा पर थोड़ी उभरी हुई है।';

  @override
  String get factMars1 =>
      'मंगल का ओलंपस मॉन्स सौरमंडल का सबसे ऊँचा ज्वालामुखी है, माउंट एवरेस्ट से करीब ढाई गुना ऊँचा।';

  @override
  String get factMars2 => 'मंगल पर सूर्यास्त नीले दिखते हैं।';

  @override
  String get factJupiter1 =>
      'बृहस्पति का द्रव्यमान बाकी सभी ग्रहों के कुल द्रव्यमान से दोगुने से भी ज़्यादा है।';

  @override
  String get factJupiter2 =>
      'ग्रेट रेड स्पॉट पृथ्वी से बड़ा एक तूफ़ान है, जिसे लोग 150 साल से भी ज़्यादा समय से देख रहे हैं।';

  @override
  String get factSaturn1 =>
      'शनि अपने आकार के हिसाब से इतना हल्का है कि पानी में तैर जाएगा, अगर इतना बड़ा टब मिल जाए।';

  @override
  String get factSaturn2 =>
      'शनि के छल्ले बहुत चौड़े पर बहुत पतले हैं: कई जगह सिर्फ़ करीब दस मीटर मोटे।';

  @override
  String get factUranus1 =>
      'अरुण अपनी बगल के बल लुढ़कते हुए सूर्य का चक्कर लगाता है, उसकी धुरी करीब 98 डिग्री झुकी है।';

  @override
  String get factUranus2 =>
      'अरुण दूरबीन से खोजा गया पहला ग्रह था। विलियम हर्शल ने उसे 1781 में देखा।';

  @override
  String get factNeptune1 =>
      'वरुण पर किसी भी ग्रह से तेज़ हवाएँ चलती हैं, 2,000 किमी/घंटा से भी ज़्यादा।';

  @override
  String get factNeptune2 =>
      'वरुण को किसी के देखने से पहले गणित से खोजा गया: 1846 में खगोलविदों ने हिसाब लगाया कि वह कहाँ होना चाहिए।';

  @override
  String get factMoon1 =>
      'चंद्रमा हर साल पृथ्वी से करीब 3.8 सेंटीमीटर और दूर चला जाता है।';

  @override
  String get factMoon2 =>
      'हमें चंद्रमा का हमेशा एक ही हिस्सा दिखता है, क्योंकि वह पृथ्वी के हर चक्कर में ठीक एक बार घूमता है।';

  @override
  String get factPluto1 =>
      'प्लूटो पर एक साल करीब 248 पृथ्वी-वर्षों का होता है।';

  @override
  String get factPluto2 =>
      'प्लूटो पर जमी हुई नाइट्रोजन का दिल के आकार का एक विशाल मैदान है।';

  @override
  String get factIo1 =>
      'आयो हमारी जानकारी की सबसे ज़्यादा ज्वालामुखी वाली दुनिया है, जहाँ सैकड़ों सक्रिय ज्वालामुखी हैं।';

  @override
  String get factIo2 =>
      'बृहस्पति का गुरुत्वाकर्षण आयो को दबाता और खींचता है, और इससे पैदा गर्मी उसके ज्वालामुखियों को चलाती है।';

  @override
  String get factEuropa1 =>
      'अपनी बर्फ़ीली परत के नीचे यूरोपा में शायद पृथ्वी के सभी महासागरों से करीब दोगुना पानी है।';

  @override
  String get factEuropa2 =>
      'यूरोपा पृथ्वी से परे जीवन खोजने की सबसे अच्छी जगहों में से एक है। यूरोपा क्लिपर यान वहाँ जा रहा है।';

  @override
  String get factGanymede1 =>
      'गैनिमीड सौरमंडल का सबसे बड़ा चंद्रमा है। वह बुध से भी बड़ा है।';

  @override
  String get factGanymede2 =>
      'गैनिमीड अकेला चंद्रमा है जिसका अपना चुंबकीय क्षेत्र पाया गया है।';

  @override
  String get factCallisto1 =>
      'कैलिस्टो सौरमंडल की सबसे ज़्यादा गड्ढों वाली जगहों में से एक है, और उसकी सतह बहुत पुरानी है।';

  @override
  String get factCallisto2 =>
      'कैलिस्टो बृहस्पति से इतनी दूर है कि उसे उसका कठोर विकिरण कम मिलता है, इसलिए वैज्ञानिकों ने भविष्य के अड्डे के लिए उसका सुझाव दिया है।';

  @override
  String get factTitan1 =>
      'टाइटन अकेला चंद्रमा है जिसका वायुमंडल घना है। उसकी सतह पर हवा का दबाव पृथ्वी से ज़्यादा है।';

  @override
  String get factTitan2 =>
      'टाइटन पर नदियाँ और झीलें हैं, पर उनमें पानी नहीं, तरल मीथेन और ईथेन है।';

  @override
  String get factEnceladus1 =>
      'एन्सेलेडस अपने दक्षिणी ध्रुव के पास की दरारों से बर्फ़ और जलवाष्प की धाराएँ अंतरिक्ष में छोड़ता है।';

  @override
  String get factEnceladus2 =>
      'एन्सेलेडस की ये धाराएँ शनि के E छल्ले को भरती हैं।';

  @override
  String get factTriton1 =>
      'ट्राइटन वरुण का चक्कर उल्टी दिशा में लगाता है, इसलिए शायद वह एक बौना ग्रह था जिसे वरुण ने पकड़ लिया।';

  @override
  String get factTriton2 =>
      'करीब −235 °C पर ट्राइटन सौरमंडल की उन सबसे ठंडी जगहों में है जहाँ कभी तापमान नापा गया है।';

  @override
  String get jumpInput => 'पृथ्वी पर आपकी कूद की ऊँचाई (सेमी)';

  @override
  String jumpHigh(String height) {
    return 'कूद: $height';
  }

  @override
  String jumpFeelsLike(String height) {
    return 'पृथ्वी पर $height की कूद यहाँ बन जाती है';
  }

  @override
  String get jumpNote =>
      'धक्का वही रहता है जो पृथ्वी पर होता है। सूर्य और गैस वाले विशाल ग्रहों पर खड़े होने की ज़मीन नहीं है, इसलिए यह सिर्फ़ कल्पना का खेल है।';

  @override
  String valueCm(String value) {
    return '$value सेमी';
  }

  @override
  String valueM(String value) {
    return '$value मी';
  }
}
