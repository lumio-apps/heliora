// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => 'Explore the Solar System, fully offline';

  @override
  String get navExplore => 'Explore';

  @override
  String get navCompare => 'Compare';

  @override
  String get navWeight => 'Weight';

  @override
  String get navQuiz => 'Quiz';

  @override
  String get viewMode => 'View mode';

  @override
  String get settings => 'Settings';

  @override
  String get notToScale => 'Not to scale · Tap a planet to open it';

  @override
  String get dragToRotate => 'Drag to rotate · Pinch to zoom';

  @override
  String get planetsTitle => 'Planets';

  @override
  String get planetMercury => 'Mercury';

  @override
  String get planetVenus => 'Venus';

  @override
  String get planetEarth => 'Earth';

  @override
  String get planetMars => 'Mars';

  @override
  String get planetJupiter => 'Jupiter';

  @override
  String get planetSaturn => 'Saturn';

  @override
  String get planetUranus => 'Uranus';

  @override
  String get planetNeptune => 'Neptune';

  @override
  String planetOrder(int n) {
    return 'Planet $n from the Sun';
  }

  @override
  String get openDetails => 'Open details';

  @override
  String get diameter => 'Diameter';

  @override
  String get gravity => 'Gravity';

  @override
  String get avgTemp => 'Average temperature';

  @override
  String get avgTempShort => 'Avg temp';

  @override
  String get dayLength => 'Day';

  @override
  String get yearLength => 'Year';

  @override
  String get moons => 'Known moons';

  @override
  String get moonsShort => 'Moons';

  @override
  String get distance => 'Distance from the Sun';

  @override
  String get pressure => 'Surface pressure';

  @override
  String get noSurface => 'No solid surface';

  @override
  String valueKm(String value) {
    return '$value km';
  }

  @override
  String valueMillionKm(String value) {
    return '$value million km';
  }

  @override
  String valueHours(String value) {
    return '$value h';
  }

  @override
  String valueDays(String value) {
    return '$value days';
  }

  @override
  String valueYears(String value) {
    return '$value years';
  }

  @override
  String get atmosphere => 'Atmosphere';

  @override
  String get thinAtmosphere =>
      'Almost no atmosphere. These gases form a very thin layer called an exosphere.';

  @override
  String get oxygen => 'Oxygen';

  @override
  String get oxygenVsEarth => 'Oxygen vs Earth';

  @override
  String get breathable => 'Breathable for humans';

  @override
  String get notBreathable => 'Not breathable, a spacesuit is needed';

  @override
  String weightFeelsLike(String weight) {
    return '$weight kg on Earth feels like';
  }

  @override
  String get gasCo2 => 'Carbon dioxide';

  @override
  String get gasN2 => 'Nitrogen';

  @override
  String get gasO2 => 'Oxygen';

  @override
  String get gasAr => 'Argon';

  @override
  String get gasH2 => 'Hydrogen';

  @override
  String get gasHe => 'Helium';

  @override
  String get gasCh4 => 'Methane';

  @override
  String get gasNa => 'Sodium';

  @override
  String get gasK => 'Potassium';

  @override
  String get compareTitle => 'Compare planets';

  @override
  String get compareHint => 'Pick two planets to see them side by side.';

  @override
  String get weightTitle => 'Your weight on other planets';

  @override
  String get weightInput => 'Your weight on Earth (kg)';

  @override
  String gravityTimes(String factor) {
    return '$factor× Earth\'s gravity';
  }

  @override
  String get quizTitle => 'Planet quiz';

  @override
  String get quizIntro =>
      '10 questions about the planets. How many can you get right?';

  @override
  String get quizStart => 'Start quiz';

  @override
  String quizProgress(int current, int total) {
    return 'Question $current of $total';
  }

  @override
  String get quizNext => 'Next';

  @override
  String get quizSeeResult => 'See result';

  @override
  String get quizCorrect => 'Correct!';

  @override
  String quizWrong(String answer) {
    return 'Not quite. The answer is $answer.';
  }

  @override
  String quizScore(int score, int total) {
    return 'You got $score of $total';
  }

  @override
  String quizBest(int score) {
    return 'Best score: $score';
  }

  @override
  String get quizNewBest => 'New best score!';

  @override
  String get quizAgain => 'Play again';

  @override
  String get qLargest => 'Which planet is the largest?';

  @override
  String get qSmallest => 'Which planet is the smallest?';

  @override
  String get qHottest => 'Which planet is the hottest?';

  @override
  String get qColdest => 'Which planet is the coldest?';

  @override
  String get qMostMoons => 'Which planet has the most known moons?';

  @override
  String get qBreathable => 'On which planet can humans breathe the air?';

  @override
  String get qClosest => 'Which planet is closest to the Sun?';

  @override
  String get qFarthest => 'Which planet is farthest from the Sun?';

  @override
  String get qStrongestGravity => 'Which planet has the strongest gravity?';

  @override
  String get qShortestDay => 'Which planet has the shortest day?';

  @override
  String get qLongestDay => 'Which planet has the longest day?';

  @override
  String get appearance => 'Appearance';

  @override
  String get theme => 'Theme';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get language => 'Language';

  @override
  String get appLanguage => 'App language';

  @override
  String get languageNote => '20 languages · planet names too';

  @override
  String get phoneLanguage => 'Phone language';

  @override
  String get updates => 'Updates';

  @override
  String get version => 'Version';

  @override
  String get checkForUpdates => 'Check for updates';

  @override
  String get checking => 'Checking…';

  @override
  String get autoUpdateCheck => 'Check automatically once a day';

  @override
  String get updateNote =>
      'Updates come from GitHub Releases. Your settings stay on your phone.';

  @override
  String get upToDate => 'You have the latest version.';

  @override
  String get updateFailed =>
      'Could not reach GitHub. Check your internet and try again.';

  @override
  String get updateAvailable => 'Update available';

  @override
  String updateReady(String version) {
    return 'Version $version is ready to download.';
  }

  @override
  String get download => 'Download';

  @override
  String get later => 'Later';

  @override
  String get about => 'About';

  @override
  String get sourceCode => 'Source code on GitHub';

  @override
  String get privacyLine => 'Offline · No ads · No tracking';

  @override
  String get dataSource => 'Facts: NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'Could not open the link.';

  @override
  String get bodySun => 'Sun';

  @override
  String get bodyMoon => 'Moon';

  @override
  String get bodyPluto => 'Pluto';

  @override
  String get moonIo => 'Io';

  @override
  String get moonEuropa => 'Europa';

  @override
  String get moonGanymede => 'Ganymede';

  @override
  String get moonCallisto => 'Callisto';

  @override
  String get moonTitan => 'Titan';

  @override
  String get moonEnceladus => 'Enceladus';

  @override
  String get moonTriton => 'Triton';

  @override
  String get kindStar => 'Our star, the centre of the Solar System';

  @override
  String get kindDwarf => 'Dwarf planet';

  @override
  String moonOf(String planet) {
    return 'Moon of $planet';
  }

  @override
  String get orbitPeriod => 'One orbit';

  @override
  String distanceFrom(String body) {
    return 'Distance from $body';
  }

  @override
  String get composition => 'What it is made of';

  @override
  String get noAtmosphere => 'No real atmosphere, it is almost a vacuum.';

  @override
  String get majorMoons => 'Major moons';

  @override
  String get lifeTitle => 'Could humans live here?';

  @override
  String get lifeScoreShort => 'Life score';

  @override
  String get lifeNote =>
      'Scored from temperature, air pressure, oxygen, water, surface and gravity. Earth scores 10.';

  @override
  String get water => 'Water';

  @override
  String get waterLiquid => 'Liquid water';

  @override
  String get waterIce => 'Ice';

  @override
  String get waterOcean => 'Ocean under the ice';

  @override
  String get waterNone => 'No water';

  @override
  String get surface => 'Surface';

  @override
  String get solidSurface => 'Solid surface';

  @override
  String get lifeHome => 'Just like home';

  @override
  String get lifeHard =>
      'Very hard, people would need a closed base and spacesuits';

  @override
  String get lifeNo => 'Impossible for humans';

  @override
  String get downloadInstall => 'Download and install';

  @override
  String downloadingPercent(String percent) {
    return 'Downloading… $percent%';
  }

  @override
  String get installNow => 'Install';

  @override
  String get allowInstalls =>
      'Allow Heliora to install apps on the screen that opened, then come back and tap Install.';

  @override
  String get downloadFailed =>
      'The download did not finish. Check your internet and try again.';

  @override
  String get tryAgain => 'Try again';

  @override
  String get today => 'Today';

  @override
  String get play => 'Play';

  @override
  String get pause => 'Pause';

  @override
  String get monthBack => '30 days earlier';

  @override
  String get monthForward => '30 days later';

  @override
  String get positionsNote =>
      'Real positions on this date · Sizes and distances not to scale · Tap a planet';

  @override
  String get navYou => 'You';

  @override
  String get ageTitle => 'Your age on other planets';

  @override
  String get setBirthDate => 'Set your birth date';

  @override
  String get changeBirthDate => 'Change';

  @override
  String nextBirthday(String days) {
    return 'Next birthday in $days days';
  }

  @override
  String get ageNote => 'Your birth date is saved only on this phone.';

  @override
  String get share => 'Share';

  @override
  String shareText(String planet) {
    return '$planet in Heliora, the free offline Solar System app: https://github.com/lumio-apps/heliora';
  }

  @override
  String get shareFailed => 'Could not share the picture.';

  @override
  String get travelTitle => 'How far is it?';

  @override
  String get distanceFromEarth => 'Distance from Earth today';

  @override
  String get lightTime => 'Light takes';

  @override
  String get bySpacecraft => 'By spacecraft at 60,000 km/h';

  @override
  String get byCar => 'By car at 100 km/h';

  @override
  String valueSeconds(String value) {
    return '$value s';
  }

  @override
  String valueMinutes(String value) {
    return '$value min';
  }

  @override
  String get sizeTitle => 'Size';

  @override
  String sizeTimes(String big, String times, String small) {
    return '$big is $times× as wide as $small.';
  }

  @override
  String sizeSimilar(String a, String b) {
    return '$a and $b are about the same size.';
  }
}
