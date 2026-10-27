// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => 'സൗരയൂഥം കണ്ടെത്താം, പൂർണ്ണമായും ഓഫ്‌ലൈനിൽ';

  @override
  String get navExplore => 'കണ്ടെത്തുക';

  @override
  String get navCompare => 'താരതമ്യം';

  @override
  String get navWeight => 'ഭാരം';

  @override
  String get navQuiz => 'ക്വിസ്';

  @override
  String get viewMode => 'കാഴ്ച മോഡ്';

  @override
  String get settings => 'ക്രമീകരണങ്ങൾ';

  @override
  String get notToScale =>
      'അളവിന് അനുസരിച്ചല്ല · തുറക്കാൻ ഗ്രഹത്തിൽ ടാപ്പ് ചെയ്യുക';

  @override
  String get dragToRotate => 'തിരിക്കാൻ വലിക്കുക · സൂം ചെയ്യാൻ പിഞ്ച് ചെയ്യുക';

  @override
  String get planetsTitle => 'ഗ്രഹങ്ങൾ';

  @override
  String get planetMercury => 'ബുധൻ';

  @override
  String get planetVenus => 'ശുക്രൻ';

  @override
  String get planetEarth => 'ഭൂമി';

  @override
  String get planetMars => 'ചൊവ്വ';

  @override
  String get planetJupiter => 'വ്യാഴം';

  @override
  String get planetSaturn => 'ശനി';

  @override
  String get planetUranus => 'യുറാനസ്';

  @override
  String get planetNeptune => 'നെപ്റ്റ്യൂൺ';

  @override
  String planetOrder(int n) {
    return 'സൂര്യനിൽ നിന്ന് $n-ാമത്തെ ഗ്രഹം';
  }

  @override
  String get openDetails => 'വിശദാംശങ്ങൾ തുറക്കുക';

  @override
  String get diameter => 'വ്യാസം';

  @override
  String get gravity => 'ഗുരുത്വാകർഷണം';

  @override
  String get avgTemp => 'ശരാശരി താപനില';

  @override
  String get avgTempShort => 'ശരാശരി താപനില';

  @override
  String get dayLength => 'ദിവസം';

  @override
  String get yearLength => 'വർഷം';

  @override
  String get moons => 'അറിയപ്പെടുന്ന ഉപഗ്രഹങ്ങൾ';

  @override
  String get moonsShort => 'ഉപഗ്രഹങ്ങൾ';

  @override
  String get distance => 'സൂര്യനിൽ നിന്നുള്ള ദൂരം';

  @override
  String get pressure => 'ഉപരിതല മർദ്ദം';

  @override
  String get noSurface => 'ഉറച്ച ഉപരിതലമില്ല';

  @override
  String valueKm(String value) {
    return '$value കി.മീ';
  }

  @override
  String valueMillionKm(String value) {
    return '$value ദശലക്ഷം കി.മീ';
  }

  @override
  String valueHours(String value) {
    return '$value മണിക്കൂർ';
  }

  @override
  String valueDays(String value) {
    return '$value ദിവസം';
  }

  @override
  String valueYears(String value) {
    return '$value വർഷം';
  }

  @override
  String get atmosphere => 'അന്തരീക്ഷം';

  @override
  String get thinAtmosphere =>
      'ഏകദേശം അന്തരീക്ഷമില്ല. ഈ വാതകങ്ങൾ എക്സോസ്ഫിയർ എന്ന വളരെ നേർത്ത പാളി ഉണ്ടാക്കുന്നു.';

  @override
  String get oxygen => 'ഓക്സിജൻ';

  @override
  String get oxygenVsEarth => 'ഓക്സിജൻ: ഭൂമിയുമായി താരതമ്യം';

  @override
  String get breathable => 'മനുഷ്യർക്ക് ശ്വസിക്കാൻ കഴിയും';

  @override
  String get notBreathable => 'ശ്വസിക്കാൻ കഴിയില്ല, സ്പേസ് സ്യൂട്ട് വേണം';

  @override
  String weightFeelsLike(String weight) {
    return 'ഭൂമിയിലെ $weight കിലോ ഇവിടെ ഇത്രയാകും';
  }

  @override
  String get gasCo2 => 'കാർബൺ ഡയോക്സൈഡ്';

  @override
  String get gasN2 => 'നൈട്രജൻ';

  @override
  String get gasO2 => 'ഓക്സിജൻ';

  @override
  String get gasAr => 'ആർഗൺ';

  @override
  String get gasH2 => 'ഹൈഡ്രജൻ';

  @override
  String get gasHe => 'ഹീലിയം';

  @override
  String get gasCh4 => 'മീഥെയ്ൻ';

  @override
  String get gasNa => 'സോഡിയം';

  @override
  String get gasK => 'പൊട്ടാസ്യം';

  @override
  String get compareTitle => 'ഗ്രഹങ്ങളുടെ താരതമ്യം';

  @override
  String get compareHint => 'അടുത്തടുത്ത് കാണാൻ രണ്ട് ഗ്രഹങ്ങൾ തിരഞ്ഞെടുക്കുക.';

  @override
  String get weightTitle => 'മറ്റ് ഗ്രഹങ്ങളിൽ നിങ്ങളുടെ ഭാരം';

  @override
  String get weightInput => 'ഭൂമിയിലെ നിങ്ങളുടെ ഭാരം (കിലോ)';

  @override
  String gravityTimes(String factor) {
    return 'ഭൂമിയുടെ ഗുരുത്വാകർഷണത്തിന്റെ $factor×';
  }

  @override
  String get quizTitle => 'ഗ്രഹ ക്വിസ്';

  @override
  String get quizIntro =>
      'ഗ്രഹങ്ങളെക്കുറിച്ച് 10 ചോദ്യങ്ങൾ. എത്രയെണ്ണം ശരിയാക്കാം?';

  @override
  String get quizStart => 'ക്വിസ് തുടങ്ങുക';

  @override
  String quizProgress(int current, int total) {
    return 'ചോദ്യം $current / $total';
  }

  @override
  String get quizNext => 'അടുത്തത്';

  @override
  String get quizSeeResult => 'ഫലം കാണുക';

  @override
  String get quizCorrect => 'ശരി!';

  @override
  String quizWrong(String answer) {
    return 'അല്ല. ശരിയായ ഉത്തരം $answer.';
  }

  @override
  String quizScore(int score, int total) {
    return '$total-ൽ $score ശരി';
  }

  @override
  String quizBest(int score) {
    return 'മികച്ച സ്കോർ: $score';
  }

  @override
  String get quizNewBest => 'പുതിയ മികച്ച സ്കോർ!';

  @override
  String get quizAgain => 'വീണ്ടും കളിക്കുക';

  @override
  String get qLargest => 'ഏറ്റവും വലിയ ഗ്രഹം ഏത്?';

  @override
  String get qSmallest => 'ഏറ്റവും ചെറിയ ഗ്രഹം ഏത്?';

  @override
  String get qHottest => 'ഏറ്റവും ചൂടുള്ള ഗ്രഹം ഏത്?';

  @override
  String get qColdest => 'ഏറ്റവും തണുത്ത ഗ്രഹം ഏത്?';

  @override
  String get qMostMoons =>
      'ഏറ്റവും കൂടുതൽ അറിയപ്പെടുന്ന ഉപഗ്രഹങ്ങൾ ഉള്ള ഗ്രഹം ഏത്?';

  @override
  String get qBreathable =>
      'ഏത് ഗ്രഹത്തിലാണ് മനുഷ്യർക്ക് വായു ശ്വസിക്കാൻ കഴിയുന്നത്?';

  @override
  String get qClosest => 'സൂര്യനോട് ഏറ്റവും അടുത്ത ഗ്രഹം ഏത്?';

  @override
  String get qFarthest => 'സൂര്യനിൽ നിന്ന് ഏറ്റവും അകലെയുള്ള ഗ്രഹം ഏത്?';

  @override
  String get qStrongestGravity =>
      'ഏറ്റവും ശക്തമായ ഗുരുത്വാകർഷണം ഉള്ള ഗ്രഹം ഏത്?';

  @override
  String get qShortestDay => 'ഏറ്റവും ചെറിയ ദിവസമുള്ള ഗ്രഹം ഏത്?';

  @override
  String get qLongestDay => 'ഏറ്റവും നീണ്ട ദിവസമുള്ള ഗ്രഹം ഏത്?';

  @override
  String get appearance => 'രൂപം';

  @override
  String get theme => 'തീം';

  @override
  String get themeSystem => 'സിസ്റ്റം';

  @override
  String get themeLight => 'ലൈറ്റ്';

  @override
  String get themeDark => 'ഡാർക്ക്';

  @override
  String get language => 'ഭാഷ';

  @override
  String get appLanguage => 'ആപ്പ് ഭാഷ';

  @override
  String get languageNote => '20 ഭാഷകൾ · ഗ്രഹങ്ങളുടെ പേരുകളും';

  @override
  String get phoneLanguage => 'ഫോണിന്റെ ഭാഷ';

  @override
  String get updates => 'അപ്ഡേറ്റുകൾ';

  @override
  String get version => 'പതിപ്പ്';

  @override
  String get checkForUpdates => 'അപ്ഡേറ്റ് പരിശോധിക്കുക';

  @override
  String get checking => 'പരിശോധിക്കുന്നു…';

  @override
  String get autoUpdateCheck => 'ദിവസം ഒരിക്കൽ സ്വയം പരിശോധിക്കുക';

  @override
  String get updateNote =>
      'അപ്ഡേറ്റുകൾ GitHub Releases-ൽ നിന്നാണ് വരുന്നത്. നിങ്ങളുടെ ക്രമീകരണങ്ങൾ ഫോണിൽ തന്നെ നിൽക്കും.';

  @override
  String get upToDate => 'നിങ്ങളുടെ കൈവശം ഏറ്റവും പുതിയ പതിപ്പാണ്.';

  @override
  String get updateFailed =>
      'GitHub-ൽ എത്താനായില്ല. ഇന്റർനെറ്റ് പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get updateAvailable => 'അപ്ഡേറ്റ് ലഭ്യമാണ്';

  @override
  String updateReady(String version) {
    return 'പതിപ്പ് $version ഡൗൺലോഡിന് തയ്യാറാണ്.';
  }

  @override
  String get download => 'ഡൗൺലോഡ്';

  @override
  String get later => 'പിന്നീട്';

  @override
  String get about => 'വിവരം';

  @override
  String get sourceCode => 'GitHub-ൽ സോഴ്സ് കോഡ്';

  @override
  String get privacyLine => 'ഓഫ്‌ലൈൻ · പരസ്യങ്ങളില്ല · ട്രാക്കിംഗ് ഇല്ല';

  @override
  String get dataSource => 'വിവരങ്ങൾ: NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'ലിങ്ക് തുറക്കാനായില്ല.';

  @override
  String get bodySun => 'സൂര്യൻ';

  @override
  String get bodyMoon => 'ചന്ദ്രൻ';

  @override
  String get bodyPluto => 'പ്ലൂട്ടോ';

  @override
  String get moonIo => 'അയോ';

  @override
  String get moonEuropa => 'യൂറോപ്പ';

  @override
  String get moonGanymede => 'ഗാനിമീഡ്';

  @override
  String get moonCallisto => 'കാലിസ്റ്റോ';

  @override
  String get moonTitan => 'ടൈറ്റൻ';

  @override
  String get moonEnceladus => 'എൻസെലാഡസ്';

  @override
  String get moonTriton => 'ട്രൈറ്റൺ';

  @override
  String get kindStar => 'നമ്മുടെ നക്ഷത്രം, സൗരയൂഥത്തിന്റെ കേന്ദ്രം';

  @override
  String get kindDwarf => 'കുള്ളൻ ഗ്രഹം';

  @override
  String moonOf(String planet) {
    return '$planet-ന്റെ ഉപഗ്രഹം';
  }

  @override
  String get orbitPeriod => 'ഒരു ഭ്രമണം';

  @override
  String distanceFrom(String body) {
    return '$body-ൽ നിന്നുള്ള ദൂരം';
  }

  @override
  String get composition => 'ഇത് എന്തുകൊണ്ട് നിർമ്മിച്ചതാണ്';

  @override
  String get noAtmosphere => 'യഥാർത്ഥ അന്തരീക്ഷമില്ല, ഏകദേശം ശൂന്യത.';

  @override
  String get majorMoons => 'പ്രധാന ഉപഗ്രഹങ്ങൾ';

  @override
  String get lifeTitle => 'മനുഷ്യർക്ക് ഇവിടെ ജീവിക്കാനാകുമോ?';

  @override
  String get lifeScoreShort => 'ജീവൻ സ്കോർ';

  @override
  String get lifeNote =>
      'താപനില, വായുമർദ്ദം, ഓക്സിജൻ, വെള്ളം, ഉപരിതലം, ഗുരുത്വാകർഷണം എന്നിവയിൽ നിന്ന് കണക്കാക്കിയത്. ഭൂമിക്ക് 10.';

  @override
  String get water => 'വെള്ളം';

  @override
  String get waterLiquid => 'ദ്രാവക ജലം';

  @override
  String get waterIce => 'ഐസ്';

  @override
  String get waterOcean => 'ഐസിനടിയിൽ സമുദ്രം';

  @override
  String get waterNone => 'വെള്ളമില്ല';

  @override
  String get surface => 'ഉപരിതലം';

  @override
  String get solidSurface => 'ഉറച്ച ഉപരിതലം';

  @override
  String get lifeHome => 'വീട് പോലെ തന്നെ';

  @override
  String get lifeHard =>
      'വളരെ ബുദ്ധിമുട്ട്, അടച്ച താവളവും സ്പേസ് സ്യൂട്ടും വേണം';

  @override
  String get lifeNo => 'മനുഷ്യർക്ക് അസാധ്യം';

  @override
  String get downloadInstall => 'ഡൗൺലോഡ് ചെയ്ത് ഇൻസ്റ്റാൾ ചെയ്യുക';

  @override
  String downloadingPercent(String percent) {
    return 'ഡൗൺലോഡ് ചെയ്യുന്നു… $percent%';
  }

  @override
  String get installNow => 'ഇൻസ്റ്റാൾ';

  @override
  String get allowInstalls =>
      'തുറന്ന സ്ക്രീനിൽ Heliora-യ്ക്ക് ആപ്പുകൾ ഇൻസ്റ്റാൾ ചെയ്യാൻ അനുവാദം നൽകുക, തിരികെ വന്ന് ഇൻസ്റ്റാൾ അമർത്തുക.';

  @override
  String get downloadFailed =>
      'ഡൗൺലോഡ് പൂർത്തിയായില്ല. ഇന്റർനെറ്റ് പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get tryAgain => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get today => 'ഇന്ന്';

  @override
  String get play => 'പ്ലേ';

  @override
  String get pause => 'നിർത്തുക';

  @override
  String get monthBack => '30 ദിവസം മുമ്പ്';

  @override
  String get monthForward => '30 ദിവസം കഴിഞ്ഞ്';

  @override
  String get positionsNote =>
      'ഈ തീയതിയിലെ യഥാർത്ഥ സ്ഥാനങ്ങൾ · വലിപ്പവും ദൂരവും അളവിനനുസരിച്ചല്ല · ഗ്രഹത്തിൽ ടാപ്പ് ചെയ്യുക';

  @override
  String get navYou => 'നിങ്ങൾ';

  @override
  String get ageTitle => 'മറ്റ് ഗ്രഹങ്ങളിൽ നിങ്ങളുടെ പ്രായം';

  @override
  String get setBirthDate => 'നിങ്ങളുടെ ജനനത്തീയതി നൽകുക';

  @override
  String get changeBirthDate => 'മാറ്റുക';

  @override
  String nextBirthday(String days) {
    return 'അടുത്ത ജന്മദിനം $days ദിവസത്തിൽ';
  }

  @override
  String get ageNote => 'നിങ്ങളുടെ ജനനത്തീയതി ഈ ഫോണിൽ മാത്രം സൂക്ഷിക്കും.';

  @override
  String get share => 'പങ്കിടുക';

  @override
  String shareText(String planet) {
    return 'Heliora-യിൽ $planet, സൗജന്യ ഓഫ്‌ലൈൻ സൗരയൂഥ ആപ്പ്: https://github.com/lumio-apps/heliora';
  }

  @override
  String get shareFailed => 'ചിത്രം പങ്കിടാനായില്ല.';

  @override
  String get travelTitle => 'എത്ര ദൂരെയാണ്?';

  @override
  String get distanceFromEarth => 'ഇന്ന് ഭൂമിയിൽ നിന്നുള്ള ദൂരം';

  @override
  String get lightTime => 'പ്രകാശത്തിന് വേണ്ട സമയം';

  @override
  String get bySpacecraft => 'മണിക്കൂറിൽ 60,000 കി.മീ ബഹിരാകാശ പേടകത്തിൽ';

  @override
  String get byCar => 'മണിക്കൂറിൽ 100 കി.മീ കാറിൽ';

  @override
  String valueSeconds(String value) {
    return '$value സെ';
  }

  @override
  String valueMinutes(String value) {
    return '$value മിനിറ്റ്';
  }

  @override
  String get sizeTitle => 'വലിപ്പം';

  @override
  String sizeTimes(String big, String times, String small) {
    return '$big വീതിയിൽ $small-നെക്കാൾ $times× വലുതാണ്.';
  }

  @override
  String sizeSimilar(String a, String b) {
    return '$a-യും $b-യും ഏകദേശം ഒരേ വലിപ്പം.';
  }
}
