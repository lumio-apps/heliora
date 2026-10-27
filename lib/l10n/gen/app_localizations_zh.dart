// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => '探索太阳系，完全离线';

  @override
  String get navExplore => '探索';

  @override
  String get navCompare => '对比';

  @override
  String get navWeight => '体重';

  @override
  String get navQuiz => '测验';

  @override
  String get viewMode => '视图模式';

  @override
  String get settings => '设置';

  @override
  String get notToScale => '未按比例 · 点按行星即可打开';

  @override
  String get dragToRotate => '拖动旋转 · 双指缩放';

  @override
  String get planetsTitle => '行星';

  @override
  String get planetMercury => '水星';

  @override
  String get planetVenus => '金星';

  @override
  String get planetEarth => '地球';

  @override
  String get planetMars => '火星';

  @override
  String get planetJupiter => '木星';

  @override
  String get planetSaturn => '土星';

  @override
  String get planetUranus => '天王星';

  @override
  String get planetNeptune => '海王星';

  @override
  String planetOrder(int n) {
    return '距太阳第 $n 颗行星';
  }

  @override
  String get openDetails => '查看详情';

  @override
  String get diameter => '直径';

  @override
  String get gravity => '重力';

  @override
  String get avgTemp => '平均温度';

  @override
  String get avgTempShort => '平均温度';

  @override
  String get dayLength => '一天';

  @override
  String get yearLength => '一年';

  @override
  String get moons => '已知卫星';

  @override
  String get moonsShort => '卫星';

  @override
  String get distance => '与太阳的距离';

  @override
  String get pressure => '表面气压';

  @override
  String get noSurface => '没有固体表面';

  @override
  String valueKm(String value) {
    return '$value 公里';
  }

  @override
  String valueMillionKm(String value) {
    return '$value 百万公里';
  }

  @override
  String valueHours(String value) {
    return '$value 小时';
  }

  @override
  String valueDays(String value) {
    return '$value 天';
  }

  @override
  String valueYears(String value) {
    return '$value 年';
  }

  @override
  String get atmosphere => '大气';

  @override
  String get thinAtmosphere => '几乎没有大气。这些气体只构成一层非常稀薄的外逸层。';

  @override
  String get oxygen => '氧气';

  @override
  String get oxygenVsEarth => '氧气与地球对比';

  @override
  String get breathable => '人类可以呼吸';

  @override
  String get notBreathable => '无法呼吸，需要宇航服';

  @override
  String weightFeelsLike(String weight) {
    return '地球上的 $weight 公斤在这里相当于';
  }

  @override
  String get gasCo2 => '二氧化碳';

  @override
  String get gasN2 => '氮气';

  @override
  String get gasO2 => '氧气';

  @override
  String get gasAr => '氩气';

  @override
  String get gasH2 => '氢气';

  @override
  String get gasHe => '氦气';

  @override
  String get gasCh4 => '甲烷';

  @override
  String get gasNa => '钠';

  @override
  String get gasK => '钾';

  @override
  String get compareTitle => '行星对比';

  @override
  String get compareHint => '选择两颗行星进行并排对比。';

  @override
  String get weightTitle => '你在其他行星上的体重';

  @override
  String get weightInput => '你在地球上的体重（公斤）';

  @override
  String gravityTimes(String factor) {
    return '地球重力的 $factor×';
  }

  @override
  String get quizTitle => '行星测验';

  @override
  String get quizIntro => '10 道关于行星的题目。你能答对几道？';

  @override
  String get quizStart => '开始测验';

  @override
  String quizProgress(int current, int total) {
    return '第 $current 题，共 $total 题';
  }

  @override
  String get quizNext => '下一题';

  @override
  String get quizSeeResult => '查看结果';

  @override
  String get quizCorrect => '答对了！';

  @override
  String quizWrong(String answer) {
    return '不对。正确答案是$answer。';
  }

  @override
  String quizScore(int score, int total) {
    return '你答对了 $total 题中的 $score 题';
  }

  @override
  String quizBest(int score) {
    return '最高分：$score';
  }

  @override
  String get quizNewBest => '新的最高分！';

  @override
  String get quizAgain => '再玩一次';

  @override
  String get qLargest => '哪颗行星最大？';

  @override
  String get qSmallest => '哪颗行星最小？';

  @override
  String get qHottest => '哪颗行星最热？';

  @override
  String get qColdest => '哪颗行星最冷？';

  @override
  String get qMostMoons => '哪颗行星的已知卫星最多？';

  @override
  String get qBreathable => '人类可以在哪颗行星上呼吸空气？';

  @override
  String get qClosest => '哪颗行星离太阳最近？';

  @override
  String get qFarthest => '哪颗行星离太阳最远？';

  @override
  String get qStrongestGravity => '哪颗行星的重力最强？';

  @override
  String get qShortestDay => '哪颗行星的一天最短？';

  @override
  String get qLongestDay => '哪颗行星的一天最长？';

  @override
  String get appearance => '外观';

  @override
  String get theme => '主题';

  @override
  String get themeSystem => '跟随系统';

  @override
  String get themeLight => '浅色';

  @override
  String get themeDark => '深色';

  @override
  String get language => '语言';

  @override
  String get appLanguage => '应用语言';

  @override
  String get languageNote => '20 种语言 · 包括行星名称';

  @override
  String get phoneLanguage => '手机语言';

  @override
  String get updates => '更新';

  @override
  String get version => '版本';

  @override
  String get checkForUpdates => '检查更新';

  @override
  String get checking => '正在检查…';

  @override
  String get autoUpdateCheck => '每天自动检查一次';

  @override
  String get updateNote => '更新来自 GitHub Releases。你的设置会一直保存在手机上。';

  @override
  String get upToDate => '你已是最新版本。';

  @override
  String get updateFailed => '无法连接 GitHub。请检查网络后重试。';

  @override
  String get updateAvailable => '有可用更新';

  @override
  String updateReady(String version) {
    return '版本 $version 可以下载了。';
  }

  @override
  String get download => '下载';

  @override
  String get later => '稍后';

  @override
  String get about => '关于';

  @override
  String get sourceCode => 'GitHub 上的源代码';

  @override
  String get privacyLine => '离线 · 无广告 · 无跟踪';

  @override
  String get dataSource => '资料来源：NASA Planetary Fact Sheet';

  @override
  String get openFailed => '无法打开链接。';

  @override
  String get bodySun => '太阳';

  @override
  String get bodyMoon => '月球';

  @override
  String get bodyPluto => '冥王星';

  @override
  String get moonIo => '木卫一';

  @override
  String get moonEuropa => '木卫二';

  @override
  String get moonGanymede => '木卫三';

  @override
  String get moonCallisto => '木卫四';

  @override
  String get moonTitan => '土卫六';

  @override
  String get moonEnceladus => '土卫二';

  @override
  String get moonTriton => '海卫一';

  @override
  String get kindStar => '我们的恒星，太阳系的中心';

  @override
  String get kindDwarf => '矮行星';

  @override
  String moonOf(String planet) {
    return '$planet的卫星';
  }

  @override
  String get orbitPeriod => '公转一周';

  @override
  String distanceFrom(String body) {
    return '与$body的距离';
  }

  @override
  String get composition => '它由什么组成';

  @override
  String get noAtmosphere => '没有真正的大气，几乎是真空。';

  @override
  String get majorMoons => '主要卫星';

  @override
  String get lifeTitle => '人类能在这里生活吗？';

  @override
  String get lifeScoreShort => '宜居分';

  @override
  String get lifeNote => '根据温度、气压、氧气、水、表面和重力计算。地球为 10 分。';

  @override
  String get water => '水';

  @override
  String get waterLiquid => '液态水';

  @override
  String get waterIce => '冰';

  @override
  String get waterOcean => '冰层下的海洋';

  @override
  String get waterNone => '没有水';

  @override
  String get surface => '表面';

  @override
  String get solidSurface => '固体表面';

  @override
  String get lifeHome => '就像家一样';

  @override
  String get lifeHard => '非常困难，需要封闭基地和宇航服';

  @override
  String get lifeNo => '人类无法生存';
}
