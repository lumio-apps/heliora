// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => 'استكشف المجموعة الشمسية، دون إنترنت بالكامل';

  @override
  String get navExplore => 'استكشاف';

  @override
  String get navCompare => 'مقارنة';

  @override
  String get navWeight => 'الوزن';

  @override
  String get navQuiz => 'اختبار';

  @override
  String get viewMode => 'وضع العرض';

  @override
  String get settings => 'الإعدادات';

  @override
  String get notToScale => 'ليس بمقياس حقيقي · اضغط على كوكب لفتحه';

  @override
  String get dragToRotate => 'اسحب للتدوير · قرّب بإصبعين للتكبير';

  @override
  String get planetsTitle => 'الكواكب';

  @override
  String get planetMercury => 'عطارد';

  @override
  String get planetVenus => 'الزهرة';

  @override
  String get planetEarth => 'الأرض';

  @override
  String get planetMars => 'المريخ';

  @override
  String get planetJupiter => 'المشتري';

  @override
  String get planetSaturn => 'زحل';

  @override
  String get planetUranus => 'أورانوس';

  @override
  String get planetNeptune => 'نبتون';

  @override
  String planetOrder(int n) {
    return 'الكوكب رقم $n من الشمس';
  }

  @override
  String get openDetails => 'فتح التفاصيل';

  @override
  String get diameter => 'القطر';

  @override
  String get gravity => 'الجاذبية';

  @override
  String get avgTemp => 'متوسط درجة الحرارة';

  @override
  String get avgTempShort => 'متوسط الحرارة';

  @override
  String get dayLength => 'اليوم';

  @override
  String get yearLength => 'السنة';

  @override
  String get moons => 'الأقمار المعروفة';

  @override
  String get moonsShort => 'الأقمار';

  @override
  String get distance => 'البعد عن الشمس';

  @override
  String get pressure => 'الضغط على السطح';

  @override
  String get noSurface => 'لا يوجد سطح صلب';

  @override
  String valueKm(String value) {
    return '$value كم';
  }

  @override
  String valueMillionKm(String value) {
    return '$value مليون كم';
  }

  @override
  String valueHours(String value) {
    return '$value ساعة';
  }

  @override
  String valueDays(String value) {
    return '$value يوم';
  }

  @override
  String valueYears(String value) {
    return '$value سنة';
  }

  @override
  String get atmosphere => 'الغلاف الجوي';

  @override
  String get thinAtmosphere =>
      'لا يوجد غلاف جوي تقريبًا. تشكّل هذه الغازات طبقة رقيقة جدًا تُسمّى الإكسوسفير.';

  @override
  String get oxygen => 'الأكسجين';

  @override
  String get oxygenVsEarth => 'الأكسجين مقارنة بالأرض';

  @override
  String get breathable => 'صالح لتنفس البشر';

  @override
  String get notBreathable => 'غير صالح للتنفس، تلزم بدلة فضاء';

  @override
  String weightFeelsLike(String weight) {
    return '$weight كغ على الأرض تعادل هنا';
  }

  @override
  String get gasCo2 => 'ثاني أكسيد الكربون';

  @override
  String get gasN2 => 'النيتروجين';

  @override
  String get gasO2 => 'الأكسجين';

  @override
  String get gasAr => 'الأرغون';

  @override
  String get gasH2 => 'الهيدروجين';

  @override
  String get gasHe => 'الهيليوم';

  @override
  String get gasCh4 => 'الميثان';

  @override
  String get gasNa => 'الصوديوم';

  @override
  String get gasK => 'البوتاسيوم';

  @override
  String get compareTitle => 'مقارنة الكواكب';

  @override
  String get compareHint => 'اختر كوكبين لعرضهما جنبًا إلى جنب.';

  @override
  String get weightTitle => 'وزنك على الكواكب الأخرى';

  @override
  String get weightInput => 'وزنك على الأرض (كغ)';

  @override
  String gravityTimes(String factor) {
    return '$factor× من جاذبية الأرض';
  }

  @override
  String get quizTitle => 'اختبار الكواكب';

  @override
  String get quizIntro => '10 أسئلة عن الكواكب. كم إجابة صحيحة ستحصل عليها؟';

  @override
  String get quizStart => 'ابدأ الاختبار';

  @override
  String quizProgress(int current, int total) {
    return 'السؤال $current من $total';
  }

  @override
  String get quizNext => 'التالي';

  @override
  String get quizSeeResult => 'عرض النتيجة';

  @override
  String get quizCorrect => 'صحيح!';

  @override
  String quizWrong(String answer) {
    return 'ليس تمامًا. الإجابة هي $answer.';
  }

  @override
  String quizScore(int score, int total) {
    return 'أجبت $score من $total إجابات صحيحة';
  }

  @override
  String quizBest(int score) {
    return 'أفضل نتيجة: $score';
  }

  @override
  String get quizNewBest => 'أفضل نتيجة جديدة!';

  @override
  String get quizAgain => 'العب مرة أخرى';

  @override
  String get qLargest => 'ما أكبر كوكب؟';

  @override
  String get qSmallest => 'ما أصغر كوكب؟';

  @override
  String get qHottest => 'ما أشد الكواكب حرارة؟';

  @override
  String get qColdest => 'ما أشد الكواكب برودة؟';

  @override
  String get qMostMoons => 'أي كوكب لديه أكبر عدد من الأقمار المعروفة؟';

  @override
  String get qBreathable => 'على أي كوكب يستطيع البشر تنفس الهواء؟';

  @override
  String get qClosest => 'ما أقرب كوكب إلى الشمس؟';

  @override
  String get qFarthest => 'ما أبعد كوكب عن الشمس؟';

  @override
  String get qStrongestGravity => 'أي كوكب لديه أقوى جاذبية؟';

  @override
  String get qShortestDay => 'أي كوكب لديه أقصر يوم؟';

  @override
  String get qLongestDay => 'أي كوكب لديه أطول يوم؟';

  @override
  String get appearance => 'المظهر';

  @override
  String get theme => 'السمة';

  @override
  String get themeSystem => 'النظام';

  @override
  String get themeLight => 'فاتح';

  @override
  String get themeDark => 'داكن';

  @override
  String get language => 'اللغة';

  @override
  String get appLanguage => 'لغة التطبيق';

  @override
  String get languageNote => '20 لغة · وأسماء الكواكب أيضًا';

  @override
  String get phoneLanguage => 'لغة الهاتف';

  @override
  String get updates => 'التحديثات';

  @override
  String get version => 'الإصدار';

  @override
  String get checkForUpdates => 'البحث عن تحديثات';

  @override
  String get checking => 'جارٍ البحث…';

  @override
  String get autoUpdateCheck => 'ابحث تلقائيًا مرة واحدة يوميًا';

  @override
  String get updateNote =>
      'تأتي التحديثات من GitHub Releases. تبقى إعداداتك على هاتفك.';

  @override
  String get upToDate => 'لديك أحدث إصدار.';

  @override
  String get updateFailed =>
      'تعذّر الوصول إلى GitHub. تحقق من الإنترنت وحاول مرة أخرى.';

  @override
  String get updateAvailable => 'يتوفر تحديث';

  @override
  String updateReady(String version) {
    return 'الإصدار $version جاهز للتنزيل.';
  }

  @override
  String get download => 'تنزيل';

  @override
  String get later => 'لاحقًا';

  @override
  String get about => 'حول';

  @override
  String get sourceCode => 'الشيفرة المصدرية على GitHub';

  @override
  String get privacyLine => 'دون إنترنت · بلا إعلانات · بلا تتبع';

  @override
  String get dataSource => 'المعلومات: NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'تعذّر فتح الرابط.';

  @override
  String get bodySun => 'الشمس';

  @override
  String get bodyMoon => 'القمر';

  @override
  String get bodyPluto => 'بلوتو';

  @override
  String get moonIo => 'آيو';

  @override
  String get moonEuropa => 'يوروبا';

  @override
  String get moonGanymede => 'غانيميد';

  @override
  String get moonCallisto => 'كاليستو';

  @override
  String get moonTitan => 'تيتان';

  @override
  String get moonEnceladus => 'إنسيلادوس';

  @override
  String get moonTriton => 'تريتون';

  @override
  String get kindStar => 'نجمنا، مركز المجموعة الشمسية';

  @override
  String get kindDwarf => 'كوكب قزم';

  @override
  String moonOf(String planet) {
    return 'قمر $planet';
  }

  @override
  String get orbitPeriod => 'دورة واحدة';

  @override
  String distanceFrom(String body) {
    return 'البعد عن $body';
  }

  @override
  String get composition => 'مِمَّ يتكوّن';

  @override
  String get noAtmosphere => 'لا يوجد غلاف جوي حقيقي، إنه شبه فراغ.';

  @override
  String get majorMoons => 'الأقمار الرئيسية';

  @override
  String get lifeTitle => 'هل يستطيع البشر العيش هنا؟';

  @override
  String get lifeScoreShort => 'درجة الحياة';

  @override
  String get lifeNote =>
      'محسوبة من الحرارة وضغط الهواء والأكسجين والماء والسطح والجاذبية. الأرض تحصل على 10.';

  @override
  String get water => 'الماء';

  @override
  String get waterLiquid => 'ماء سائل';

  @override
  String get waterIce => 'جليد';

  @override
  String get waterOcean => 'محيط تحت الجليد';

  @override
  String get waterNone => 'لا يوجد ماء';

  @override
  String get surface => 'السطح';

  @override
  String get solidSurface => 'سطح صلب';

  @override
  String get lifeHome => 'تمامًا مثل الوطن';

  @override
  String get lifeHard => 'صعب جدًا، يلزم مقر مغلق وبدلات فضاء';

  @override
  String get lifeNo => 'مستحيل على البشر';
}
