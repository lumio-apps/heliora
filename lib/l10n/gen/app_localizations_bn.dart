// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => 'সৌরজগৎ ঘুরে দেখুন, পুরোপুরি অফলাইনে';

  @override
  String get navExplore => 'অন্বেষণ';

  @override
  String get navCompare => 'তুলনা';

  @override
  String get navWeight => 'ওজন';

  @override
  String get navQuiz => 'কুইজ';

  @override
  String get viewMode => 'ভিউ মোড';

  @override
  String get settings => 'সেটিংস';

  @override
  String get notToScale => 'মাপমতো নয় · খুলতে কোনো গ্রহে ট্যাপ করুন';

  @override
  String get dragToRotate => 'ঘোরাতে টানুন · জুম করতে পিঞ্চ করুন';

  @override
  String get planetsTitle => 'গ্রহ';

  @override
  String get planetMercury => 'বুধ';

  @override
  String get planetVenus => 'শুক্র';

  @override
  String get planetEarth => 'পৃথিবী';

  @override
  String get planetMars => 'মঙ্গল';

  @override
  String get planetJupiter => 'বৃহস্পতি';

  @override
  String get planetSaturn => 'শনি';

  @override
  String get planetUranus => 'ইউরেনাস';

  @override
  String get planetNeptune => 'নেপচুন';

  @override
  String planetOrder(int n) {
    return 'সূর্য থেকে $n নম্বর গ্রহ';
  }

  @override
  String get openDetails => 'বিস্তারিত দেখুন';

  @override
  String get diameter => 'ব্যাস';

  @override
  String get gravity => 'মাধ্যাকর্ষণ';

  @override
  String get avgTemp => 'গড় তাপমাত্রা';

  @override
  String get avgTempShort => 'গড় তাপমাত্রা';

  @override
  String get dayLength => 'দিন';

  @override
  String get yearLength => 'বছর';

  @override
  String get moons => 'জানা চাঁদ';

  @override
  String get moonsShort => 'চাঁদ';

  @override
  String get distance => 'সূর্য থেকে দূরত্ব';

  @override
  String get pressure => 'পৃষ্ঠের চাপ';

  @override
  String get noSurface => 'কোনো শক্ত পৃষ্ঠ নেই';

  @override
  String valueKm(String value) {
    return '$value কিমি';
  }

  @override
  String valueMillionKm(String value) {
    return '$value মিলিয়ন কিমি';
  }

  @override
  String valueHours(String value) {
    return '$value ঘণ্টা';
  }

  @override
  String valueDays(String value) {
    return '$value দিন';
  }

  @override
  String valueYears(String value) {
    return '$value বছর';
  }

  @override
  String get atmosphere => 'বায়ুমণ্ডল';

  @override
  String get thinAtmosphere =>
      'প্রায় কোনো বায়ুমণ্ডল নেই। এই গ্যাসগুলো এক্সোস্ফিয়ার নামের খুব পাতলা স্তর তৈরি করে।';

  @override
  String get oxygen => 'অক্সিজেন';

  @override
  String get oxygenVsEarth => 'অক্সিজেন: পৃথিবীর সাথে তুলনা';

  @override
  String get breathable => 'মানুষের শ্বাস নেওয়ার উপযোগী';

  @override
  String get notBreathable => 'শ্বাস নেওয়া যায় না, স্পেসস্যুট লাগবে';

  @override
  String weightFeelsLike(String weight) {
    return 'পৃথিবীর $weight কেজি এখানে এত লাগবে';
  }

  @override
  String get gasCo2 => 'কার্বন ডাই অক্সাইড';

  @override
  String get gasN2 => 'নাইট্রোজেন';

  @override
  String get gasO2 => 'অক্সিজেন';

  @override
  String get gasAr => 'আর্গন';

  @override
  String get gasH2 => 'হাইড্রোজেন';

  @override
  String get gasHe => 'হিলিয়াম';

  @override
  String get gasCh4 => 'মিথেন';

  @override
  String get gasNa => 'সোডিয়াম';

  @override
  String get gasK => 'পটাশিয়াম';

  @override
  String get compareTitle => 'গ্রহের তুলনা';

  @override
  String get compareHint => 'পাশাপাশি দেখতে দুটি গ্রহ বেছে নিন।';

  @override
  String get weightTitle => 'অন্য গ্রহে আপনার ওজন';

  @override
  String get weightInput => 'পৃথিবীতে আপনার ওজন (কেজি)';

  @override
  String gravityTimes(String factor) {
    return 'পৃথিবীর মাধ্যাকর্ষণের $factor×';
  }

  @override
  String get quizTitle => 'গ্রহ কুইজ';

  @override
  String get quizIntro => 'গ্রহ নিয়ে ১০টি প্রশ্ন। কয়টি ঠিক করতে পারবেন?';

  @override
  String get quizStart => 'কুইজ শুরু করুন';

  @override
  String quizProgress(int current, int total) {
    return 'প্রশ্ন $current / $total';
  }

  @override
  String get quizNext => 'পরেরটি';

  @override
  String get quizSeeResult => 'ফলাফল দেখুন';

  @override
  String get quizCorrect => 'ঠিক!';

  @override
  String quizWrong(String answer) {
    return 'হয়নি। সঠিক উত্তর $answer।';
  }

  @override
  String quizScore(int score, int total) {
    return '$totalটির মধ্যে $scoreটি ঠিক';
  }

  @override
  String quizBest(int score) {
    return 'সেরা স্কোর: $score';
  }

  @override
  String get quizNewBest => 'নতুন সেরা স্কোর!';

  @override
  String get quizAgain => 'আবার খেলুন';

  @override
  String get qLargest => 'সবচেয়ে বড় গ্রহ কোনটি?';

  @override
  String get qSmallest => 'সবচেয়ে ছোট গ্রহ কোনটি?';

  @override
  String get qHottest => 'সবচেয়ে গরম গ্রহ কোনটি?';

  @override
  String get qColdest => 'সবচেয়ে ঠান্ডা গ্রহ কোনটি?';

  @override
  String get qMostMoons => 'কোন গ্রহের সবচেয়ে বেশি জানা চাঁদ আছে?';

  @override
  String get qBreathable => 'কোন গ্রহে মানুষ বাতাসে শ্বাস নিতে পারে?';

  @override
  String get qClosest => 'সূর্যের সবচেয়ে কাছের গ্রহ কোনটি?';

  @override
  String get qFarthest => 'সূর্য থেকে সবচেয়ে দূরের গ্রহ কোনটি?';

  @override
  String get qStrongestGravity => 'কোন গ্রহের মাধ্যাকর্ষণ সবচেয়ে বেশি?';

  @override
  String get qShortestDay => 'কোন গ্রহের দিন সবচেয়ে ছোট?';

  @override
  String get qLongestDay => 'কোন গ্রহের দিন সবচেয়ে লম্বা?';

  @override
  String get appearance => 'চেহারা';

  @override
  String get theme => 'থিম';

  @override
  String get themeSystem => 'সিস্টেম';

  @override
  String get themeLight => 'লাইট';

  @override
  String get themeDark => 'ডার্ক';

  @override
  String get language => 'ভাষা';

  @override
  String get appLanguage => 'অ্যাপের ভাষা';

  @override
  String get languageNote => '২০টি ভাষা · গ্রহের নামও';

  @override
  String get phoneLanguage => 'ফোনের ভাষা';

  @override
  String get updates => 'আপডেট';

  @override
  String get version => 'সংস্করণ';

  @override
  String get checkForUpdates => 'আপডেট দেখুন';

  @override
  String get checking => 'দেখা হচ্ছে…';

  @override
  String get autoUpdateCheck => 'দিনে একবার নিজে থেকে দেখুন';

  @override
  String get updateNote =>
      'আপডেট GitHub Releases থেকে আসে। আপনার সেটিংস ফোনেই থাকে।';

  @override
  String get upToDate => 'আপনার কাছে সর্বশেষ সংস্করণ আছে।';

  @override
  String get updateFailed =>
      'GitHub-এ পৌঁছানো যায়নি। ইন্টারনেট দেখে আবার চেষ্টা করুন।';

  @override
  String get updateAvailable => 'আপডেট আছে';

  @override
  String updateReady(String version) {
    return 'সংস্করণ $version ডাউনলোডের জন্য তৈরি।';
  }

  @override
  String get download => 'ডাউনলোড';

  @override
  String get later => 'পরে';

  @override
  String get about => 'সম্পর্কে';

  @override
  String get sourceCode => 'GitHub-এ সোর্স কোড';

  @override
  String get privacyLine => 'অফলাইন · বিজ্ঞাপন নেই · ট্র্যাকিং নেই';

  @override
  String get dataSource => 'তথ্য: NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'লিংক খোলা যায়নি।';

  @override
  String get bodySun => 'সূর্য';

  @override
  String get bodyMoon => 'চাঁদ';

  @override
  String get bodyPluto => 'প্লুটো';

  @override
  String get moonIo => 'আইও';

  @override
  String get moonEuropa => 'ইউরোপা';

  @override
  String get moonGanymede => 'গ্যানিমিড';

  @override
  String get moonCallisto => 'ক্যালিস্টো';

  @override
  String get moonTitan => 'টাইটান';

  @override
  String get moonEnceladus => 'এনসেলাডাস';

  @override
  String get moonTriton => 'ট্রাইটন';

  @override
  String get kindStar => 'আমাদের তারা, সৌরজগতের কেন্দ্র';

  @override
  String get kindDwarf => 'বামন গ্রহ';

  @override
  String moonOf(String planet) {
    return '$planet-এর চাঁদ';
  }

  @override
  String get orbitPeriod => 'একবার প্রদক্ষিণ';

  @override
  String distanceFrom(String body) {
    return '$body থেকে দূরত্ব';
  }

  @override
  String get composition => 'এটি কী দিয়ে তৈরি';

  @override
  String get noAtmosphere => 'আসল বায়ুমণ্ডল নেই, প্রায় শূন্যস্থান।';

  @override
  String get majorMoons => 'প্রধান চাঁদ';

  @override
  String get lifeTitle => 'মানুষ কি এখানে থাকতে পারবে?';

  @override
  String get lifeScoreShort => 'জীবন স্কোর';

  @override
  String get lifeNote =>
      'তাপমাত্রা, বায়ুচাপ, অক্সিজেন, পানি, পৃষ্ঠ আর মাধ্যাকর্ষণ থেকে হিসাব। পৃথিবীর স্কোর ১০।';

  @override
  String get water => 'পানি';

  @override
  String get waterLiquid => 'তরল পানি';

  @override
  String get waterIce => 'বরফ';

  @override
  String get waterOcean => 'বরফের নিচে সমুদ্র';

  @override
  String get waterNone => 'পানি নেই';

  @override
  String get surface => 'পৃষ্ঠ';

  @override
  String get solidSurface => 'শক্ত পৃষ্ঠ';

  @override
  String get lifeHome => 'একদম বাড়ির মতো';

  @override
  String get lifeHard => 'খুব কঠিন, বন্ধ ঘাঁটি আর স্পেসস্যুট লাগবে';

  @override
  String get lifeNo => 'মানুষের পক্ষে অসম্ভব';

  @override
  String get downloadInstall => 'ডাউনলোড করে ইনস্টল করুন';

  @override
  String downloadingPercent(String percent) {
    return 'ডাউনলোড হচ্ছে… $percent%';
  }

  @override
  String get installNow => 'ইনস্টল';

  @override
  String get allowInstalls =>
      'যে স্ক্রিন খুলেছে সেখানে Heliora-কে অ্যাপ ইনস্টলের অনুমতি দিন, তারপর ফিরে এসে ইনস্টল চাপুন।';

  @override
  String get downloadFailed =>
      'ডাউনলোড শেষ হয়নি। ইন্টারনেট দেখে আবার চেষ্টা করুন।';

  @override
  String get tryAgain => 'আবার চেষ্টা করুন';

  @override
  String get today => 'আজ';

  @override
  String get play => 'চালান';

  @override
  String get pause => 'থামান';

  @override
  String get monthBack => '৩০ দিন আগে';

  @override
  String get monthForward => '৩০ দিন পরে';

  @override
  String get positionsNote =>
      'এই তারিখে আসল অবস্থান · আকার ও দূরত্ব মাপমতো নয় · গ্রহে ট্যাপ করুন';

  @override
  String get navYou => 'আপনি';

  @override
  String get ageTitle => 'অন্য গ্রহে আপনার বয়স';

  @override
  String get setBirthDate => 'আপনার জন্মতারিখ দিন';

  @override
  String get changeBirthDate => 'বদলান';

  @override
  String nextBirthday(String days) {
    return 'পরের জন্মদিন $days দিন পরে';
  }

  @override
  String get ageNote => 'আপনার জন্মতারিখ শুধু এই ফোনেই সেভ থাকে।';
}
