// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => 'சூரியக் குடும்பத்தை ஆராயுங்கள், முழுவதும் ஆஃப்லைனில்';

  @override
  String get navExplore => 'ஆராய்';

  @override
  String get navCompare => 'ஒப்பீடு';

  @override
  String get navWeight => 'எடை';

  @override
  String get navQuiz => 'வினாடி வினா';

  @override
  String get viewMode => 'பார்வை முறை';

  @override
  String get settings => 'அமைப்புகள்';

  @override
  String get notToScale => 'அளவுப்படி இல்லை · திறக்க கிரகத்தைத் தட்டவும்';

  @override
  String get dragToRotate => 'சுழற்ற இழுக்கவும் · பெரிதாக்க பிஞ்ச் செய்யவும்';

  @override
  String get planetsTitle => 'கிரகங்கள்';

  @override
  String get planetMercury => 'புதன்';

  @override
  String get planetVenus => 'வெள்ளி';

  @override
  String get planetEarth => 'பூமி';

  @override
  String get planetMars => 'செவ்வாய்';

  @override
  String get planetJupiter => 'வியாழன்';

  @override
  String get planetSaturn => 'சனி';

  @override
  String get planetUranus => 'யுரேனஸ்';

  @override
  String get planetNeptune => 'நெப்டியூன்';

  @override
  String planetOrder(int n) {
    return 'சூரியனிலிருந்து கிரகம் எண் $n';
  }

  @override
  String get openDetails => 'விவரங்களைத் திற';

  @override
  String get diameter => 'விட்டம்';

  @override
  String get gravity => 'ஈர்ப்பு விசை';

  @override
  String get avgTemp => 'சராசரி வெப்பநிலை';

  @override
  String get avgTempShort => 'சராசரி வெப்பம்';

  @override
  String get dayLength => 'நாள்';

  @override
  String get yearLength => 'ஆண்டு';

  @override
  String get moons => 'அறியப்பட்ட நிலவுகள்';

  @override
  String get moonsShort => 'நிலவுகள்';

  @override
  String get distance => 'சூரியனிலிருந்து தூரம்';

  @override
  String get pressure => 'மேற்பரப்பு அழுத்தம்';

  @override
  String get noSurface => 'திடமான மேற்பரப்பு இல்லை';

  @override
  String valueKm(String value) {
    return '$value கி.மீ';
  }

  @override
  String valueMillionKm(String value) {
    return '$value மில்லியன் கி.மீ';
  }

  @override
  String valueHours(String value) {
    return '$value மணி';
  }

  @override
  String valueDays(String value) {
    return '$value நாட்கள்';
  }

  @override
  String valueYears(String value) {
    return '$value ஆண்டுகள்';
  }

  @override
  String get atmosphere => 'வளிமண்டலம்';

  @override
  String get thinAtmosphere =>
      'ஏறக்குறைய வளிமண்டலம் இல்லை. இந்த வாயுக்கள் எக்ஸோஸ்பியர் எனும் மிக மெல்லிய அடுக்கை உருவாக்குகின்றன.';

  @override
  String get oxygen => 'ஆக்சிஜன்';

  @override
  String get oxygenVsEarth => 'ஆக்சிஜன்: பூமியுடன் ஒப்பீடு';

  @override
  String get breathable => 'மனிதர்கள் சுவாசிக்க ஏற்றது';

  @override
  String get notBreathable => 'சுவாசிக்க ஏற்றதல்ல, விண்வெளி உடை தேவை';

  @override
  String weightFeelsLike(String weight) {
    return 'பூமியில் $weight கிலோ இங்கே இவ்வளவாக இருக்கும்';
  }

  @override
  String get gasCo2 => 'கார்பன் டை ஆக்சைடு';

  @override
  String get gasN2 => 'நைட்ரஜன்';

  @override
  String get gasO2 => 'ஆக்சிஜன்';

  @override
  String get gasAr => 'ஆர்கான்';

  @override
  String get gasH2 => 'ஹைட்ரஜன்';

  @override
  String get gasHe => 'ஹீலியம்';

  @override
  String get gasCh4 => 'மீத்தேன்';

  @override
  String get gasNa => 'சோடியம்';

  @override
  String get gasK => 'பொட்டாசியம்';

  @override
  String get compareTitle => 'கிரகங்களை ஒப்பிடுக';

  @override
  String get compareHint =>
      'அருகருகே பார்க்க இரண்டு கிரகங்களைத் தேர்ந்தெடுக்கவும்.';

  @override
  String get weightTitle => 'மற்ற கிரகங்களில் உங்கள் எடை';

  @override
  String get weightInput => 'பூமியில் உங்கள் எடை (கிலோ)';

  @override
  String gravityTimes(String factor) {
    return 'பூமியின் ஈர்ப்பில் $factor×';
  }

  @override
  String get quizTitle => 'கிரக வினாடி வினா';

  @override
  String get quizIntro =>
      'கிரகங்கள் பற்றி 10 கேள்விகள். எத்தனை சரியாகச் சொல்வீர்கள்?';

  @override
  String get quizStart => 'வினாடி வினாவைத் தொடங்கு';

  @override
  String quizProgress(int current, int total) {
    return 'கேள்வி $current / $total';
  }

  @override
  String get quizNext => 'அடுத்து';

  @override
  String get quizSeeResult => 'முடிவைப் பார்';

  @override
  String get quizCorrect => 'சரி!';

  @override
  String quizWrong(String answer) {
    return 'இல்லை. சரியான விடை $answer.';
  }

  @override
  String quizScore(int score, int total) {
    return '$total இல் $score சரி';
  }

  @override
  String quizBest(int score) {
    return 'சிறந்த மதிப்பெண்: $score';
  }

  @override
  String get quizNewBest => 'புதிய சிறந்த மதிப்பெண்!';

  @override
  String get quizAgain => 'மீண்டும் விளையாடு';

  @override
  String get qLargest => 'மிகப் பெரிய கிரகம் எது?';

  @override
  String get qSmallest => 'மிகச் சிறிய கிரகம் எது?';

  @override
  String get qHottest => 'மிக வெப்பமான கிரகம் எது?';

  @override
  String get qColdest => 'மிகக் குளிரான கிரகம் எது?';

  @override
  String get qMostMoons =>
      'எந்தக் கிரகத்திற்கு அதிக அறியப்பட்ட நிலவுகள் உள்ளன?';

  @override
  String get qBreathable =>
      'எந்தக் கிரகத்தில் மனிதர்கள் காற்றைச் சுவாசிக்க முடியும்?';

  @override
  String get qClosest => 'சூரியனுக்கு மிக அருகில் உள்ள கிரகம் எது?';

  @override
  String get qFarthest => 'சூரியனிலிருந்து மிகத் தொலைவில் உள்ள கிரகம் எது?';

  @override
  String get qStrongestGravity =>
      'எந்தக் கிரகத்திற்கு அதிக ஈர்ப்பு விசை உள்ளது?';

  @override
  String get qShortestDay => 'எந்தக் கிரகத்தின் நாள் மிகக் குறுகியது?';

  @override
  String get qLongestDay => 'எந்தக் கிரகத்தின் நாள் மிக நீளமானது?';

  @override
  String get appearance => 'தோற்றம்';

  @override
  String get theme => 'தீம்';

  @override
  String get themeSystem => 'சிஸ்டம்';

  @override
  String get themeLight => 'லைட்';

  @override
  String get themeDark => 'டார்க்';

  @override
  String get language => 'மொழி';

  @override
  String get appLanguage => 'ஆப்ஸ் மொழி';

  @override
  String get languageNote => '20 மொழிகள் · கிரகப் பெயர்களும்';

  @override
  String get phoneLanguage => 'ஃபோன் மொழி';

  @override
  String get updates => 'புதுப்பிப்புகள்';

  @override
  String get version => 'பதிப்பு';

  @override
  String get checkForUpdates => 'புதுப்பிப்பைச் சரிபார்';

  @override
  String get checking => 'சரிபார்க்கிறது…';

  @override
  String get autoUpdateCheck => 'தினமும் ஒருமுறை தானாகச் சரிபார்';

  @override
  String get updateNote =>
      'புதுப்பிப்புகள் GitHub Releases இலிருந்து வருகின்றன. உங்கள் அமைப்புகள் ஃபோனிலேயே இருக்கும்.';

  @override
  String get upToDate => 'உங்களிடம் சமீபத்திய பதிப்பு உள்ளது.';

  @override
  String get updateFailed =>
      'GitHub ஐ அடைய முடியவில்லை. இணையத்தைச் சரிபார்த்து மீண்டும் முயலவும்.';

  @override
  String get updateAvailable => 'புதுப்பிப்பு கிடைக்கிறது';

  @override
  String updateReady(String version) {
    return 'பதிப்பு $version பதிவிறக்கத் தயார்.';
  }

  @override
  String get download => 'பதிவிறக்கு';

  @override
  String get later => 'பின்னர்';

  @override
  String get about => 'பற்றி';

  @override
  String get sourceCode => 'GitHub இல் மூலக் குறியீடு';

  @override
  String get privacyLine => 'ஆஃப்லைன் · விளம்பரம் இல்லை · கண்காணிப்பு இல்லை';

  @override
  String get dataSource => 'தகவல்: NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'இணைப்பைத் திறக்க முடியவில்லை.';

  @override
  String get bodySun => 'சூரியன்';

  @override
  String get bodyMoon => 'நிலவு';

  @override
  String get bodyPluto => 'புளூட்டோ';

  @override
  String get moonIo => 'ஐயோ';

  @override
  String get moonEuropa => 'யூரோப்பா';

  @override
  String get moonGanymede => 'கனிமீடு';

  @override
  String get moonCallisto => 'காலிஸ்டோ';

  @override
  String get moonTitan => 'டைட்டன்';

  @override
  String get moonEnceladus => 'என்செலடஸ்';

  @override
  String get moonTriton => 'ட்ரைட்டன்';

  @override
  String get kindStar => 'நமது நட்சத்திரம், சூரியக் குடும்பத்தின் மையம்';

  @override
  String get kindDwarf => 'குள்ளக் கிரகம்';

  @override
  String moonOf(String planet) {
    return '$planet இன் நிலவு';
  }

  @override
  String get orbitPeriod => 'ஒரு சுற்று';

  @override
  String distanceFrom(String body) {
    return '$body இலிருந்து தூரம்';
  }

  @override
  String get composition => 'இது எதனால் ஆனது';

  @override
  String get noAtmosphere => 'உண்மையான வளிமண்டலம் இல்லை, ஏறக்குறைய வெற்றிடம்.';

  @override
  String get majorMoons => 'முக்கிய நிலவுகள்';

  @override
  String get lifeTitle => 'மனிதர்கள் இங்கே வாழ முடியுமா?';

  @override
  String get lifeScoreShort => 'வாழ்க்கை மதிப்பெண்';

  @override
  String get lifeNote =>
      'வெப்பநிலை, காற்றழுத்தம், ஆக்சிஜன், நீர், மேற்பரப்பு, ஈர்ப்பு ஆகியவற்றிலிருந்து கணக்கிடப்பட்டது. பூமிக்கு 10.';

  @override
  String get water => 'நீர்';

  @override
  String get waterLiquid => 'திரவ நீர்';

  @override
  String get waterIce => 'பனிக்கட்டி';

  @override
  String get waterOcean => 'பனிக்கு அடியில் கடல்';

  @override
  String get waterNone => 'நீர் இல்லை';

  @override
  String get surface => 'மேற்பரப்பு';

  @override
  String get solidSurface => 'திடமான மேற்பரப்பு';

  @override
  String get lifeHome => 'அப்படியே வீடு போல';

  @override
  String get lifeHard => 'மிகக் கடினம், மூடிய தளமும் விண்வெளி உடையும் தேவை';

  @override
  String get lifeNo => 'மனிதர்களுக்குச் சாத்தியமில்லை';

  @override
  String get downloadInstall => 'பதிவிறக்கி நிறுவு';

  @override
  String downloadingPercent(String percent) {
    return 'பதிவிறக்குகிறது… $percent%';
  }

  @override
  String get installNow => 'நிறுவு';

  @override
  String get allowInstalls =>
      'திறந்த திரையில் Heliora ஆப்ஸ்களை நிறுவ அனுமதி கொடுத்து, திரும்பி வந்து நிறுவு என்பதைத் தட்டவும்.';

  @override
  String get downloadFailed =>
      'பதிவிறக்கம் முடியவில்லை. இணையத்தைச் சரிபார்த்து மீண்டும் முயலவும்.';

  @override
  String get tryAgain => 'மீண்டும் முயல்';
}
