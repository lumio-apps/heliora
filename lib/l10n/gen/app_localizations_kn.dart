// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => 'ಸೌರವ್ಯೂಹವನ್ನು ಅನ್ವೇಷಿಸಿ, ಸಂಪೂರ್ಣ ಆಫ್‌ಲೈನ್';

  @override
  String get navExplore => 'ಅನ್ವೇಷಿಸಿ';

  @override
  String get navCompare => 'ಹೋಲಿಕೆ';

  @override
  String get navWeight => 'ತೂಕ';

  @override
  String get navQuiz => 'ರಸಪ್ರಶ್ನೆ';

  @override
  String get viewMode => 'ವೀಕ್ಷಣೆ ಮೋಡ್';

  @override
  String get settings => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get notToScale =>
      'ಅಳತೆಗೆ ತಕ್ಕಂತೆ ಇಲ್ಲ · ತೆರೆಯಲು ಗ್ರಹವನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get dragToRotate => 'ತಿರುಗಿಸಲು ಎಳೆಯಿರಿ · ಜೂಮ್‌ಗೆ ಪಿಂಚ್ ಮಾಡಿ';

  @override
  String get planetsTitle => 'ಗ್ರಹಗಳು';

  @override
  String get planetMercury => 'ಬುಧ';

  @override
  String get planetVenus => 'ಶುಕ್ರ';

  @override
  String get planetEarth => 'ಭೂಮಿ';

  @override
  String get planetMars => 'ಮಂಗಳ';

  @override
  String get planetJupiter => 'ಗುರು';

  @override
  String get planetSaturn => 'ಶನಿ';

  @override
  String get planetUranus => 'ಯುರೇನಸ್';

  @override
  String get planetNeptune => 'ನೆಪ್ಚೂನ್';

  @override
  String planetOrder(int n) {
    return 'ಸೂರ್ಯನಿಂದ ಗ್ರಹ ಸಂಖ್ಯೆ $n';
  }

  @override
  String get openDetails => 'ವಿವರಗಳನ್ನು ತೆರೆಯಿರಿ';

  @override
  String get diameter => 'ವ್ಯಾಸ';

  @override
  String get gravity => 'ಗುರುತ್ವಾಕರ್ಷಣೆ';

  @override
  String get avgTemp => 'ಸರಾಸರಿ ತಾಪಮಾನ';

  @override
  String get avgTempShort => 'ಸರಾಸರಿ ತಾಪಮಾನ';

  @override
  String get dayLength => 'ದಿನ';

  @override
  String get yearLength => 'ವರ್ಷ';

  @override
  String get moons => 'ತಿಳಿದಿರುವ ಚಂದ್ರರು';

  @override
  String get moonsShort => 'ಚಂದ್ರರು';

  @override
  String get distance => 'ಸೂರ್ಯನಿಂದ ದೂರ';

  @override
  String get pressure => 'ಮೇಲ್ಮೈ ಒತ್ತಡ';

  @override
  String get noSurface => 'ಗಟ್ಟಿ ಮೇಲ್ಮೈ ಇಲ್ಲ';

  @override
  String valueKm(String value) {
    return '$value ಕಿಮೀ';
  }

  @override
  String valueMillionKm(String value) {
    return '$value ಮಿಲಿಯನ್ ಕಿಮೀ';
  }

  @override
  String valueHours(String value) {
    return '$value ಗಂಟೆ';
  }

  @override
  String valueDays(String value) {
    return '$value ದಿನಗಳು';
  }

  @override
  String valueYears(String value) {
    return '$value ವರ್ಷಗಳು';
  }

  @override
  String get atmosphere => 'ವಾತಾವರಣ';

  @override
  String get thinAtmosphere =>
      'ಬಹುತೇಕ ವಾತಾವರಣವಿಲ್ಲ. ಈ ಅನಿಲಗಳು ಎಕ್ಸೋಸ್ಫಿಯರ್ ಎಂಬ ತುಂಬಾ ತೆಳುವಾದ ಪದರ ಮಾಡುತ್ತವೆ.';

  @override
  String get oxygen => 'ಆಮ್ಲಜನಕ';

  @override
  String get oxygenVsEarth => 'ಆಮ್ಲಜನಕ: ಭೂಮಿಯೊಂದಿಗೆ ಹೋಲಿಕೆ';

  @override
  String get breathable => 'ಮನುಷ್ಯರು ಉಸಿರಾಡಲು ಯೋಗ್ಯ';

  @override
  String get notBreathable => 'ಉಸಿರಾಡಲು ಯೋಗ್ಯವಲ್ಲ, ಬಾಹ್ಯಾಕಾಶ ಉಡುಪು ಬೇಕು';

  @override
  String weightFeelsLike(String weight) {
    return 'ಭೂಮಿಯ $weight ಕೆಜಿ ಇಲ್ಲಿ ಇಷ್ಟು ಅನಿಸುತ್ತದೆ';
  }

  @override
  String get gasCo2 => 'ಕಾರ್ಬನ್ ಡೈಆಕ್ಸೈಡ್';

  @override
  String get gasN2 => 'ಸಾರಜನಕ';

  @override
  String get gasO2 => 'ಆಮ್ಲಜನಕ';

  @override
  String get gasAr => 'ಆರ್ಗಾನ್';

  @override
  String get gasH2 => 'ಜಲಜನಕ';

  @override
  String get gasHe => 'ಹೀಲಿಯಂ';

  @override
  String get gasCh4 => 'ಮೀಥೇನ್';

  @override
  String get gasNa => 'ಸೋಡಿಯಂ';

  @override
  String get gasK => 'ಪೊಟ್ಯಾಸಿಯಂ';

  @override
  String get compareTitle => 'ಗ್ರಹಗಳ ಹೋಲಿಕೆ';

  @override
  String get compareHint => 'ಅಕ್ಕಪಕ್ಕ ನೋಡಲು ಎರಡು ಗ್ರಹಗಳನ್ನು ಆರಿಸಿ.';

  @override
  String get weightTitle => 'ಬೇರೆ ಗ್ರಹಗಳಲ್ಲಿ ನಿಮ್ಮ ತೂಕ';

  @override
  String get weightInput => 'ಭೂಮಿಯ ಮೇಲೆ ನಿಮ್ಮ ತೂಕ (ಕೆಜಿ)';

  @override
  String gravityTimes(String factor) {
    return 'ಭೂಮಿಯ ಗುರುತ್ವಾಕರ್ಷಣೆಯ $factor×';
  }

  @override
  String get quizTitle => 'ಗ್ರಹ ರಸಪ್ರಶ್ನೆ';

  @override
  String get quizIntro =>
      'ಗ್ರಹಗಳ ಬಗ್ಗೆ 10 ಪ್ರಶ್ನೆಗಳು. ನೀವು ಎಷ್ಟು ಸರಿ ಮಾಡಬಲ್ಲಿರಿ?';

  @override
  String get quizStart => 'ರಸಪ್ರಶ್ನೆ ಆರಂಭಿಸಿ';

  @override
  String quizProgress(int current, int total) {
    return 'ಪ್ರಶ್ನೆ $current / $total';
  }

  @override
  String get quizNext => 'ಮುಂದೆ';

  @override
  String get quizSeeResult => 'ಫಲಿತಾಂಶ ನೋಡಿ';

  @override
  String get quizCorrect => 'ಸರಿ!';

  @override
  String quizWrong(String answer) {
    return 'ಅಲ್ಲ. ಸರಿಯಾದ ಉತ್ತರ $answer.';
  }

  @override
  String quizScore(int score, int total) {
    return '$total ರಲ್ಲಿ $score ಸರಿ';
  }

  @override
  String quizBest(int score) {
    return 'ಅತ್ಯುತ್ತಮ ಸ್ಕೋರ್: $score';
  }

  @override
  String get quizNewBest => 'ಹೊಸ ಅತ್ಯುತ್ತಮ ಸ್ಕೋರ್!';

  @override
  String get quizAgain => 'ಮತ್ತೆ ಆಡಿ';

  @override
  String get qLargest => 'ಅತಿ ದೊಡ್ಡ ಗ್ರಹ ಯಾವುದು?';

  @override
  String get qSmallest => 'ಅತಿ ಚಿಕ್ಕ ಗ್ರಹ ಯಾವುದು?';

  @override
  String get qHottest => 'ಅತಿ ಬಿಸಿಯಾದ ಗ್ರಹ ಯಾವುದು?';

  @override
  String get qColdest => 'ಅತಿ ತಂಪಾದ ಗ್ರಹ ಯಾವುದು?';

  @override
  String get qMostMoons => 'ಯಾವ ಗ್ರಹಕ್ಕೆ ಅತಿ ಹೆಚ್ಚು ತಿಳಿದಿರುವ ಚಂದ್ರರಿದ್ದಾರೆ?';

  @override
  String get qBreathable => 'ಯಾವ ಗ್ರಹದಲ್ಲಿ ಮನುಷ್ಯರು ಗಾಳಿಯನ್ನು ಉಸಿರಾಡಬಹುದು?';

  @override
  String get qClosest => 'ಸೂರ್ಯನಿಗೆ ಅತಿ ಹತ್ತಿರದ ಗ್ರಹ ಯಾವುದು?';

  @override
  String get qFarthest => 'ಸೂರ್ಯನಿಂದ ಅತಿ ದೂರದ ಗ್ರಹ ಯಾವುದು?';

  @override
  String get qStrongestGravity => 'ಯಾವ ಗ್ರಹದ ಗುರುತ್ವಾಕರ್ಷಣೆ ಅತಿ ಹೆಚ್ಚು?';

  @override
  String get qShortestDay => 'ಯಾವ ಗ್ರಹದ ದಿನ ಅತಿ ಚಿಕ್ಕದು?';

  @override
  String get qLongestDay => 'ಯಾವ ಗ್ರಹದ ದಿನ ಅತಿ ಉದ್ದ?';

  @override
  String get appearance => 'ನೋಟ';

  @override
  String get theme => 'ಥೀಮ್';

  @override
  String get themeSystem => 'ಸಿಸ್ಟಮ್';

  @override
  String get themeLight => 'ಲೈಟ್';

  @override
  String get themeDark => 'ಡಾರ್ಕ್';

  @override
  String get language => 'ಭಾಷೆ';

  @override
  String get appLanguage => 'ಆ್ಯಪ್ ಭಾಷೆ';

  @override
  String get languageNote => '20 ಭಾಷೆಗಳು · ಗ್ರಹಗಳ ಹೆಸರುಗಳೂ';

  @override
  String get phoneLanguage => 'ಫೋನ್ ಭಾಷೆ';

  @override
  String get updates => 'ಅಪ್‌ಡೇಟ್‌ಗಳು';

  @override
  String get version => 'ಆವೃತ್ತಿ';

  @override
  String get checkForUpdates => 'ಅಪ್‌ಡೇಟ್ ಪರಿಶೀಲಿಸಿ';

  @override
  String get checking => 'ಪರಿಶೀಲಿಸಲಾಗುತ್ತಿದೆ…';

  @override
  String get autoUpdateCheck => 'ದಿನಕ್ಕೆ ಒಮ್ಮೆ ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಪರಿಶೀಲಿಸಿ';

  @override
  String get updateNote =>
      'ಅಪ್‌ಡೇಟ್‌ಗಳು GitHub Releases ನಿಂದ ಬರುತ್ತವೆ. ನಿಮ್ಮ ಸೆಟ್ಟಿಂಗ್‌ಗಳು ಫೋನ್‌ನಲ್ಲೇ ಇರುತ್ತವೆ.';

  @override
  String get upToDate => 'ನಿಮ್ಮ ಬಳಿ ಇತ್ತೀಚಿನ ಆವೃತ್ತಿ ಇದೆ.';

  @override
  String get updateFailed =>
      'GitHub ತಲುಪಲು ಆಗಲಿಲ್ಲ. ಇಂಟರ್ನೆಟ್ ಪರಿಶೀಲಿಸಿ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get updateAvailable => 'ಅಪ್‌ಡೇಟ್ ಲಭ್ಯವಿದೆ';

  @override
  String updateReady(String version) {
    return 'ಆವೃತ್ತಿ $version ಡೌನ್‌ಲೋಡ್‌ಗೆ ಸಿದ್ಧವಾಗಿದೆ.';
  }

  @override
  String get download => 'ಡೌನ್‌ಲೋಡ್';

  @override
  String get later => 'ನಂತರ';

  @override
  String get about => 'ಕುರಿತು';

  @override
  String get sourceCode => 'GitHub ನಲ್ಲಿ ಸೋರ್ಸ್ ಕೋಡ್';

  @override
  String get privacyLine => 'ಆಫ್‌ಲೈನ್ · ಜಾಹೀರಾತು ಇಲ್ಲ · ಟ್ರ್ಯಾಕಿಂಗ್ ಇಲ್ಲ';

  @override
  String get dataSource => 'ಮಾಹಿತಿ: NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'ಲಿಂಕ್ ತೆರೆಯಲು ಆಗಲಿಲ್ಲ.';

  @override
  String get bodySun => 'ಸೂರ್ಯ';

  @override
  String get bodyMoon => 'ಚಂದ್ರ';

  @override
  String get bodyPluto => 'ಪ್ಲೂಟೊ';

  @override
  String get moonIo => 'ಅಯೋ';

  @override
  String get moonEuropa => 'ಯುರೋಪಾ';

  @override
  String get moonGanymede => 'ಗ್ಯಾನಿಮೀಡ್';

  @override
  String get moonCallisto => 'ಕ್ಯಾಲಿಸ್ಟೊ';

  @override
  String get moonTitan => 'ಟೈಟಾನ್';

  @override
  String get moonEnceladus => 'ಎನ್ಸೆಲಾಡಸ್';

  @override
  String get moonTriton => 'ಟ್ರೈಟನ್';

  @override
  String get kindStar => 'ನಮ್ಮ ನಕ್ಷತ್ರ, ಸೌರವ್ಯೂಹದ ಕೇಂದ್ರ';

  @override
  String get kindDwarf => 'ಕುಬ್ಜ ಗ್ರಹ';

  @override
  String moonOf(String planet) {
    return '$planet ನ ಚಂದ್ರ';
  }

  @override
  String get orbitPeriod => 'ಒಂದು ಪರಿಭ್ರಮಣ';

  @override
  String distanceFrom(String body) {
    return '$body ನಿಂದ ದೂರ';
  }

  @override
  String get composition => 'ಇದು ಯಾವುದರಿಂದ ಮಾಡಲ್ಪಟ್ಟಿದೆ';

  @override
  String get noAtmosphere => 'ನಿಜವಾದ ವಾತಾವರಣವಿಲ್ಲ, ಬಹುತೇಕ ನಿರ್ವಾತ.';

  @override
  String get majorMoons => 'ಮುಖ್ಯ ಚಂದ್ರರು';

  @override
  String get lifeTitle => 'ಮನುಷ್ಯರು ಇಲ್ಲಿ ಬದುಕಬಹುದೇ?';

  @override
  String get lifeScoreShort => 'ಜೀವ ಸ್ಕೋರ್';

  @override
  String get lifeNote =>
      'ತಾಪಮಾನ, ಗಾಳಿಯ ಒತ್ತಡ, ಆಮ್ಲಜನಕ, ನೀರು, ಮೇಲ್ಮೈ ಮತ್ತು ಗುರುತ್ವದಿಂದ ಲೆಕ್ಕ. ಭೂಮಿಯ ಸ್ಕೋರ್ 10.';

  @override
  String get water => 'ನೀರು';

  @override
  String get waterLiquid => 'ದ್ರವ ನೀರು';

  @override
  String get waterIce => 'ಮಂಜುಗಡ್ಡೆ';

  @override
  String get waterOcean => 'ಮಂಜಿನ ಕೆಳಗೆ ಸಾಗರ';

  @override
  String get waterNone => 'ನೀರಿಲ್ಲ';

  @override
  String get surface => 'ಮೇಲ್ಮೈ';

  @override
  String get solidSurface => 'ಗಟ್ಟಿ ಮೇಲ್ಮೈ';

  @override
  String get lifeHome => 'ಸಂಪೂರ್ಣ ಮನೆಯಂತೆ';

  @override
  String get lifeHard => 'ತುಂಬಾ ಕಷ್ಟ, ಮುಚ್ಚಿದ ನೆಲೆ ಮತ್ತು ಬಾಹ್ಯಾಕಾಶ ಉಡುಪು ಬೇಕು';

  @override
  String get lifeNo => 'ಮನುಷ್ಯರಿಗೆ ಅಸಾಧ್ಯ';

  @override
  String get downloadInstall => 'ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡಿ';

  @override
  String downloadingPercent(String percent) {
    return 'ಡೌನ್‌ಲೋಡ್ ಆಗುತ್ತಿದೆ… $percent%';
  }

  @override
  String get installNow => 'ಇನ್‌ಸ್ಟಾಲ್';

  @override
  String get allowInstalls =>
      'ತೆರೆದ ಪರದೆಯಲ್ಲಿ Heliora ಗೆ ಆ್ಯಪ್ ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡಲು ಅನುಮತಿ ನೀಡಿ, ನಂತರ ಹಿಂದಿರುಗಿ ಇನ್‌ಸ್ಟಾಲ್ ಒತ್ತಿ.';

  @override
  String get downloadFailed =>
      'ಡೌನ್‌ಲೋಡ್ ಪೂರ್ಣವಾಗಲಿಲ್ಲ. ಇಂಟರ್ನೆಟ್ ಪರಿಶೀಲಿಸಿ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get tryAgain => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get today => 'ಇಂದು';

  @override
  String get play => 'ಚಾಲನೆ';

  @override
  String get pause => 'ವಿರಾಮ';

  @override
  String get monthBack => '30 ದಿನ ಹಿಂದೆ';

  @override
  String get monthForward => '30 ದಿನ ಮುಂದೆ';

  @override
  String get positionsNote =>
      'ಈ ದಿನಾಂಕದ ನಿಜವಾದ ಸ್ಥಾನಗಳು · ಗಾತ್ರ ಮತ್ತು ದೂರ ಅಳತೆಗೆ ತಕ್ಕಂತೆ ಇಲ್ಲ · ಗ್ರಹವನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get navYou => 'ನೀವು';

  @override
  String get ageTitle => 'ಬೇರೆ ಗ್ರಹಗಳಲ್ಲಿ ನಿಮ್ಮ ವಯಸ್ಸು';

  @override
  String get setBirthDate => 'ನಿಮ್ಮ ಜನ್ಮದಿನಾಂಕ ಹಾಕಿ';

  @override
  String get changeBirthDate => 'ಬದಲಿಸಿ';

  @override
  String nextBirthday(String days) {
    return 'ಮುಂದಿನ ಹುಟ್ಟುಹಬ್ಬ $days ದಿನಗಳಲ್ಲಿ';
  }

  @override
  String get ageNote => 'ನಿಮ್ಮ ಜನ್ಮದಿನಾಂಕ ಈ ಫೋನ್‌ನಲ್ಲಿ ಮಾತ್ರ ಉಳಿಯುತ್ತದೆ.';

  @override
  String get share => 'ಹಂಚಿ';

  @override
  String shareText(String planet) {
    return 'Heliora ದಲ್ಲಿ $planet, ಉಚಿತ ಆಫ್‌ಲೈನ್ ಸೌರವ್ಯೂಹ ಆ್ಯಪ್: https://github.com/lumio-apps/heliora';
  }

  @override
  String get shareFailed => 'ಚಿತ್ರ ಹಂಚಲು ಆಗಲಿಲ್ಲ.';

  @override
  String get travelTitle => 'ಎಷ್ಟು ದೂರ?';

  @override
  String get distanceFromEarth => 'ಇಂದು ಭೂಮಿಯಿಂದ ದೂರ';

  @override
  String get lightTime => 'ಬೆಳಕಿಗೆ ಬೇಕಾಗುವ ಸಮಯ';

  @override
  String get bySpacecraft => 'ಗಂಟೆಗೆ 60,000 ಕಿಮೀ ಬಾಹ್ಯಾಕಾಶ ನೌಕೆಯಲ್ಲಿ';

  @override
  String get byCar => 'ಗಂಟೆಗೆ 100 ಕಿಮೀ ಕಾರಿನಲ್ಲಿ';

  @override
  String valueSeconds(String value) {
    return '$value ಸೆ';
  }

  @override
  String valueMinutes(String value) {
    return '$value ನಿಮಿಷ';
  }

  @override
  String get sizeTitle => 'ಗಾತ್ರ';

  @override
  String sizeTimes(String big, String times, String small) {
    return '$big ಅಗಲದಲ್ಲಿ $small ಗಿಂತ $times× ದೊಡ್ಡದು.';
  }

  @override
  String sizeSimilar(String a, String b) {
    return '$a ಮತ್ತು $b ಬಹುತೇಕ ಒಂದೇ ಗಾತ್ರ.';
  }

  @override
  String get navSky => 'ಆಕಾಶ';

  @override
  String get skyTitle => 'ಇಂದು ರಾತ್ರಿಯ ಆಕಾಶ';

  @override
  String get chooseCity => 'ನಿಮ್ಮ ನಗರ ಆರಿಸಿ';

  @override
  String get chooseCityHint =>
      'ಚಂದ್ರ ಮತ್ತು ಇಂದು ರಾತ್ರಿ ಕಾಣುವ ಗ್ರಹಗಳನ್ನು ನೋಡಲು ಹತ್ತಿರದ ನಗರ ಆರಿಸಿ. ಸ್ಥಳದ ಅನುಮತಿ ಬೇಡ, ಇದು ಫೋನ್‌ನಲ್ಲೇ ಉಳಿಯುತ್ತದೆ.';

  @override
  String get searchCity => 'ನಗರ ಹುಡುಕಿ';

  @override
  String get noCityFound => 'ಯಾವ ನಗರವೂ ಸಿಗಲಿಲ್ಲ';

  @override
  String get cityNote =>
      'ಸಮಯ ನಿಮ್ಮ ಫೋನ್‌ನ ಟೈಮ್ ಝೋನ್‌ನಲ್ಲಿದೆ. ಕತ್ತಲ ಆಕಾಶದಲ್ಲಿ ದಿಗಂತದಿಂದ ಕನಿಷ್ಠ 5° ಮೇಲಿದ್ದರೆ ಗ್ರಹ ಕಾಣುತ್ತದೆ ಎಂದು ಪರಿಗಣಿಸಲಾಗುತ್ತದೆ.';

  @override
  String illuminated(String percent) {
    return '$percent% ಬೆಳಕು';
  }

  @override
  String get moonrise => 'ಚಂದ್ರೋದಯ';

  @override
  String get moonset => 'ಚಂದ್ರಾಸ್ತ';

  @override
  String get sunset => 'ಸೂರ್ಯಾಸ್ತ';

  @override
  String get sunrise => 'ಸೂರ್ಯೋದಯ';

  @override
  String get nextFull => 'ಮುಂದಿನ ಹುಣ್ಣಿಮೆ';

  @override
  String get nextNew => 'ಮುಂದಿನ ಅಮಾವಾಸ್ಯೆ';

  @override
  String get phaseNew => 'ಅಮಾವಾಸ್ಯೆ';

  @override
  String get phaseWaxingCrescent => 'ಬೆಳೆಯುವ ಬಿದಿಗೆ ಚಂದ್ರ';

  @override
  String get phaseFirstQuarter => 'ಶುಕ್ಲ ಅಷ್ಟಮಿ';

  @override
  String get phaseWaxingGibbous => 'ಬೆಳೆಯುವ ಚಂದ್ರ';

  @override
  String get phaseFull => 'ಹುಣ್ಣಿಮೆ';

  @override
  String get phaseWaningGibbous => 'ಕರಗುವ ಚಂದ್ರ';

  @override
  String get phaseLastQuarter => 'ಕೃಷ್ಣ ಅಷ್ಟಮಿ';

  @override
  String get phaseWaningCrescent => 'ಕರಗುವ ಬಿದಿಗೆ ಚಂದ್ರ';

  @override
  String get planetsTonight => 'ಇಂದು ರಾತ್ರಿಯ ಗ್ರಹಗಳು';

  @override
  String get statusVisible => 'ಇಂದು ರಾತ್ರಿ ಕಾಣುತ್ತದೆ';

  @override
  String get statusEvening => 'ಸಂಜೆ, ಸೂರ್ಯಾಸ್ತದ ನಂತರ';

  @override
  String get statusMorning => 'ಬೆಳಿಗ್ಗೆ, ಸೂರ್ಯೋದಯಕ್ಕೆ ಮೊದಲು';

  @override
  String get statusNotVisible => 'ಇಂದು ರಾತ್ರಿ ಕಾಣುವುದಿಲ್ಲ';

  @override
  String bestAt(String time) {
    return 'ಉತ್ತಮ ಸಮಯ $time';
  }

  @override
  String altitudeDir(String direction, String degrees) {
    return '$direction, $degrees° ಎತ್ತರ';
  }

  @override
  String riseSet(String rise, String set) {
    return 'ಉದಯ $rise · ಅಸ್ತ $set';
  }

  @override
  String get needsTelescope => 'ಬೈನಾಕ್ಯುಲರ್ ಅಥವಾ ದೂರದರ್ಶಕ ಬೇಕು';

  @override
  String get dirN => 'ಉತ್ತರ';

  @override
  String get dirNE => 'ಈಶಾನ್ಯ';

  @override
  String get dirE => 'ಪೂರ್ವ';

  @override
  String get dirSE => 'ಆಗ್ನೇಯ';

  @override
  String get dirS => 'ದಕ್ಷಿಣ';

  @override
  String get dirSW => 'ನೈಋತ್ಯ';

  @override
  String get dirW => 'ಪಶ್ಚಿಮ';

  @override
  String get dirNW => 'ವಾಯವ್ಯ';

  @override
  String get findPlanet => 'ಆಕಾಶದಲ್ಲಿ ಹುಡುಕಿ';

  @override
  String finderTitle(String name) {
    return '$name ಹುಡುಕಿ';
  }

  @override
  String get pointPhone => 'ಫೋನ್ ಮೇಲೆತ್ತಿ ನಿಧಾನವಾಗಿ ತಿರುಗಿಸಿ.';

  @override
  String turnRight(String degrees) {
    return '$degrees° ಬಲಕ್ಕೆ ತಿರುಗಿ';
  }

  @override
  String turnLeft(String degrees) {
    return '$degrees° ಎಡಕ್ಕೆ ತಿರುಗಿ';
  }

  @override
  String tiltUp(String degrees) {
    return '$degrees° ಮೇಲಕ್ಕೆ ಎತ್ತಿ';
  }

  @override
  String tiltDown(String degrees) {
    return '$degrees° ಕೆಳಗೆ ಇಳಿಸಿ';
  }

  @override
  String onTarget(String name) {
    return '$name ಅಲ್ಲೇ ಇದೆ!';
  }

  @override
  String belowHorizon(String name) {
    return '$name ಈಗ ದಿಗಂತದ ಕೆಳಗಿದೆ.';
  }

  @override
  String risesAt(String time) {
    return 'ಇದು $timeಕ್ಕೆ ಉದಯಿಸುತ್ತದೆ.';
  }

  @override
  String get noSensor =>
      'ಈ ಫೋನ್‌ನಲ್ಲಿ ದಿಕ್ಸೂಚಿ ಸೆನ್ಸರ್ ಇಲ್ಲ, ಆದ್ದರಿಂದ ಹುಡುಕುವ ಸೌಲಭ್ಯ ಕೆಲಸ ಮಾಡುವುದಿಲ್ಲ.';

  @override
  String get calibrate =>
      'ದಿಕ್ಸೂಚಿಯನ್ನು ಕ್ಯಾಲಿಬ್ರೇಟ್ ಮಾಡಬೇಕು: ಫೋನ್ ಅನ್ನು ಕೆಲವು ಬಾರಿ 8 ಆಕಾರದಲ್ಲಿ ತಿರುಗಿಸಿ.';

  @override
  String get phoneNow => 'ನಿಮ್ಮ ಫೋನ್ ಈ ಕಡೆ ತೋರಿಸುತ್ತಿದೆ';

  @override
  String get finderNote =>
      'ಫೋನ್‌ನ ಹಿಂಭಾಗವನ್ನು ಆಕಾಶದ ಕಡೆಗೆ ಇರಿಸಿ ಮತ್ತು ಆಯಸ್ಕಾಂತ ಹಾಗೂ ಲೋಹದಿಂದ ದೂರವಿಡಿ. ಸೂರ್ಯನನ್ನು ಎಂದೂ ನೋಡಬೇಡಿ.';

  @override
  String get eventsTitle => 'ಬಾಹ್ಯಾಕಾಶ ಘಟನೆಗಳು';

  @override
  String get eventsSubtitle => 'ಮುಂದಿನ 12 ತಿಂಗಳಲ್ಲಿ ಆಕಾಶದಲ್ಲಿ ಏನು ನೋಡಬೇಕು.';

  @override
  String eventsNext(String event, String when) {
    return 'ಮುಂದೆ: $event · $when';
  }

  @override
  String get eventFullMoon => 'ಹುಣ್ಣಿಮೆ';

  @override
  String get eventNewMoon => 'ಅಮಾವಾಸ್ಯೆ';

  @override
  String eventOpposition(String planet) {
    return '$planet ಪ್ರತಿಯುತಿಯಲ್ಲಿ';
  }

  @override
  String eventEveningElongation(String planet) {
    return '$planet: ಸಂಜೆ ನೋಡಲು ಉತ್ತಮ ಸಮಯ';
  }

  @override
  String eventMorningElongation(String planet) {
    return '$planet: ಬೆಳಗ್ಗೆ ನೋಡಲು ಉತ್ತಮ ಸಮಯ';
  }

  @override
  String eventConjunction(String a, String b) {
    return '$a ಮತ್ತು $b ಹತ್ತಿರ ಬರುತ್ತವೆ';
  }

  @override
  String get eventMarchEquinox => 'ಮಾರ್ಚ್ ವಿಷುವ';

  @override
  String get eventJuneSolstice => 'ಜೂನ್ ಅಯನ ಸಂಕ್ರಾಂತಿ';

  @override
  String get eventSeptemberEquinox => 'ಸೆಪ್ಟೆಂಬರ್ ವಿಷುವ';

  @override
  String get eventDecemberSolstice => 'ಡಿಸೆಂಬರ್ ಅಯನ ಸಂಕ್ರಾಂತಿ';

  @override
  String get eventFullMoonDesc =>
      'ಚಂದ್ರನ ಇಡೀ ಮುಖ ಬೆಳಗುತ್ತದೆ. ಇದು ಸೂರ್ಯಾಸ್ತದ ಸುಮಾರಿಗೆ ಉದಯಿಸುತ್ತದೆ.';

  @override
  String get eventNewMoonDesc =>
      'ಚಂದ್ರ ಕಾಣುವುದಿಲ್ಲ. ನಕ್ಷತ್ರ ಮತ್ತು ಗ್ರಹಗಳನ್ನು ನೋಡಲು ತಿಂಗಳ ಅತ್ಯಂತ ಕತ್ತಲೆಯ ಆಕಾಶ.';

  @override
  String eventOppositionDesc(String planet) {
    return '$planet ಸೂರ್ಯನ ನೇರ ಎದುರಿಗಿದೆ. ಈ ವರ್ಷ ಇದು ಅತ್ಯಂತ ಪ್ರಕಾಶಮಾನ ಮತ್ತು ರಾತ್ರಿಯಿಡೀ ಕಾಣುತ್ತದೆ.';
  }

  @override
  String eventEveningDesc(String planet, String degrees) {
    return '$planet ಸೂರ್ಯನಿಂದ $degrees° ದೂರದಲ್ಲಿದೆ, ಅತ್ಯಧಿಕ ದೂರ. ಸೂರ್ಯಾಸ್ತದ ನಂತರ ಪಶ್ಚಿಮದಲ್ಲಿ ಕೆಳಗೆ ನೋಡಿ.';
  }

  @override
  String eventMorningDesc(String planet, String degrees) {
    return '$planet ಸೂರ್ಯನಿಂದ $degrees° ದೂರದಲ್ಲಿದೆ, ಅತ್ಯಧಿಕ ದೂರ. ಸೂರ್ಯೋದಯದ ಮೊದಲು ಪೂರ್ವದಲ್ಲಿ ಕೆಳಗೆ ನೋಡಿ.';
  }

  @override
  String eventConjunctionDesc(String degrees) {
    return 'ಆಕಾಶದಲ್ಲಿ ಇವು ಕೇವಲ $degrees° ಅಂತರದಲ್ಲಿ ಹಾದುಹೋಗುತ್ತವೆ.';
  }

  @override
  String get eventEquinoxDesc =>
      'ಭೂಮಿಯಲ್ಲಿ ಎಲ್ಲೆಡೆ ಹಗಲು ಮತ್ತು ರಾತ್ರಿ ಬಹುತೇಕ ಸಮಾನ.';

  @override
  String get eventJuneSolsticeDesc =>
      'ಉತ್ತರದಲ್ಲಿ ಅತಿ ದೀರ್ಘ ಹಗಲು, ದಕ್ಷಿಣದಲ್ಲಿ ಅತಿ ಚಿಕ್ಕ ಹಗಲು.';

  @override
  String get eventDecemberSolsticeDesc =>
      'ಉತ್ತರದಲ್ಲಿ ಅತಿ ಚಿಕ್ಕ ಹಗಲು, ದಕ್ಷಿಣದಲ್ಲಿ ಅತಿ ದೀರ್ಘ ಹಗಲು.';

  @override
  String eventMeteorShower(String shower) {
    return '$shower ಉಲ್ಕಾವೃಷ್ಟಿ';
  }

  @override
  String eventMeteorDesc(String rate, String percent) {
    return 'ಕತ್ತಲೆ ಆಕಾಶದಲ್ಲಿ ಗಂಟೆಗೆ ಸುಮಾರು $rate ವರೆಗೆ ಉಲ್ಕೆಗಳು. ಚಂದ್ರ $percent% ಬೆಳಗಿರುತ್ತದೆ.';
  }

  @override
  String get showerQuadrantids => 'ಕ್ವಾಡ್ರಾಂಟಿಡ್ಸ್';

  @override
  String get showerLyrids => 'ಲೈರಿಡ್ಸ್';

  @override
  String get showerEtaAquariids => 'ಎಟಾ ಅಕ್ವೇರಿಡ್ಸ್';

  @override
  String get showerPerseids => 'ಪರ್ಸಿಡ್ಸ್';

  @override
  String get showerOrionids => 'ಓರಿಯೊನಿಡ್ಸ್';

  @override
  String get showerLeonids => 'ಲಿಯೊನಿಡ್ಸ್';

  @override
  String get showerGeminids => 'ಜೆಮಿನಿಡ್ಸ್';

  @override
  String get showerUrsids => 'ಅರ್ಸಿಡ್ಸ್';

  @override
  String get eventToday => 'ಇಂದು';

  @override
  String get eventTomorrow => 'ನಾಳೆ';

  @override
  String eventInDays(String days) {
    return '$days ದಿನಗಳಲ್ಲಿ';
  }

  @override
  String get eventsNote =>
      'ದಿನಾಂಕಗಳನ್ನು ನಿಮ್ಮ ಫೋನ್‌ನಲ್ಲೇ ಲೆಕ್ಕಹಾಕಿ ಅದರ ಟೈಮ್ ಜೋನ್‌ನಲ್ಲಿ ತೋರಿಸಲಾಗುತ್ತದೆ. ಉಲ್ಕಾವೃಷ್ಟಿಯ ಉತ್ತುಂಗ ದಿನಗಳು ಪ್ರತಿ ವರ್ಷದ ಸಾಮಾನ್ಯ ದಿನಗಳು, ಒಂದು ದಿನ ಹೆಚ್ಚು ಕಡಿಮೆ ಆಗಬಹುದು. ರಿಮೈಂಡರ್‌ಗಳು ನಿಮ್ಮ ಫೋನ್‌ನಲ್ಲೇ ಇರುತ್ತವೆ.';

  @override
  String get remindMe => 'ನನಗೆ ನೆನಪಿಸಿ';

  @override
  String reminderSet(String date) {
    return 'ಸರಿ, ನಾನು ನಿಮಗೆ $date ರಂದು ನೆನಪಿಸುತ್ತೇನೆ.';
  }

  @override
  String get reminderOff => 'ರಿಮೈಂಡರ್ ತೆಗೆದುಹಾಕಲಾಗಿದೆ.';

  @override
  String get reminderTooLate =>
      'ಈ ಘಟನೆ ತುಂಬಾ ಹತ್ತಿರವಿದೆ, ರಿಮೈಂಡರ್ ಹೊಂದಿಸಲಾಗದು.';

  @override
  String get notificationsOff =>
      'Heliora ಅಧಿಸೂಚನೆಗಳು ಆಫ್ ಆಗಿವೆ. Android ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಆನ್ ಮಾಡಿ.';

  @override
  String get reminderTomorrow => 'ನಾಳೆ ನಡೆಯಲಿದೆ';

  @override
  String get reminderToday => 'ಇಂದು ನಡೆಯುತ್ತಿದೆ';
}
