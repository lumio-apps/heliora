// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => 'સૂર્યમંડળની સફર, સંપૂર્ણ ઑફલાઇન';

  @override
  String get navExplore => 'શોધો';

  @override
  String get navCompare => 'સરખામણી';

  @override
  String get navWeight => 'વજન';

  @override
  String get navQuiz => 'ક્વિઝ';

  @override
  String get viewMode => 'દૃશ્ય મોડ';

  @override
  String get settings => 'સેટિંગ્સ';

  @override
  String get notToScale => 'માપ પ્રમાણે નથી · ખોલવા માટે ગ્રહ પર ટૅપ કરો';

  @override
  String get dragToRotate => 'ફેરવવા ખેંચો · ઝૂમ કરવા પિંચ કરો';

  @override
  String get planetsTitle => 'ગ્રહો';

  @override
  String get planetMercury => 'બુધ';

  @override
  String get planetVenus => 'શુક્ર';

  @override
  String get planetEarth => 'પૃથ્વી';

  @override
  String get planetMars => 'મંગળ';

  @override
  String get planetJupiter => 'ગુરુ';

  @override
  String get planetSaturn => 'શનિ';

  @override
  String get planetUranus => 'યુરેનસ';

  @override
  String get planetNeptune => 'નેપ્ચ્યુન';

  @override
  String planetOrder(int n) {
    return 'સૂર્યથી ગ્રહ ક્રમાંક $n';
  }

  @override
  String get openDetails => 'વિગતો ખોલો';

  @override
  String get diameter => 'વ્યાસ';

  @override
  String get gravity => 'ગુરુત્વાકર્ષણ';

  @override
  String get avgTemp => 'સરેરાશ તાપમાન';

  @override
  String get avgTempShort => 'સરેરાશ તાપમાન';

  @override
  String get dayLength => 'દિવસ';

  @override
  String get yearLength => 'વર્ષ';

  @override
  String get moons => 'જાણીતા ચંદ્રો';

  @override
  String get moonsShort => 'ચંદ્રો';

  @override
  String get distance => 'સૂર્યથી અંતર';

  @override
  String get pressure => 'સપાટીનું દબાણ';

  @override
  String get noSurface => 'કોઈ નક્કર સપાટી નથી';

  @override
  String valueKm(String value) {
    return '$value કિમી';
  }

  @override
  String valueMillionKm(String value) {
    return '$value મિલિયન કિમી';
  }

  @override
  String valueHours(String value) {
    return '$value કલાક';
  }

  @override
  String valueDays(String value) {
    return '$value દિવસ';
  }

  @override
  String valueYears(String value) {
    return '$value વર્ષ';
  }

  @override
  String get atmosphere => 'વાતાવરણ';

  @override
  String get thinAtmosphere =>
      'લગભગ કોઈ વાતાવરણ નથી. આ વાયુઓ એક્ઝોસ્ફિયર નામનું ખૂબ પાતળું સ્તર બનાવે છે.';

  @override
  String get oxygen => 'ઑક્સિજન';

  @override
  String get oxygenVsEarth => 'ઑક્સિજન: પૃથ્વી સાથે સરખામણી';

  @override
  String get breathable => 'માણસો માટે શ્વાસ લેવા યોગ્ય';

  @override
  String get notBreathable => 'શ્વાસ લેવા યોગ્ય નથી, સ્પેસસૂટ જરૂરી છે';

  @override
  String weightFeelsLike(String weight) {
    return 'પૃથ્વીના $weight કિલો અહીં આટલા લાગશે';
  }

  @override
  String get gasCo2 => 'કાર્બન ડાયોક્સાઇડ';

  @override
  String get gasN2 => 'નાઇટ્રોજન';

  @override
  String get gasO2 => 'ઑક્સિજન';

  @override
  String get gasAr => 'આર્ગન';

  @override
  String get gasH2 => 'હાઇડ્રોજન';

  @override
  String get gasHe => 'હિલિયમ';

  @override
  String get gasCh4 => 'મિથેન';

  @override
  String get gasNa => 'સોડિયમ';

  @override
  String get gasK => 'પોટેશિયમ';

  @override
  String get compareTitle => 'ગ્રહોની સરખામણી';

  @override
  String get compareHint => 'બે ગ્રહ પસંદ કરો અને સાથે-સાથે જુઓ.';

  @override
  String get weightTitle => 'બીજા ગ્રહો પર તમારું વજન';

  @override
  String get weightInput => 'પૃથ્વી પર તમારું વજન (કિલો)';

  @override
  String gravityTimes(String factor) {
    return 'પૃથ્વીના ગુરુત્વાકર્ષણનું $factor×';
  }

  @override
  String get quizTitle => 'ગ્રહ ક્વિઝ';

  @override
  String get quizIntro => 'ગ્રહો વિશે 10 પ્રશ્નો. તમે કેટલા સાચા કરી શકો?';

  @override
  String get quizStart => 'ક્વિઝ શરૂ કરો';

  @override
  String quizProgress(int current, int total) {
    return 'પ્રશ્ન $current / $total';
  }

  @override
  String get quizNext => 'આગળ';

  @override
  String get quizSeeResult => 'પરિણામ જુઓ';

  @override
  String get quizCorrect => 'સાચું!';

  @override
  String quizWrong(String answer) {
    return 'નહીં. સાચો જવાબ $answer છે.';
  }

  @override
  String quizScore(int score, int total) {
    return '$total માંથી $score સાચા';
  }

  @override
  String quizBest(int score) {
    return 'શ્રેષ્ઠ સ્કોર: $score';
  }

  @override
  String get quizNewBest => 'નવો શ્રેષ્ઠ સ્કોર!';

  @override
  String get quizAgain => 'ફરી રમો';

  @override
  String get qLargest => 'સૌથી મોટો ગ્રહ કયો છે?';

  @override
  String get qSmallest => 'સૌથી નાનો ગ્રહ કયો છે?';

  @override
  String get qHottest => 'સૌથી ગરમ ગ્રહ કયો છે?';

  @override
  String get qColdest => 'સૌથી ઠંડો ગ્રહ કયો છે?';

  @override
  String get qMostMoons => 'કયા ગ્રહને સૌથી વધુ જાણીતા ચંદ્રો છે?';

  @override
  String get qBreathable => 'કયા ગ્રહ પર માણસો હવામાં શ્વાસ લઈ શકે છે?';

  @override
  String get qClosest => 'સૂર્યની સૌથી નજીક કયો ગ્રહ છે?';

  @override
  String get qFarthest => 'સૂર્યથી સૌથી દૂર કયો ગ્રહ છે?';

  @override
  String get qStrongestGravity => 'કયા ગ્રહનું ગુરુત્વાકર્ષણ સૌથી વધુ છે?';

  @override
  String get qShortestDay => 'કયા ગ્રહનો દિવસ સૌથી ટૂંકો છે?';

  @override
  String get qLongestDay => 'કયા ગ્રહનો દિવસ સૌથી લાંબો છે?';

  @override
  String get appearance => 'દેખાવ';

  @override
  String get theme => 'થીમ';

  @override
  String get themeSystem => 'સિસ્ટમ';

  @override
  String get themeLight => 'લાઇટ';

  @override
  String get themeDark => 'ડાર્ક';

  @override
  String get language => 'ભાષા';

  @override
  String get appLanguage => 'ઍપની ભાષા';

  @override
  String get languageNote => '20 ભાષાઓ · ગ્રહોના નામ પણ';

  @override
  String get phoneLanguage => 'ફોનની ભાષા';

  @override
  String get updates => 'અપડેટ';

  @override
  String get version => 'વર્ઝન';

  @override
  String get checkForUpdates => 'અપડેટ તપાસો';

  @override
  String get checking => 'તપાસી રહ્યા છીએ…';

  @override
  String get autoUpdateCheck => 'દિવસમાં એક વાર આપમેળે તપાસો';

  @override
  String get updateNote =>
      'અપડેટ GitHub Releases પરથી આવે છે. તમારી સેટિંગ્સ તમારા ફોનમાં જ રહે છે.';

  @override
  String get upToDate => 'તમારી પાસે નવીનતમ વર્ઝન છે.';

  @override
  String get updateFailed =>
      'GitHub સુધી પહોંચી શકાયું નહીં. ઇન્ટરનેટ તપાસીને ફરી પ્રયાસ કરો.';

  @override
  String get updateAvailable => 'અપડેટ ઉપલબ્ધ છે';

  @override
  String updateReady(String version) {
    return 'વર્ઝન $version ડાઉનલોડ માટે તૈયાર છે.';
  }

  @override
  String get download => 'ડાઉનલોડ';

  @override
  String get later => 'પછી';

  @override
  String get about => 'વિશે';

  @override
  String get sourceCode => 'GitHub પર સોર્સ કોડ';

  @override
  String get privacyLine => 'ઑફલાઇન · કોઈ જાહેરાત નહીં · કોઈ ટ્રૅકિંગ નહીં';

  @override
  String get dataSource => 'તથ્યો: NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'લિંક ખોલી શકાઈ નહીં.';

  @override
  String get bodySun => 'સૂર્ય';

  @override
  String get bodyMoon => 'ચંદ્ર';

  @override
  String get bodyPluto => 'પ્લૂટો';

  @override
  String get moonIo => 'આયો';

  @override
  String get moonEuropa => 'યુરોપા';

  @override
  String get moonGanymede => 'ગેનિમીડ';

  @override
  String get moonCallisto => 'કૅલિસ્ટો';

  @override
  String get moonTitan => 'ટાઇટન';

  @override
  String get moonEnceladus => 'એન્સેલેડસ';

  @override
  String get moonTriton => 'ટ્રાઇટન';

  @override
  String get kindStar => 'આપણો તારો, સૂર્યમંડળનું કેન્દ્ર';

  @override
  String get kindDwarf => 'વામન ગ્રહ';

  @override
  String moonOf(String planet) {
    return '$planetનો ચંદ્ર';
  }

  @override
  String get orbitPeriod => 'એક પરિક્રમા';

  @override
  String distanceFrom(String body) {
    return '$bodyથી અંતર';
  }

  @override
  String get composition => 'તે શેનાથી બનેલું છે';

  @override
  String get noAtmosphere => 'ખરું વાતાવરણ નથી, લગભગ શૂન્યાવકાશ છે.';

  @override
  String get majorMoons => 'મુખ્ય ચંદ્રો';

  @override
  String get lifeTitle => 'શું માણસો અહીં રહી શકે?';

  @override
  String get lifeScoreShort => 'જીવન સ્કોર';

  @override
  String get lifeNote =>
      'તાપમાન, હવાનું દબાણ, ઑક્સિજન, પાણી, સપાટી અને ગુરુત્વાકર્ષણ પરથી ગણાયું. પૃથ્વીનો સ્કોર 10 છે.';

  @override
  String get water => 'પાણી';

  @override
  String get waterLiquid => 'પ્રવાહી પાણી';

  @override
  String get waterIce => 'બરફ';

  @override
  String get waterOcean => 'બરફ નીચે સમુદ્ર';

  @override
  String get waterNone => 'પાણી નથી';

  @override
  String get surface => 'સપાટી';

  @override
  String get solidSurface => 'નક્કર સપાટી';

  @override
  String get lifeHome => 'બિલકુલ ઘર જેવું';

  @override
  String get lifeHard => 'ખૂબ મુશ્કેલ, બંધ બેઝ અને સ્પેસસૂટ જોઈએ';

  @override
  String get lifeNo => 'માણસો માટે અશક્ય';

  @override
  String get downloadInstall => 'ડાઉનલોડ કરી ઇન્સ્ટોલ કરો';

  @override
  String downloadingPercent(String percent) {
    return 'ડાઉનલોડ થઈ રહ્યું છે… $percent%';
  }

  @override
  String get installNow => 'ઇન્સ્ટોલ કરો';

  @override
  String get allowInstalls =>
      'ખુલેલી સ્ક્રીનમાં Heliora ને ઍપ ઇન્સ્ટોલ કરવાની મંજૂરી આપો, પછી પાછા આવીને ઇન્સ્ટોલ દબાવો.';

  @override
  String get downloadFailed =>
      'ડાઉનલોડ પૂરું ન થયું. ઇન્ટરનેટ તપાસીને ફરી પ્રયાસ કરો.';

  @override
  String get tryAgain => 'ફરી પ્રયાસ કરો';
}
