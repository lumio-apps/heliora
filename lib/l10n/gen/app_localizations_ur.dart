// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => 'نظامِ شمسی کی سیر، مکمل طور پر آف لائن';

  @override
  String get navExplore => 'دریافت کریں';

  @override
  String get navCompare => 'موازنہ';

  @override
  String get navWeight => 'وزن';

  @override
  String get navQuiz => 'کوئز';

  @override
  String get viewMode => 'منظر کا موڈ';

  @override
  String get settings => 'ترتیبات';

  @override
  String get notToScale =>
      'پیمانے کے مطابق نہیں · کھولنے کے لیے سیارے پر ٹیپ کریں';

  @override
  String get dragToRotate => 'گھمانے کے لیے کھینچیں · زوم کے لیے پنچ کریں';

  @override
  String get planetsTitle => 'سیارے';

  @override
  String get planetMercury => 'عطارد';

  @override
  String get planetVenus => 'زہرہ';

  @override
  String get planetEarth => 'زمین';

  @override
  String get planetMars => 'مریخ';

  @override
  String get planetJupiter => 'مشتری';

  @override
  String get planetSaturn => 'زحل';

  @override
  String get planetUranus => 'یورینس';

  @override
  String get planetNeptune => 'نیپچون';

  @override
  String planetOrder(int n) {
    return 'سورج سے سیارہ نمبر $n';
  }

  @override
  String get openDetails => 'تفصیلات کھولیں';

  @override
  String get diameter => 'قطر';

  @override
  String get gravity => 'کششِ ثقل';

  @override
  String get avgTemp => 'اوسط درجۂ حرارت';

  @override
  String get avgTempShort => 'اوسط درجہ';

  @override
  String get dayLength => 'دن';

  @override
  String get yearLength => 'سال';

  @override
  String get moons => 'معلوم چاند';

  @override
  String get moonsShort => 'چاند';

  @override
  String get distance => 'سورج سے فاصلہ';

  @override
  String get pressure => 'سطح کا دباؤ';

  @override
  String get noSurface => 'کوئی ٹھوس سطح نہیں';

  @override
  String valueKm(String value) {
    return '$value کلومیٹر';
  }

  @override
  String valueMillionKm(String value) {
    return '$value ملین کلومیٹر';
  }

  @override
  String valueHours(String value) {
    return '$value گھنٹے';
  }

  @override
  String valueDays(String value) {
    return '$value دن';
  }

  @override
  String valueYears(String value) {
    return '$value سال';
  }

  @override
  String get atmosphere => 'فضا';

  @override
  String get thinAtmosphere =>
      'تقریباً کوئی فضا نہیں۔ یہ گیسیں ایکسوسفیئر نامی بہت پتلی تہہ بناتی ہیں۔';

  @override
  String get oxygen => 'آکسیجن';

  @override
  String get oxygenVsEarth => 'آکسیجن: زمین سے موازنہ';

  @override
  String get breathable => 'انسانوں کے سانس لینے کے قابل';

  @override
  String get notBreathable => 'سانس لینے کے قابل نہیں، اسپیس سوٹ ضروری ہے';

  @override
  String weightFeelsLike(String weight) {
    return 'زمین کے $weight کلو یہاں اتنے لگیں گے';
  }

  @override
  String get gasCo2 => 'کاربن ڈائی آکسائیڈ';

  @override
  String get gasN2 => 'نائٹروجن';

  @override
  String get gasO2 => 'آکسیجن';

  @override
  String get gasAr => 'آرگون';

  @override
  String get gasH2 => 'ہائیڈروجن';

  @override
  String get gasHe => 'ہیلیم';

  @override
  String get gasCh4 => 'میتھین';

  @override
  String get gasNa => 'سوڈیم';

  @override
  String get gasK => 'پوٹاشیم';

  @override
  String get compareTitle => 'سیاروں کا موازنہ';

  @override
  String get compareHint => 'ساتھ ساتھ دیکھنے کے لیے دو سیارے منتخب کریں۔';

  @override
  String get weightTitle => 'دوسرے سیاروں پر آپ کا وزن';

  @override
  String get weightInput => 'زمین پر آپ کا وزن (کلو)';

  @override
  String gravityTimes(String factor) {
    return 'زمین کی کششِ ثقل کا $factor×';
  }

  @override
  String get quizTitle => 'سیاروں کا کوئز';

  @override
  String get quizIntro =>
      'سیاروں کے بارے میں 10 سوال۔ آپ کتنے درست کر سکتے ہیں؟';

  @override
  String get quizStart => 'کوئز شروع کریں';

  @override
  String quizProgress(int current, int total) {
    return 'سوال $current / $total';
  }

  @override
  String get quizNext => 'اگلا';

  @override
  String get quizSeeResult => 'نتیجہ دیکھیں';

  @override
  String get quizCorrect => 'درست!';

  @override
  String quizWrong(String answer) {
    return 'نہیں۔ درست جواب $answer ہے۔';
  }

  @override
  String quizScore(int score, int total) {
    return '$total میں سے $score درست';
  }

  @override
  String quizBest(int score) {
    return 'بہترین اسکور: $score';
  }

  @override
  String get quizNewBest => 'نیا بہترین اسکور!';

  @override
  String get quizAgain => 'دوبارہ کھیلیں';

  @override
  String get qLargest => 'سب سے بڑا سیارہ کون سا ہے؟';

  @override
  String get qSmallest => 'سب سے چھوٹا سیارہ کون سا ہے؟';

  @override
  String get qHottest => 'سب سے گرم سیارہ کون سا ہے؟';

  @override
  String get qColdest => 'سب سے ٹھنڈا سیارہ کون سا ہے؟';

  @override
  String get qMostMoons => 'کس سیارے کے سب سے زیادہ معلوم چاند ہیں؟';

  @override
  String get qBreathable => 'کس سیارے پر انسان ہوا میں سانس لے سکتے ہیں؟';

  @override
  String get qClosest => 'سورج کے سب سے قریب کون سا سیارہ ہے؟';

  @override
  String get qFarthest => 'سورج سے سب سے دور کون سا سیارہ ہے؟';

  @override
  String get qStrongestGravity => 'کس سیارے کی کششِ ثقل سب سے زیادہ ہے؟';

  @override
  String get qShortestDay => 'کس سیارے کا دن سب سے چھوٹا ہے؟';

  @override
  String get qLongestDay => 'کس سیارے کا دن سب سے لمبا ہے؟';

  @override
  String get appearance => 'ظاہری شکل';

  @override
  String get theme => 'تھیم';

  @override
  String get themeSystem => 'سسٹم';

  @override
  String get themeLight => 'لائٹ';

  @override
  String get themeDark => 'ڈارک';

  @override
  String get language => 'زبان';

  @override
  String get appLanguage => 'ایپ کی زبان';

  @override
  String get languageNote => '20 زبانیں · سیاروں کے نام بھی';

  @override
  String get phoneLanguage => 'فون کی زبان';

  @override
  String get updates => 'اپ ڈیٹس';

  @override
  String get version => 'ورژن';

  @override
  String get checkForUpdates => 'اپ ڈیٹ چیک کریں';

  @override
  String get checking => 'چیک ہو رہا ہے…';

  @override
  String get autoUpdateCheck => 'روزانہ ایک بار خود چیک کریں';

  @override
  String get updateNote =>
      'اپ ڈیٹس GitHub Releases سے آتی ہیں۔ آپ کی ترتیبات آپ کے فون میں ہی رہتی ہیں۔';

  @override
  String get upToDate => 'آپ کے پاس تازہ ترین ورژن ہے۔';

  @override
  String get updateFailed =>
      'GitHub تک رسائی نہیں ہو سکی۔ انٹرنیٹ چیک کر کے دوبارہ کوشش کریں۔';

  @override
  String get updateAvailable => 'اپ ڈیٹ دستیاب ہے';

  @override
  String updateReady(String version) {
    return 'ورژن $version ڈاؤن لوڈ کے لیے تیار ہے۔';
  }

  @override
  String get download => 'ڈاؤن لوڈ';

  @override
  String get later => 'بعد میں';

  @override
  String get about => 'تعارف';

  @override
  String get sourceCode => 'GitHub پر سورس کوڈ';

  @override
  String get privacyLine => 'آف لائن · کوئی اشتہار نہیں · کوئی ٹریکنگ نہیں';

  @override
  String get dataSource => 'حقائق: NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'لنک نہیں کھل سکا۔';

  @override
  String get bodySun => 'سورج';

  @override
  String get bodyMoon => 'چاند';

  @override
  String get bodyPluto => 'پلوٹو';

  @override
  String get moonIo => 'آئیو';

  @override
  String get moonEuropa => 'یوروپا';

  @override
  String get moonGanymede => 'گینیمیڈ';

  @override
  String get moonCallisto => 'کیلسٹو';

  @override
  String get moonTitan => 'ٹائٹن';

  @override
  String get moonEnceladus => 'اینسیلاڈس';

  @override
  String get moonTriton => 'ٹرائٹن';

  @override
  String get kindStar => 'ہمارا ستارہ، نظامِ شمسی کا مرکز';

  @override
  String get kindDwarf => 'بونا سیارہ';

  @override
  String moonOf(String planet) {
    return '$planet کا چاند';
  }

  @override
  String get orbitPeriod => 'ایک چکر';

  @override
  String distanceFrom(String body) {
    return '$body سے فاصلہ';
  }

  @override
  String get composition => 'یہ کس چیز سے بنا ہے';

  @override
  String get noAtmosphere => 'اصل فضا نہیں، تقریباً خلا ہے۔';

  @override
  String get majorMoons => 'اہم چاند';

  @override
  String get lifeTitle => 'کیا انسان یہاں رہ سکتے ہیں؟';

  @override
  String get lifeScoreShort => 'زندگی اسکور';

  @override
  String get lifeNote =>
      'درجۂ حرارت، ہوا کے دباؤ، آکسیجن، پانی، سطح اور کششِ ثقل سے حساب۔ زمین کا اسکور 10 ہے۔';

  @override
  String get water => 'پانی';

  @override
  String get waterLiquid => 'مائع پانی';

  @override
  String get waterIce => 'برف';

  @override
  String get waterOcean => 'برف کے نیچے سمندر';

  @override
  String get waterNone => 'پانی نہیں';

  @override
  String get surface => 'سطح';

  @override
  String get solidSurface => 'ٹھوس سطح';

  @override
  String get lifeHome => 'بالکل گھر جیسا';

  @override
  String get lifeHard => 'بہت مشکل، بند اڈا اور اسپیس سوٹ چاہیے';

  @override
  String get lifeNo => 'انسانوں کے لیے ناممکن';

  @override
  String get downloadInstall => 'ڈاؤن لوڈ کر کے انسٹال کریں';

  @override
  String downloadingPercent(String percent) {
    return 'ڈاؤن لوڈ ہو رہا ہے… $percent%';
  }

  @override
  String get installNow => 'انسٹال کریں';

  @override
  String get allowInstalls =>
      'کھلی ہوئی اسکرین پر Heliora کو ایپس انسٹال کرنے کی اجازت دیں، پھر واپس آ کر انسٹال دبائیں۔';

  @override
  String get downloadFailed =>
      'ڈاؤن لوڈ مکمل نہیں ہوا۔ انٹرنیٹ چیک کر کے دوبارہ کوشش کریں۔';

  @override
  String get tryAgain => 'دوبارہ کوشش کریں';

  @override
  String get today => 'آج';

  @override
  String get play => 'چلائیں';

  @override
  String get pause => 'روکیں';

  @override
  String get monthBack => '30 دن پہلے';

  @override
  String get monthForward => '30 دن بعد';

  @override
  String get positionsNote =>
      'اس تاریخ پر اصل مقام · سائز اور فاصلہ پیمانے پر نہیں · سیارے پر ٹیپ کریں';

  @override
  String get navYou => 'آپ';

  @override
  String get ageTitle => 'دوسرے سیاروں پر آپ کی عمر';

  @override
  String get setBirthDate => 'اپنی تاریخِ پیدائش درج کریں';

  @override
  String get changeBirthDate => 'بدلیں';

  @override
  String nextBirthday(String days) {
    return 'اگلی سالگرہ $days دن میں';
  }

  @override
  String get ageNote => 'آپ کی تاریخِ پیدائش صرف اسی فون میں محفوظ رہتی ہے۔';

  @override
  String get share => 'شیئر کریں';

  @override
  String shareText(String planet) {
    return 'Heliora میں $planet، مفت آف لائن نظامِ شمسی ایپ: https://github.com/lumio-apps/heliora';
  }

  @override
  String get shareFailed => 'تصویر شیئر نہیں ہو سکی۔';

  @override
  String get travelTitle => 'کتنا دور ہے؟';

  @override
  String get distanceFromEarth => 'آج زمین سے فاصلہ';

  @override
  String get lightTime => 'روشنی کو لگتا ہے';

  @override
  String get bySpacecraft => '60,000 کلومیٹر فی گھنٹہ والے خلائی جہاز سے';

  @override
  String get byCar => '100 کلومیٹر فی گھنٹہ والی کار سے';

  @override
  String valueSeconds(String value) {
    return '$value سیکنڈ';
  }

  @override
  String valueMinutes(String value) {
    return '$value منٹ';
  }

  @override
  String get sizeTitle => 'سائز';

  @override
  String sizeTimes(String big, String times, String small) {
    return '$big چوڑائی میں $small سے $times× بڑا ہے۔';
  }

  @override
  String sizeSimilar(String a, String b) {
    return '$a اور $b تقریباً ایک جتنے بڑے ہیں۔';
  }
}
