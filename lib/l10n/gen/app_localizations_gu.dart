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

  @override
  String get today => 'આજે';

  @override
  String get play => 'ચલાવો';

  @override
  String get pause => 'રોકો';

  @override
  String get monthBack => '30 દિવસ પહેલાં';

  @override
  String get monthForward => '30 દિવસ પછી';

  @override
  String get positionsNote =>
      'આ તારીખે ખરી સ્થિતિ · કદ અને અંતર માપ પ્રમાણે નથી · ગ્રહ પર ટૅપ કરો';

  @override
  String get navYou => 'તમે';

  @override
  String get ageTitle => 'બીજા ગ્રહો પર તમારી ઉંમર';

  @override
  String get setBirthDate => 'તમારી જન્મતારીખ નાખો';

  @override
  String get changeBirthDate => 'બદલો';

  @override
  String nextBirthday(String days) {
    return 'આગલો જન્મદિવસ $days દિવસમાં';
  }

  @override
  String get ageNote => 'તમારી જન્મતારીખ ફક્ત આ ફોનમાં જ સેવ થાય છે.';

  @override
  String get share => 'શેર કરો';

  @override
  String shareText(String planet) {
    return 'Heliora માં $planet, મફત ઑફલાઇન સૂર્યમંડળ ઍપ: https://github.com/lumio-apps/heliora';
  }

  @override
  String get shareFailed => 'ચિત્ર શેર ન થઈ શક્યું.';

  @override
  String get travelTitle => 'કેટલું દૂર છે?';

  @override
  String get distanceFromEarth => 'આજે પૃથ્વીથી અંતર';

  @override
  String get lightTime => 'પ્રકાશને લાગે';

  @override
  String get bySpacecraft => '60,000 કિમી/કલાકના અવકાશયાનથી';

  @override
  String get byCar => '100 કિમી/કલાકની કારથી';

  @override
  String valueSeconds(String value) {
    return '$value સેકન્ડ';
  }

  @override
  String valueMinutes(String value) {
    return '$value મિનિટ';
  }

  @override
  String get sizeTitle => 'કદ';

  @override
  String sizeTimes(String big, String times, String small) {
    return '$big પહોળાઈમાં $small કરતાં $times× મોટું છે.';
  }

  @override
  String sizeSimilar(String a, String b) {
    return '$a અને $b લગભગ સરખા કદના છે.';
  }

  @override
  String get navSky => 'આકાશ';

  @override
  String get skyTitle => 'આજ રાતનું આકાશ';

  @override
  String get chooseCity => 'તમારું શહેર પસંદ કરો';

  @override
  String get chooseCityHint =>
      'ચંદ્ર અને આજ રાતે દેખાતા ગ્રહો જોવા નજીકનું શહેર પસંદ કરો. લોકેશન પરવાનગી જોઈતી નથી, અને તે ફોનમાં જ રહે છે.';

  @override
  String get searchCity => 'શહેર શોધો';

  @override
  String get noCityFound => 'કોઈ શહેર મળ્યું નથી';

  @override
  String get cityNote =>
      'સમય તમારા ફોનના ટાઇમ ઝોનમાં છે. અંધારા આકાશમાં ક્ષિતિજથી ઓછામાં ઓછું 5° ઉપર હોય તો ગ્રહ દેખાતો ગણાય.';

  @override
  String illuminated(String percent) {
    return '$percent% પ્રકાશિત';
  }

  @override
  String get moonrise => 'ચંદ્રોદય';

  @override
  String get moonset => 'ચંદ્રાસ્ત';

  @override
  String get sunset => 'સૂર્યાસ્ત';

  @override
  String get sunrise => 'સૂર્યોદય';

  @override
  String get nextFull => 'આગલી પૂનમ';

  @override
  String get nextNew => 'આગલી અમાસ';

  @override
  String get phaseNew => 'અમાસ';

  @override
  String get phaseWaxingCrescent => 'વધતો બીજનો ચંદ્ર';

  @override
  String get phaseFirstQuarter => 'સુદ આઠમ';

  @override
  String get phaseWaxingGibbous => 'વધતો ચંદ્ર';

  @override
  String get phaseFull => 'પૂનમ';

  @override
  String get phaseWaningGibbous => 'ઘટતો ચંદ્ર';

  @override
  String get phaseLastQuarter => 'વદ આઠમ';

  @override
  String get phaseWaningCrescent => 'ઘટતો બીજનો ચંદ્ર';

  @override
  String get planetsTonight => 'આજ રાતના ગ્રહો';

  @override
  String get statusVisible => 'આજ રાતે દેખાશે';

  @override
  String get statusEvening => 'સાંજે, સૂર્યાસ્ત પછી';

  @override
  String get statusMorning => 'સવારે, સૂર્યોદય પહેલાં';

  @override
  String get statusNotVisible => 'આજ રાતે નહીં દેખાય';

  @override
  String bestAt(String time) {
    return 'શ્રેષ્ઠ સમય $time';
  }

  @override
  String altitudeDir(String direction, String degrees) {
    return '$direction, $degrees° ઊંચે';
  }

  @override
  String riseSet(String rise, String set) {
    return 'ઉદય $rise · અસ્ત $set';
  }

  @override
  String get needsTelescope => 'દૂરબીન કે ટેલિસ્કોપ જોઈએ';

  @override
  String get dirN => 'ઉત્તર';

  @override
  String get dirNE => 'ઈશાન';

  @override
  String get dirE => 'પૂર્વ';

  @override
  String get dirSE => 'અગ્નિ';

  @override
  String get dirS => 'દક્ષિણ';

  @override
  String get dirSW => 'નૈઋત્ય';

  @override
  String get dirW => 'પશ્ચિમ';

  @override
  String get dirNW => 'વાયવ્ય';

  @override
  String get findPlanet => 'આકાશમાં શોધો';

  @override
  String finderTitle(String name) {
    return '$name શોધો';
  }

  @override
  String get pointPhone => 'ફોન ઊંચો કરીને ધીમે ધીમે ફેરવો.';

  @override
  String turnRight(String degrees) {
    return '$degrees° જમણે વળો';
  }

  @override
  String turnLeft(String degrees) {
    return '$degrees° ડાબે વળો';
  }

  @override
  String tiltUp(String degrees) {
    return '$degrees° ઉપર કરો';
  }

  @override
  String tiltDown(String degrees) {
    return '$degrees° નીચે કરો';
  }

  @override
  String onTarget(String name) {
    return '$name બરાબર ત્યાં જ છે!';
  }

  @override
  String belowHorizon(String name) {
    return '$name અત્યારે ક્ષિતિજની નીચે છે.';
  }

  @override
  String risesAt(String time) {
    return 'તે $time વાગ્યે ઊગશે.';
  }

  @override
  String get noSensor =>
      'આ ફોનમાં હોકાયંત્ર સેન્સર નથી, તેથી શોધક કામ નહીં કરે.';

  @override
  String get calibrate =>
      'હોકાયંત્ર કેલિબ્રેટ કરવું પડશે: ફોનને થોડી વાર 8 ના આકારમાં ફેરવો.';

  @override
  String get phoneNow => 'તમારો ફોન આ તરફ છે';

  @override
  String get finderNote =>
      'ફોનનો પાછળનો ભાગ આકાશ તરફ રાખો અને ચુંબક તથા ધાતુથી દૂર રાખો. સૂર્ય તરફ ક્યારેય ન જુઓ.';
}
