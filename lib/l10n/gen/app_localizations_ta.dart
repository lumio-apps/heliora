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

  @override
  String get today => 'இன்று';

  @override
  String get play => 'இயக்கு';

  @override
  String get pause => 'நிறுத்து';

  @override
  String get monthBack => '30 நாள் முன்';

  @override
  String get monthForward => '30 நாள் பின்';

  @override
  String get positionsNote =>
      'இந்தத் தேதியில் உண்மையான இடங்கள் · அளவும் தூரமும் அளவுப்படி இல்லை · கிரகத்தைத் தட்டவும்';

  @override
  String get navYou => 'நீங்கள்';

  @override
  String get ageTitle => 'மற்ற கிரகங்களில் உங்கள் வயது';

  @override
  String get setBirthDate => 'உங்கள் பிறந்த தேதியை அமை';

  @override
  String get changeBirthDate => 'மாற்று';

  @override
  String nextBirthday(String days) {
    return 'அடுத்த பிறந்தநாள் $days நாளில்';
  }

  @override
  String get ageNote =>
      'உங்கள் பிறந்த தேதி இந்த ஃபோனில் மட்டுமே சேமிக்கப்படும்.';

  @override
  String get share => 'பகிர்';

  @override
  String shareText(String planet) {
    return 'Heliora இல் $planet, இலவச ஆஃப்லைன் சூரியக் குடும்ப ஆப்: https://github.com/lumio-apps/heliora';
  }

  @override
  String get shareFailed => 'படத்தைப் பகிர முடியவில்லை.';

  @override
  String get travelTitle => 'எவ்வளவு தூரம்?';

  @override
  String get distanceFromEarth => 'இன்று பூமியிலிருந்து தூரம்';

  @override
  String get lightTime => 'ஒளிக்கு ஆகும் நேரம்';

  @override
  String get bySpacecraft => 'மணிக்கு 60,000 கி.மீ விண்கலத்தில்';

  @override
  String get byCar => 'மணிக்கு 100 கி.மீ காரில்';

  @override
  String valueSeconds(String value) {
    return '$value வி';
  }

  @override
  String valueMinutes(String value) {
    return '$value நிமி';
  }

  @override
  String get sizeTitle => 'அளவு';

  @override
  String sizeTimes(String big, String times, String small) {
    return '$big அகலத்தில் $small ஐ விட $times× பெரியது.';
  }

  @override
  String sizeSimilar(String a, String b) {
    return '$a மற்றும் $b ஏறக்குறைய ஒரே அளவு.';
  }

  @override
  String get navSky => 'வானம்';

  @override
  String get skyTitle => 'இன்றிரவு வானம்';

  @override
  String get chooseCity => 'உங்கள் நகரத்தைத் தேர்ந்தெடு';

  @override
  String get chooseCityHint =>
      'நிலவையும் இன்றிரவு தெரியும் கிரகங்களையும் காண அருகிலுள்ள நகரத்தைத் தேர்ந்தெடுக்கவும். இருப்பிட அனுமதி தேவையில்லை, இது ஃபோனிலேயே இருக்கும்.';

  @override
  String get searchCity => 'நகரத்தைத் தேடு';

  @override
  String get noCityFound => 'நகரம் கிடைக்கவில்லை';

  @override
  String get cityNote =>
      'நேரம் உங்கள் ஃபோனின் நேர மண்டலத்தில் உள்ளது. இருண்ட வானில் அடிவானத்திலிருந்து குறைந்தது 5° மேலே இருந்தால் கிரகம் தெரியும் என்று கொள்ளப்படும்.';

  @override
  String illuminated(String percent) {
    return '$percent% ஒளிர்வு';
  }

  @override
  String get moonrise => 'நிலவு உதயம்';

  @override
  String get moonset => 'நிலவு மறைவு';

  @override
  String get sunset => 'சூரிய மறைவு';

  @override
  String get sunrise => 'சூரிய உதயம்';

  @override
  String get nextFull => 'அடுத்த பௌர்ணமி';

  @override
  String get nextNew => 'அடுத்த அமாவாசை';

  @override
  String get phaseNew => 'அமாவாசை';

  @override
  String get phaseWaxingCrescent => 'வளர்பிறைப் பிறை';

  @override
  String get phaseFirstQuarter => 'வளர்பிறை அஷ்டமி';

  @override
  String get phaseWaxingGibbous => 'வளர்பிறை நிலவு';

  @override
  String get phaseFull => 'பௌர்ணமி';

  @override
  String get phaseWaningGibbous => 'தேய்பிறை நிலவு';

  @override
  String get phaseLastQuarter => 'தேய்பிறை அஷ்டமி';

  @override
  String get phaseWaningCrescent => 'தேய்பிறைப் பிறை';

  @override
  String get planetsTonight => 'இன்றிரவு கிரகங்கள்';

  @override
  String get statusVisible => 'இன்றிரவு தெரியும்';

  @override
  String get statusEvening => 'மாலையில், சூரிய மறைவுக்குப் பின்';

  @override
  String get statusMorning => 'காலையில், சூரிய உதயத்துக்கு முன்';

  @override
  String get statusNotVisible => 'இன்றிரவு தெரியாது';

  @override
  String bestAt(String time) {
    return 'சிறந்த நேரம் $time';
  }

  @override
  String altitudeDir(String direction, String degrees) {
    return '$direction, $degrees° உயரத்தில்';
  }

  @override
  String riseSet(String rise, String set) {
    return 'உதயம் $rise · மறைவு $set';
  }

  @override
  String get needsTelescope => 'தொலைநோக்கி தேவை';

  @override
  String get dirN => 'வடக்கு';

  @override
  String get dirNE => 'வடகிழக்கு';

  @override
  String get dirE => 'கிழக்கு';

  @override
  String get dirSE => 'தென்கிழக்கு';

  @override
  String get dirS => 'தெற்கு';

  @override
  String get dirSW => 'தென்மேற்கு';

  @override
  String get dirW => 'மேற்கு';

  @override
  String get dirNW => 'வடமேற்கு';

  @override
  String get findPlanet => 'வானில் கண்டுபிடி';

  @override
  String finderTitle(String name) {
    return '$name கண்டுபிடி';
  }

  @override
  String get pointPhone => 'ஃபோனை உயர்த்தி மெதுவாகச் சுற்றவும்.';

  @override
  String turnRight(String degrees) {
    return '$degrees° வலப்புறம் திரும்பு';
  }

  @override
  String turnLeft(String degrees) {
    return '$degrees° இடப்புறம் திரும்பு';
  }

  @override
  String tiltUp(String degrees) {
    return '$degrees° மேலே உயர்த்து';
  }

  @override
  String tiltDown(String degrees) {
    return '$degrees° கீழே இறக்கு';
  }

  @override
  String onTarget(String name) {
    return '$name அங்கேயே இருக்கிறது!';
  }

  @override
  String belowHorizon(String name) {
    return '$name இப்போது அடிவானத்துக்குக் கீழே உள்ளது.';
  }

  @override
  String risesAt(String time) {
    return 'இது $time மணிக்கு உதிக்கும்.';
  }

  @override
  String get noSensor =>
      'இந்த ஃபோனில் திசைகாட்டி சென்சார் இல்லை, எனவே கண்டுபிடிப்பான் வேலை செய்யாது.';

  @override
  String get calibrate =>
      'திசைகாட்டியை அளவீடு செய்ய வேண்டும்: ஃபோனை சில முறை 8 வடிவில் அசைக்கவும்.';

  @override
  String get phoneNow => 'உங்கள் ஃபோன் காட்டும் திசை';

  @override
  String get finderNote =>
      'ஃபோனின் பின்புறத்தை வானை நோக்கிப் பிடித்து, காந்தம், உலோகத்திலிருந்து விலக்கி வைக்கவும். சூரியனை ஒருபோதும் பார்க்காதீர்கள்.';

  @override
  String get eventsTitle => 'விண்வெளி நிகழ்வுகள்';

  @override
  String get eventsSubtitle => 'அடுத்த 12 மாதங்களில் வானில் என்ன பார்க்கலாம்.';

  @override
  String eventsNext(String event, String when) {
    return 'அடுத்தது: $event · $when';
  }

  @override
  String get eventFullMoon => 'பௌர்ணமி';

  @override
  String get eventNewMoon => 'அமாவாசை';

  @override
  String eventOpposition(String planet) {
    return '$planet எதிர்நிலையில்';
  }

  @override
  String eventEveningElongation(String planet) {
    return '$planet: மாலையில் பார்க்க சிறந்த நேரம்';
  }

  @override
  String eventMorningElongation(String planet) {
    return '$planet: காலையில் பார்க்க சிறந்த நேரம்';
  }

  @override
  String eventConjunction(String a, String b) {
    return '$a மற்றும் $b அருகருகே வருகின்றன';
  }

  @override
  String get eventMarchEquinox => 'மார்ச் சம இரவு நாள்';

  @override
  String get eventJuneSolstice => 'ஜூன் கதிர்த்திருப்பம்';

  @override
  String get eventSeptemberEquinox => 'செப்டம்பர் சம இரவு நாள்';

  @override
  String get eventDecemberSolstice => 'டிசம்பர் கதிர்த்திருப்பம்';

  @override
  String get eventFullMoonDesc =>
      'நிலவின் முழு முகமும் ஒளிர்கிறது. சூரிய மறைவையொட்டி உதிக்கும்.';

  @override
  String get eventNewMoonDesc =>
      'நிலவு தெரியாது. விண்மீன்களையும் கிரகங்களையும் காண மாதத்தின் மிக இருண்ட வானம்.';

  @override
  String eventOppositionDesc(String planet) {
    return '$planet சூரியனுக்கு நேர் எதிரே உள்ளது. இந்த ஆண்டில் மிகப் பிரகாசமாக இருக்கும், இரவு முழுவதும் தெரியும்.';
  }

  @override
  String eventEveningDesc(String planet, String degrees) {
    return '$planet சூரியனிலிருந்து $degrees° தொலைவில், அதிகபட்ச தூரத்தில் உள்ளது. சூரிய மறைவுக்குப் பின் மேற்கில் தாழ்வாகப் பாருங்கள்.';
  }

  @override
  String eventMorningDesc(String planet, String degrees) {
    return '$planet சூரியனிலிருந்து $degrees° தொலைவில், அதிகபட்ச தூரத்தில் உள்ளது. சூரிய உதயத்துக்கு முன் கிழக்கில் தாழ்வாகப் பாருங்கள்.';
  }

  @override
  String eventConjunctionDesc(String degrees) {
    return 'வானில் இவை வெறும் $degrees° இடைவெளியில் கடக்கின்றன.';
  }

  @override
  String get eventEquinoxDesc => 'பூமியெங்கும் பகலும் இரவும் கிட்டத்தட்ட சமம்.';

  @override
  String get eventJuneSolsticeDesc =>
      'வடக்கில் மிக நீண்ட பகல், தெற்கில் மிகச் சிறிய பகல்.';

  @override
  String get eventDecemberSolsticeDesc =>
      'வடக்கில் மிகச் சிறிய பகல், தெற்கில் மிக நீண்ட பகல்.';

  @override
  String eventMeteorShower(String shower) {
    return '$shower எரிகற்கள் மழை';
  }

  @override
  String eventMeteorDesc(String rate, String percent) {
    return 'இருண்ட வானில் மணிக்கு சுமார் $rate வரை எரிகற்கள். நிலவு $percent% ஒளிரும்.';
  }

  @override
  String get showerQuadrantids => 'குவாட்ரான்டிட்ஸ்';

  @override
  String get showerLyrids => 'லைரிட்ஸ்';

  @override
  String get showerEtaAquariids => 'எட்டா அக்வாரிட்ஸ்';

  @override
  String get showerPerseids => 'பெர்சீட்ஸ்';

  @override
  String get showerOrionids => 'ஓரியோனிட்ஸ்';

  @override
  String get showerLeonids => 'லியோனிட்ஸ்';

  @override
  String get showerGeminids => 'ஜெமினிட்ஸ்';

  @override
  String get showerUrsids => 'அர்சிட்ஸ்';

  @override
  String get eventToday => 'இன்று';

  @override
  String get eventTomorrow => 'நாளை';

  @override
  String eventInDays(String days) {
    return '$days நாளில்';
  }

  @override
  String get eventsNote =>
      'தேதிகள் உங்கள் ஃபோனிலேயே கணக்கிடப்பட்டு அதன் நேர மண்டலத்தில் காட்டப்படும். எரிகற்கள் மழையின் உச்ச நாட்கள் ஆண்டுதோறும் வழக்கமான நாட்கள், ஒரு நாள் முன்பின் ஆகலாம். நினைவூட்டல்கள் உங்கள் ஃபோனிலேயே இருக்கும்.';

  @override
  String get remindMe => 'எனக்கு நினைவூட்டு';

  @override
  String reminderSet(String date) {
    return 'சரி, $date அன்று நினைவூட்டுகிறேன்.';
  }

  @override
  String get reminderOff => 'நினைவூட்டல் நீக்கப்பட்டது.';

  @override
  String get reminderTooLate =>
      'இந்த நிகழ்வு மிக அருகில் உள்ளது, நினைவூட்டல் அமைக்க முடியாது.';

  @override
  String get notificationsOff =>
      'Heliora அறிவிப்புகள் அணைக்கப்பட்டுள்ளன. Android அமைப்புகளில் இயக்கவும்.';

  @override
  String get reminderTomorrow => 'நாளை நடக்கும்';

  @override
  String get reminderToday => 'இன்று நடக்கிறது';

  @override
  String get onlineTitle => 'ஆன்லைன் வசதிகள்';

  @override
  String get onlineSubtitle =>
      'விண்வெளி நிலையத்தையும் ராக்கெட் ஏவுதல்களையும் காட்டு. அப்போது Heliora, wheretheiss.at, Celestrak, Launch Library 2 ஆகியவற்றுடன் மட்டுமே தொடர்பு கொள்ளும்; அவை உங்கள் ஃபோனின் இணைய முகவரியைப் பார்க்கலாம். வேறு எதுவும் அனுப்பப்படாது. தொடக்கத்தில் அணைந்திருக்கும்.';

  @override
  String get turnOnOnline => 'ஆன்லைன் வசதிகளை இயக்கு';

  @override
  String get issTitle => 'விண்வெளி நிலையம்';

  @override
  String get issCardHint => 'இப்போது எங்கே, உங்கள் மேல் எப்போது கடக்கும்';

  @override
  String get issNeedsOnline =>
      'நிலையத்தைக் காட்ட Heliora-வுக்கு இணையத்திலிருந்து அதன் சுற்றுப்பாதைத் தரவு தேவை. ஒருமுறை பதிவிறக்கினால் சில நாட்கள் ஆஃப்லைனில் வேலை செய்யும்.';

  @override
  String get issLoading => 'சுற்றுப்பாதைத் தரவைப் பெறுகிறது…';

  @override
  String get issFailed =>
      'சுற்றுப்பாதைத் தரவு கிடைக்கவில்லை. இணையத்தைச் சரிபார்த்து மீண்டும் முயலவும்.';

  @override
  String issStale(String days) {
    return 'சுற்றுப்பாதைத் தரவு $days நாட்கள் பழையது, எனவே இடம் சற்று தவறாக இருக்கலாம். புதுப்பிக்க இணையத்துடன் இணையவும்.';
  }

  @override
  String get issHeight => 'உயரம்';

  @override
  String get issSpeed => 'வேகம்';

  @override
  String get issFromYou => 'உங்களிடமிருந்து தூரம்';

  @override
  String valueKmh(String value) {
    return '$value கிமீ/மணி';
  }

  @override
  String issAboveHorizon(String direction, String degrees) {
    return 'இப்போது உங்கள் அடிவானத்துக்கு மேலே உள்ளது! $direction பக்கம் பாருங்கள், $degrees° உயரத்தில்.';
  }

  @override
  String get issBelowHorizon => 'இப்போது உங்கள் அடிவானத்துக்குக் கீழே உள்ளது.';

  @override
  String issPassesTitle(String city) {
    return '$city மேல் அடுத்த பயணங்கள்';
  }

  @override
  String get issNoPasses => 'அடுத்த 5 நாட்களில் நல்ல பயணங்கள் இல்லை.';

  @override
  String issMaxHigh(String degrees) {
    return '$degrees° வரை உயரம்';
  }

  @override
  String issFromTo(String start, String end) {
    return '$start இலிருந்து $end வரை';
  }

  @override
  String get issVisible => 'எளிதில் தெரியும்';

  @override
  String get issHidden => 'பார்க்க கடினம்';

  @override
  String get issPassTitle => 'விண்வெளி நிலையம் உங்கள் மேல் கடக்கிறது';

  @override
  String issPassBody(String degrees, String direction) {
    return '10 நிமிடத்தில் உதிக்கும், $degrees° வரை உயரம். $direction பக்கம் பாருங்கள்.';
  }

  @override
  String get issNote =>
      'இடங்கள் உங்கள் ஃபோனிலேயே நிலையத்தின் சுற்றுப்பாதைத் தரவிலிருந்து கணக்கிடப்படுகின்றன. வானம் இருண்டும் நிலையத்தின் மீது சூரிய ஒளி படும்போதும் எளிதில் தெரியும்: பிரகாசமான, வேகமான விண்மீன் போல.';

  @override
  String get launchesNeedOnline =>
      'வரவிருக்கும் ராக்கெட் ஏவுதல்களை இங்கே காண ஆன்லைன் வசதிகளை இயக்கவும்.';

  @override
  String get launchesFailed =>
      'ஏவுதல் பட்டியலைப் புதுப்பிக்க முடியவில்லை. சேமித்த பட்டியலைக் காட்டுகிறது.';

  @override
  String get launchesNote =>
      'ஏவுதல் நேரம் Launch Library 2-இலிருந்து வருகிறது, அடிக்கடி மாறும். பெயர்களும் இடங்களும் ஆங்கிலத்தில் உள்ளன.';

  @override
  String get launchReminderBody =>
      'ஏறத்தாழ ஒரு மணி நேரத்தில் ஏவப்படும். நேரம் மாறலாம்.';

  @override
  String get launchTimeTbd => 'நேரம் இன்னும் முடிவாகவில்லை';
}
