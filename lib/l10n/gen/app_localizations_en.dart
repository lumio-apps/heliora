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

  @override
  String get navSky => 'Sky';

  @override
  String get skyTitle => 'Tonight\'s sky';

  @override
  String get chooseCity => 'Choose your city';

  @override
  String get chooseCityHint =>
      'Pick the city nearest to you to see the Moon and which planets you can spot tonight. No location permission is needed, and it stays on your phone.';

  @override
  String get searchCity => 'Search city';

  @override
  String get noCityFound => 'No city found';

  @override
  String get cityNote =>
      'Times are in your phone\'s time zone. A planet counts as visible when it is at least 5° above the horizon in a dark sky.';

  @override
  String illuminated(String percent) {
    return '$percent% lit';
  }

  @override
  String get moonrise => 'Moonrise';

  @override
  String get moonset => 'Moonset';

  @override
  String get sunset => 'Sunset';

  @override
  String get sunrise => 'Sunrise';

  @override
  String get nextFull => 'Next full moon';

  @override
  String get nextNew => 'Next new moon';

  @override
  String get phaseNew => 'New moon';

  @override
  String get phaseWaxingCrescent => 'Waxing crescent';

  @override
  String get phaseFirstQuarter => 'First quarter';

  @override
  String get phaseWaxingGibbous => 'Waxing gibbous';

  @override
  String get phaseFull => 'Full moon';

  @override
  String get phaseWaningGibbous => 'Waning gibbous';

  @override
  String get phaseLastQuarter => 'Last quarter';

  @override
  String get phaseWaningCrescent => 'Waning crescent';

  @override
  String get planetsTonight => 'Planets tonight';

  @override
  String get statusVisible => 'Visible tonight';

  @override
  String get statusEvening => 'In the evening, after sunset';

  @override
  String get statusMorning => 'In the morning, before sunrise';

  @override
  String get statusNotVisible => 'Not visible tonight';

  @override
  String bestAt(String time) {
    return 'Best at $time';
  }

  @override
  String altitudeDir(String direction, String degrees) {
    return '$direction, $degrees° high';
  }

  @override
  String riseSet(String rise, String set) {
    return 'Rises $rise · Sets $set';
  }

  @override
  String get needsTelescope => 'Needs binoculars or a telescope';

  @override
  String get dirN => 'North';

  @override
  String get dirNE => 'North-east';

  @override
  String get dirE => 'East';

  @override
  String get dirSE => 'South-east';

  @override
  String get dirS => 'South';

  @override
  String get dirSW => 'South-west';

  @override
  String get dirW => 'West';

  @override
  String get dirNW => 'North-west';

  @override
  String get findPlanet => 'Find in the sky';

  @override
  String finderTitle(String name) {
    return 'Find $name';
  }

  @override
  String get pointPhone => 'Hold your phone up and move it slowly around.';

  @override
  String turnRight(String degrees) {
    return 'Turn right $degrees°';
  }

  @override
  String turnLeft(String degrees) {
    return 'Turn left $degrees°';
  }

  @override
  String tiltUp(String degrees) {
    return 'Tilt up $degrees°';
  }

  @override
  String tiltDown(String degrees) {
    return 'Tilt down $degrees°';
  }

  @override
  String onTarget(String name) {
    return '$name is right there!';
  }

  @override
  String belowHorizon(String name) {
    return '$name is below the horizon right now.';
  }

  @override
  String risesAt(String time) {
    return 'It rises at $time.';
  }

  @override
  String get noSensor =>
      'This phone has no compass sensor, so the finder cannot work.';

  @override
  String get calibrate =>
      'The compass needs calibrating: move your phone in a figure 8 a few times.';

  @override
  String get phoneNow => 'Your phone points to';

  @override
  String get finderNote =>
      'Hold the phone with its back towards the sky and keep it away from magnets and metal. Never look at the Sun.';

  @override
  String get eventsTitle => 'Space events';

  @override
  String get eventsSubtitle =>
      'What to look for in the sky over the next 12 months.';

  @override
  String eventsNext(String event, String when) {
    return 'Next: $event · $when';
  }

  @override
  String get eventFullMoon => 'Full Moon';

  @override
  String get eventNewMoon => 'New Moon';

  @override
  String eventOpposition(String planet) {
    return '$planet at opposition';
  }

  @override
  String eventEveningElongation(String planet) {
    return '$planet: best evening view';
  }

  @override
  String eventMorningElongation(String planet) {
    return '$planet: best morning view';
  }

  @override
  String eventConjunction(String a, String b) {
    return '$a and $b meet';
  }

  @override
  String get eventMarchEquinox => 'March equinox';

  @override
  String get eventJuneSolstice => 'June solstice';

  @override
  String get eventSeptemberEquinox => 'September equinox';

  @override
  String get eventDecemberSolstice => 'December solstice';

  @override
  String get eventFullMoonDesc =>
      'The Moon\'s whole face is lit. It rises around sunset.';

  @override
  String get eventNewMoonDesc =>
      'The Moon is hidden. The darkest skies of the month for stars and planets.';

  @override
  String eventOppositionDesc(String planet) {
    return '$planet is opposite the Sun. It is at its brightest this year and up all night.';
  }

  @override
  String eventEveningDesc(String planet, String degrees) {
    return '$planet is $degrees° from the Sun, as far as it gets. Look low in the west after sunset.';
  }

  @override
  String eventMorningDesc(String planet, String degrees) {
    return '$planet is $degrees° from the Sun, as far as it gets. Look low in the east before sunrise.';
  }

  @override
  String eventConjunctionDesc(String degrees) {
    return 'They pass only $degrees° apart in the sky.';
  }

  @override
  String get eventEquinoxDesc =>
      'Day and night are almost equal everywhere on Earth.';

  @override
  String get eventJuneSolsticeDesc =>
      'Longest day in the north, shortest day in the south.';

  @override
  String get eventDecemberSolsticeDesc =>
      'Shortest day in the north, longest day in the south.';

  @override
  String eventMeteorShower(String shower) {
    return '$shower meteor shower';
  }

  @override
  String eventMeteorDesc(String rate, String percent) {
    return 'Up to about $rate meteors an hour under a dark sky. The Moon will be $percent% lit.';
  }

  @override
  String get showerQuadrantids => 'Quadrantids';

  @override
  String get showerLyrids => 'Lyrids';

  @override
  String get showerEtaAquariids => 'Eta Aquariids';

  @override
  String get showerPerseids => 'Perseids';

  @override
  String get showerOrionids => 'Orionids';

  @override
  String get showerLeonids => 'Leonids';

  @override
  String get showerGeminids => 'Geminids';

  @override
  String get showerUrsids => 'Ursids';

  @override
  String get eventToday => 'Today';

  @override
  String get eventTomorrow => 'Tomorrow';

  @override
  String eventInDays(String days) {
    return 'In $days days';
  }

  @override
  String get eventsNote =>
      'Dates are worked out on your phone and shown in its time zone. Meteor shower peaks are typical yearly dates and can shift by a day. Reminders stay on your phone.';

  @override
  String get remindMe => 'Remind me';

  @override
  String reminderSet(String date) {
    return 'Okay, I will remind you on $date.';
  }

  @override
  String get reminderOff => 'Reminder removed.';

  @override
  String get reminderTooLate => 'This event is too close to set a reminder.';

  @override
  String get notificationsOff =>
      'Notifications are off for Heliora. Turn them on in Android settings.';

  @override
  String get reminderTomorrow => 'Coming up tomorrow';

  @override
  String get reminderToday => 'Happening today';

  @override
  String get onlineTitle => 'Online features';

  @override
  String get onlineSubtitle =>
      'Show the space station and rocket launches. Heliora then contacts only wheretheiss.at, Celestrak and Launch Library 2, which can see your phone\'s internet address. Nothing else is sent. Off by default.';

  @override
  String get turnOnOnline => 'Turn on online features';

  @override
  String get issTitle => 'Space station';

  @override
  String get issCardHint => 'Where it is now and when it passes over you';

  @override
  String get issNeedsOnline =>
      'To show the station, Heliora needs its orbit data from the internet. It is downloaded once and then works offline for days.';

  @override
  String get issLoading => 'Getting the orbit data…';

  @override
  String get issFailed =>
      'Could not get the orbit data. Check your internet and try again.';

  @override
  String issStale(String days) {
    return 'The orbit data is $days days old, so positions may be off. Connect to the internet to refresh it.';
  }

  @override
  String get issHeight => 'Height';

  @override
  String get issSpeed => 'Speed';

  @override
  String get issFromYou => 'Distance from you';

  @override
  String valueKmh(String value) {
    return '$value km/h';
  }

  @override
  String issAboveHorizon(String direction, String degrees) {
    return 'Above your horizon now! Look $direction, $degrees° high.';
  }

  @override
  String get issBelowHorizon => 'Below your horizon right now.';

  @override
  String issPassesTitle(String city) {
    return 'Next passes over $city';
  }

  @override
  String get issNoPasses => 'No good passes in the next 5 days.';

  @override
  String issMaxHigh(String degrees) {
    return 'Up to $degrees° high';
  }

  @override
  String issFromTo(String start, String end) {
    return '$start to $end';
  }

  @override
  String get issVisible => 'Easy to see';

  @override
  String get issHidden => 'Hard to see';

  @override
  String get issPassTitle => 'Space station passing over you';

  @override
  String issPassBody(String degrees, String direction) {
    return 'Rises in 10 minutes, up to $degrees° high. Look $direction.';
  }

  @override
  String get issNote =>
      'Positions are worked out on your phone from the station\'s orbit data. A pass is easy to see when the sky is dark and the station is lit by the Sun: it looks like a bright, fast star.';

  @override
  String get launchesNeedOnline =>
      'Turn on online features to see upcoming rocket launches here.';

  @override
  String get launchesFailed =>
      'Could not update the launch list. Showing the saved one.';

  @override
  String get launchesNote =>
      'Launch times come from Launch Library 2 and often change. Names and places are in English.';

  @override
  String get launchReminderBody =>
      'Lifts off in about an hour. Times can change.';

  @override
  String get launchTimeTbd => 'Time not set yet';
}
