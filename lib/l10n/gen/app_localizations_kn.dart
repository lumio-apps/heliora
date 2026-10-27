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
}
