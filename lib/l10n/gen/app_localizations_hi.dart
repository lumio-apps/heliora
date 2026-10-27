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
  String get quizIntro => 'ग्रहों के बारे में 10 सवाल। आप कितने सही कर पाएँगे?';

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
}
