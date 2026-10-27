// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => 'ਸੂਰਜੀ ਮੰਡਲ ਦੀ ਸੈਰ, ਪੂਰੀ ਤਰ੍ਹਾਂ ਆਫ਼ਲਾਈਨ';

  @override
  String get navExplore => 'ਖੋਜੋ';

  @override
  String get navCompare => 'ਤੁਲਨਾ';

  @override
  String get navWeight => 'ਭਾਰ';

  @override
  String get navQuiz => 'ਕੁਇਜ਼';

  @override
  String get viewMode => 'ਦ੍ਰਿਸ਼ ਮੋਡ';

  @override
  String get settings => 'ਸੈਟਿੰਗਾਂ';

  @override
  String get notToScale => 'ਪੈਮਾਨੇ ਮੁਤਾਬਕ ਨਹੀਂ · ਖੋਲ੍ਹਣ ਲਈ ਗ੍ਰਹਿ ’ਤੇ ਟੈਪ ਕਰੋ';

  @override
  String get dragToRotate => 'ਘੁਮਾਉਣ ਲਈ ਖਿੱਚੋ · ਜ਼ੂਮ ਲਈ ਪਿੰਚ ਕਰੋ';

  @override
  String get planetsTitle => 'ਗ੍ਰਹਿ';

  @override
  String get planetMercury => 'ਬੁੱਧ';

  @override
  String get planetVenus => 'ਸ਼ੁੱਕਰ';

  @override
  String get planetEarth => 'ਧਰਤੀ';

  @override
  String get planetMars => 'ਮੰਗਲ';

  @override
  String get planetJupiter => 'ਬ੍ਰਹਿਸਪਤੀ';

  @override
  String get planetSaturn => 'ਸ਼ਨੀ';

  @override
  String get planetUranus => 'ਯੂਰੇਨਸ';

  @override
  String get planetNeptune => 'ਨੈਪਚਿਊਨ';

  @override
  String planetOrder(int n) {
    return 'ਸੂਰਜ ਤੋਂ ਗ੍ਰਹਿ ਨੰਬਰ $n';
  }

  @override
  String get openDetails => 'ਵੇਰਵੇ ਖੋਲ੍ਹੋ';

  @override
  String get diameter => 'ਵਿਆਸ';

  @override
  String get gravity => 'ਗੁਰੂਤਾ';

  @override
  String get avgTemp => 'ਔਸਤ ਤਾਪਮਾਨ';

  @override
  String get avgTempShort => 'ਔਸਤ ਤਾਪਮਾਨ';

  @override
  String get dayLength => 'ਦਿਨ';

  @override
  String get yearLength => 'ਸਾਲ';

  @override
  String get moons => 'ਜਾਣੇ-ਪਛਾਣੇ ਚੰਦਰਮਾ';

  @override
  String get moonsShort => 'ਚੰਦਰਮਾ';

  @override
  String get distance => 'ਸੂਰਜ ਤੋਂ ਦੂਰੀ';

  @override
  String get pressure => 'ਸਤ੍ਹਾ ਦਾ ਦਬਾਅ';

  @override
  String get noSurface => 'ਕੋਈ ਠੋਸ ਸਤ੍ਹਾ ਨਹੀਂ';

  @override
  String valueKm(String value) {
    return '$value ਕਿਮੀ';
  }

  @override
  String valueMillionKm(String value) {
    return '$value ਮਿਲੀਅਨ ਕਿਮੀ';
  }

  @override
  String valueHours(String value) {
    return '$value ਘੰਟੇ';
  }

  @override
  String valueDays(String value) {
    return '$value ਦਿਨ';
  }

  @override
  String valueYears(String value) {
    return '$value ਸਾਲ';
  }

  @override
  String get atmosphere => 'ਵਾਯੂਮੰਡਲ';

  @override
  String get thinAtmosphere =>
      'ਲਗਭਗ ਕੋਈ ਵਾਯੂਮੰਡਲ ਨਹੀਂ। ਇਹ ਗੈਸਾਂ ਐਕਸੋਸਫੀਅਰ ਨਾਂ ਦੀ ਬਹੁਤ ਪਤਲੀ ਪਰਤ ਬਣਾਉਂਦੀਆਂ ਹਨ।';

  @override
  String get oxygen => 'ਆਕਸੀਜਨ';

  @override
  String get oxygenVsEarth => 'ਆਕਸੀਜਨ: ਧਰਤੀ ਨਾਲ ਤੁਲਨਾ';

  @override
  String get breathable => 'ਮਨੁੱਖਾਂ ਦੇ ਸਾਹ ਲੈਣ ਯੋਗ';

  @override
  String get notBreathable => 'ਸਾਹ ਲੈਣ ਯੋਗ ਨਹੀਂ, ਸਪੇਸਸੂਟ ਲੋੜੀਂਦਾ ਹੈ';

  @override
  String weightFeelsLike(String weight) {
    return 'ਧਰਤੀ ਦੇ $weight ਕਿਲੋ ਇੱਥੇ ਇੰਨੇ ਲੱਗਣਗੇ';
  }

  @override
  String get gasCo2 => 'ਕਾਰਬਨ ਡਾਈਆਕਸਾਈਡ';

  @override
  String get gasN2 => 'ਨਾਈਟ੍ਰੋਜਨ';

  @override
  String get gasO2 => 'ਆਕਸੀਜਨ';

  @override
  String get gasAr => 'ਆਰਗਨ';

  @override
  String get gasH2 => 'ਹਾਈਡ੍ਰੋਜਨ';

  @override
  String get gasHe => 'ਹੀਲੀਅਮ';

  @override
  String get gasCh4 => 'ਮੀਥੇਨ';

  @override
  String get gasNa => 'ਸੋਡੀਅਮ';

  @override
  String get gasK => 'ਪੋਟਾਸ਼ੀਅਮ';

  @override
  String get compareTitle => 'ਗ੍ਰਹਿਆਂ ਦੀ ਤੁਲਨਾ';

  @override
  String get compareHint => 'ਨਾਲ-ਨਾਲ ਦੇਖਣ ਲਈ ਦੋ ਗ੍ਰਹਿ ਚੁਣੋ।';

  @override
  String get weightTitle => 'ਹੋਰ ਗ੍ਰਹਿਆਂ ’ਤੇ ਤੁਹਾਡਾ ਭਾਰ';

  @override
  String get weightInput => 'ਧਰਤੀ ’ਤੇ ਤੁਹਾਡਾ ਭਾਰ (ਕਿਲੋ)';

  @override
  String gravityTimes(String factor) {
    return 'ਧਰਤੀ ਦੀ ਗੁਰੂਤਾ ਦਾ $factor×';
  }

  @override
  String get quizTitle => 'ਗ੍ਰਹਿ ਕੁਇਜ਼';

  @override
  String get quizIntro => 'ਗ੍ਰਹਿਆਂ ਬਾਰੇ 10 ਸਵਾਲ। ਤੁਸੀਂ ਕਿੰਨੇ ਸਹੀ ਕਰ ਸਕਦੇ ਹੋ?';

  @override
  String get quizStart => 'ਕੁਇਜ਼ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String quizProgress(int current, int total) {
    return 'ਸਵਾਲ $current / $total';
  }

  @override
  String get quizNext => 'ਅੱਗੇ';

  @override
  String get quizSeeResult => 'ਨਤੀਜਾ ਦੇਖੋ';

  @override
  String get quizCorrect => 'ਸਹੀ!';

  @override
  String quizWrong(String answer) {
    return 'ਨਹੀਂ। ਸਹੀ ਜਵਾਬ $answer ਹੈ।';
  }

  @override
  String quizScore(int score, int total) {
    return '$total ਵਿੱਚੋਂ $score ਸਹੀ';
  }

  @override
  String quizBest(int score) {
    return 'ਸਭ ਤੋਂ ਵਧੀਆ ਸਕੋਰ: $score';
  }

  @override
  String get quizNewBest => 'ਨਵਾਂ ਸਭ ਤੋਂ ਵਧੀਆ ਸਕੋਰ!';

  @override
  String get quizAgain => 'ਮੁੜ ਖੇਡੋ';

  @override
  String get qLargest => 'ਸਭ ਤੋਂ ਵੱਡਾ ਗ੍ਰਹਿ ਕਿਹੜਾ ਹੈ?';

  @override
  String get qSmallest => 'ਸਭ ਤੋਂ ਛੋਟਾ ਗ੍ਰਹਿ ਕਿਹੜਾ ਹੈ?';

  @override
  String get qHottest => 'ਸਭ ਤੋਂ ਗਰਮ ਗ੍ਰਹਿ ਕਿਹੜਾ ਹੈ?';

  @override
  String get qColdest => 'ਸਭ ਤੋਂ ਠੰਢਾ ਗ੍ਰਹਿ ਕਿਹੜਾ ਹੈ?';

  @override
  String get qMostMoons => 'ਕਿਸ ਗ੍ਰਹਿ ਦੇ ਸਭ ਤੋਂ ਵੱਧ ਜਾਣੇ-ਪਛਾਣੇ ਚੰਦਰਮਾ ਹਨ?';

  @override
  String get qBreathable => 'ਕਿਸ ਗ੍ਰਹਿ ’ਤੇ ਮਨੁੱਖ ਹਵਾ ਵਿੱਚ ਸਾਹ ਲੈ ਸਕਦੇ ਹਨ?';

  @override
  String get qClosest => 'ਸੂਰਜ ਦੇ ਸਭ ਤੋਂ ਨੇੜੇ ਕਿਹੜਾ ਗ੍ਰਹਿ ਹੈ?';

  @override
  String get qFarthest => 'ਸੂਰਜ ਤੋਂ ਸਭ ਤੋਂ ਦੂਰ ਕਿਹੜਾ ਗ੍ਰਹਿ ਹੈ?';

  @override
  String get qStrongestGravity => 'ਕਿਸ ਗ੍ਰਹਿ ਦੀ ਗੁਰੂਤਾ ਸਭ ਤੋਂ ਵੱਧ ਹੈ?';

  @override
  String get qShortestDay => 'ਕਿਸ ਗ੍ਰਹਿ ਦਾ ਦਿਨ ਸਭ ਤੋਂ ਛੋਟਾ ਹੈ?';

  @override
  String get qLongestDay => 'ਕਿਸ ਗ੍ਰਹਿ ਦਾ ਦਿਨ ਸਭ ਤੋਂ ਲੰਬਾ ਹੈ?';

  @override
  String get appearance => 'ਦਿੱਖ';

  @override
  String get theme => 'ਥੀਮ';

  @override
  String get themeSystem => 'ਸਿਸਟਮ';

  @override
  String get themeLight => 'ਲਾਈਟ';

  @override
  String get themeDark => 'ਡਾਰਕ';

  @override
  String get language => 'ਭਾਸ਼ਾ';

  @override
  String get appLanguage => 'ਐਪ ਦੀ ਭਾਸ਼ਾ';

  @override
  String get languageNote => '20 ਭਾਸ਼ਾਵਾਂ · ਗ੍ਰਹਿਆਂ ਦੇ ਨਾਂ ਵੀ';

  @override
  String get phoneLanguage => 'ਫ਼ੋਨ ਦੀ ਭਾਸ਼ਾ';

  @override
  String get updates => 'ਅੱਪਡੇਟ';

  @override
  String get version => 'ਵਰਜ਼ਨ';

  @override
  String get checkForUpdates => 'ਅੱਪਡੇਟ ਜਾਂਚੋ';

  @override
  String get checking => 'ਜਾਂਚ ਹੋ ਰਹੀ ਹੈ…';

  @override
  String get autoUpdateCheck => 'ਦਿਨ ਵਿੱਚ ਇੱਕ ਵਾਰ ਆਪਣੇ-ਆਪ ਜਾਂਚੋ';

  @override
  String get updateNote =>
      'ਅੱਪਡੇਟ GitHub Releases ਤੋਂ ਆਉਂਦੇ ਹਨ। ਤੁਹਾਡੀਆਂ ਸੈਟਿੰਗਾਂ ਤੁਹਾਡੇ ਫ਼ੋਨ ਵਿੱਚ ਹੀ ਰਹਿੰਦੀਆਂ ਹਨ।';

  @override
  String get upToDate => 'ਤੁਹਾਡੇ ਕੋਲ ਨਵਾਂ ਵਰਜ਼ਨ ਹੈ।';

  @override
  String get updateFailed =>
      'GitHub ਤੱਕ ਨਹੀਂ ਪਹੁੰਚ ਸਕੇ। ਇੰਟਰਨੈੱਟ ਜਾਂਚ ਕੇ ਮੁੜ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get updateAvailable => 'ਅੱਪਡੇਟ ਉਪਲਬਧ ਹੈ';

  @override
  String updateReady(String version) {
    return 'ਵਰਜ਼ਨ $version ਡਾਊਨਲੋਡ ਲਈ ਤਿਆਰ ਹੈ।';
  }

  @override
  String get download => 'ਡਾਊਨਲੋਡ';

  @override
  String get later => 'ਬਾਅਦ ਵਿੱਚ';

  @override
  String get about => 'ਬਾਰੇ';

  @override
  String get sourceCode => 'GitHub ’ਤੇ ਸੋਰਸ ਕੋਡ';

  @override
  String get privacyLine => 'ਆਫ਼ਲਾਈਨ · ਕੋਈ ਇਸ਼ਤਿਹਾਰ ਨਹੀਂ · ਕੋਈ ਟਰੈਕਿੰਗ ਨਹੀਂ';

  @override
  String get dataSource => 'ਤੱਥ: NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'ਲਿੰਕ ਨਹੀਂ ਖੁੱਲ੍ਹ ਸਕਿਆ।';

  @override
  String get bodySun => 'ਸੂਰਜ';

  @override
  String get bodyMoon => 'ਚੰਦਰਮਾ';

  @override
  String get bodyPluto => 'ਪਲੂਟੋ';

  @override
  String get moonIo => 'ਆਇਓ';

  @override
  String get moonEuropa => 'ਯੂਰੋਪਾ';

  @override
  String get moonGanymede => 'ਗੈਨੀਮੀਡ';

  @override
  String get moonCallisto => 'ਕੈਲਿਸਟੋ';

  @override
  String get moonTitan => 'ਟਾਈਟਨ';

  @override
  String get moonEnceladus => 'ਐਨਸੇਲਾਡਸ';

  @override
  String get moonTriton => 'ਟ੍ਰਾਈਟਨ';

  @override
  String get kindStar => 'ਸਾਡਾ ਤਾਰਾ, ਸੂਰਜੀ ਮੰਡਲ ਦਾ ਕੇਂਦਰ';

  @override
  String get kindDwarf => 'ਬੌਣਾ ਗ੍ਰਹਿ';

  @override
  String moonOf(String planet) {
    return '$planet ਦਾ ਚੰਦਰਮਾ';
  }

  @override
  String get orbitPeriod => 'ਇੱਕ ਚੱਕਰ';

  @override
  String distanceFrom(String body) {
    return '$body ਤੋਂ ਦੂਰੀ';
  }

  @override
  String get composition => 'ਇਹ ਕਿਸ ਚੀਜ਼ ਦਾ ਬਣਿਆ ਹੈ';

  @override
  String get noAtmosphere => 'ਅਸਲ ਵਾਯੂਮੰਡਲ ਨਹੀਂ, ਲਗਭਗ ਖਲਾਅ ਹੈ।';

  @override
  String get majorMoons => 'ਮੁੱਖ ਚੰਦਰਮਾ';

  @override
  String get lifeTitle => 'ਕੀ ਮਨੁੱਖ ਇੱਥੇ ਰਹਿ ਸਕਦੇ ਹਨ?';

  @override
  String get lifeScoreShort => 'ਜੀਵਨ ਸਕੋਰ';

  @override
  String get lifeNote =>
      'ਤਾਪਮਾਨ, ਹਵਾ ਦੇ ਦਬਾਅ, ਆਕਸੀਜਨ, ਪਾਣੀ, ਸਤ੍ਹਾ ਅਤੇ ਗੁਰੂਤਾ ਤੋਂ ਗਿਣਿਆ। ਧਰਤੀ ਦਾ ਸਕੋਰ 10 ਹੈ।';

  @override
  String get water => 'ਪਾਣੀ';

  @override
  String get waterLiquid => 'ਤਰਲ ਪਾਣੀ';

  @override
  String get waterIce => 'ਬਰਫ਼';

  @override
  String get waterOcean => 'ਬਰਫ਼ ਹੇਠ ਸਮੁੰਦਰ';

  @override
  String get waterNone => 'ਪਾਣੀ ਨਹੀਂ';

  @override
  String get surface => 'ਸਤ੍ਹਾ';

  @override
  String get solidSurface => 'ਠੋਸ ਸਤ੍ਹਾ';

  @override
  String get lifeHome => 'ਬਿਲਕੁਲ ਘਰ ਵਰਗਾ';

  @override
  String get lifeHard => 'ਬਹੁਤ ਔਖਾ, ਬੰਦ ਬੇਸ ਅਤੇ ਸਪੇਸਸੂਟ ਚਾਹੀਦੇ ਹਨ';

  @override
  String get lifeNo => 'ਮਨੁੱਖਾਂ ਲਈ ਅਸੰਭਵ';

  @override
  String get downloadInstall => 'ਡਾਊਨਲੋਡ ਕਰਕੇ ਇੰਸਟਾਲ ਕਰੋ';

  @override
  String downloadingPercent(String percent) {
    return 'ਡਾਊਨਲੋਡ ਹੋ ਰਿਹਾ ਹੈ… $percent%';
  }

  @override
  String get installNow => 'ਇੰਸਟਾਲ ਕਰੋ';

  @override
  String get allowInstalls =>
      'ਖੁੱਲ੍ਹੀ ਸਕ੍ਰੀਨ ਵਿੱਚ Heliora ਨੂੰ ਐਪ ਇੰਸਟਾਲ ਕਰਨ ਦੀ ਇਜਾਜ਼ਤ ਦਿਓ, ਫਿਰ ਵਾਪਸ ਆ ਕੇ ਇੰਸਟਾਲ ਦਬਾਓ।';

  @override
  String get downloadFailed =>
      'ਡਾਊਨਲੋਡ ਪੂਰਾ ਨਹੀਂ ਹੋਇਆ। ਇੰਟਰਨੈੱਟ ਜਾਂਚ ਕੇ ਮੁੜ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get tryAgain => 'ਮੁੜ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String get today => 'ਅੱਜ';

  @override
  String get play => 'ਚਲਾਓ';

  @override
  String get pause => 'ਰੋਕੋ';

  @override
  String get monthBack => '30 ਦਿਨ ਪਹਿਲਾਂ';

  @override
  String get monthForward => '30 ਦਿਨ ਬਾਅਦ';

  @override
  String get positionsNote =>
      'ਇਸ ਤਾਰੀਖ਼ ਦੀ ਅਸਲ ਸਥਿਤੀ · ਆਕਾਰ ਅਤੇ ਦੂਰੀ ਪੈਮਾਨੇ ਮੁਤਾਬਕ ਨਹੀਂ · ਗ੍ਰਹਿ ’ਤੇ ਟੈਪ ਕਰੋ';

  @override
  String get navYou => 'ਤੁਸੀਂ';

  @override
  String get ageTitle => 'ਹੋਰ ਗ੍ਰਹਿਆਂ ’ਤੇ ਤੁਹਾਡੀ ਉਮਰ';

  @override
  String get setBirthDate => 'ਆਪਣੀ ਜਨਮ ਤਾਰੀਖ਼ ਪਾਓ';

  @override
  String get changeBirthDate => 'ਬਦਲੋ';

  @override
  String nextBirthday(String days) {
    return 'ਅਗਲਾ ਜਨਮਦਿਨ $days ਦਿਨਾਂ ਵਿੱਚ';
  }

  @override
  String get ageNote => 'ਤੁਹਾਡੀ ਜਨਮ ਤਾਰੀਖ਼ ਸਿਰਫ਼ ਇਸ ਫ਼ੋਨ ਵਿੱਚ ਸੇਵ ਹੁੰਦੀ ਹੈ।';

  @override
  String get share => 'ਸਾਂਝਾ ਕਰੋ';

  @override
  String shareText(String planet) {
    return 'Heliora ਵਿੱਚ $planet, ਮੁਫ਼ਤ ਆਫ਼ਲਾਈਨ ਸੂਰਜੀ ਮੰਡਲ ਐਪ: https://github.com/lumio-apps/heliora';
  }

  @override
  String get shareFailed => 'ਤਸਵੀਰ ਸਾਂਝੀ ਨਹੀਂ ਹੋ ਸਕੀ।';

  @override
  String get travelTitle => 'ਕਿੰਨੀ ਦੂਰ ਹੈ?';

  @override
  String get distanceFromEarth => 'ਅੱਜ ਧਰਤੀ ਤੋਂ ਦੂਰੀ';

  @override
  String get lightTime => 'ਰੋਸ਼ਨੀ ਨੂੰ ਲੱਗਦਾ ਹੈ';

  @override
  String get bySpacecraft => '60,000 ਕਿਮੀ/ਘੰਟਾ ਵਾਲੇ ਪੁਲਾੜ ਯਾਨ ਨਾਲ';

  @override
  String get byCar => '100 ਕਿਮੀ/ਘੰਟਾ ਵਾਲੀ ਕਾਰ ਨਾਲ';

  @override
  String valueSeconds(String value) {
    return '$value ਸਕਿੰਟ';
  }

  @override
  String valueMinutes(String value) {
    return '$value ਮਿੰਟ';
  }

  @override
  String get sizeTitle => 'ਆਕਾਰ';

  @override
  String sizeTimes(String big, String times, String small) {
    return '$big ਚੌੜਾਈ ਵਿੱਚ $small ਤੋਂ $times× ਵੱਡਾ ਹੈ।';
  }

  @override
  String sizeSimilar(String a, String b) {
    return '$a ਅਤੇ $b ਲਗਭਗ ਇੱਕੋ ਆਕਾਰ ਦੇ ਹਨ।';
  }
}
