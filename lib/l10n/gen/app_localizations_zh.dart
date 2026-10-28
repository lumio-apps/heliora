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

  @override
  String get downloadInstall => '下载并安装';

  @override
  String downloadingPercent(String percent) {
    return '正在下载… $percent%';
  }

  @override
  String get installNow => '安装';

  @override
  String get allowInstalls => '请在打开的页面中允许 Heliora 安装应用，然后返回点按“安装”。';

  @override
  String get downloadFailed => '下载未完成。请检查网络后重试。';

  @override
  String get tryAgain => '重试';

  @override
  String get today => '今天';

  @override
  String get play => '播放';

  @override
  String get pause => '暂停';

  @override
  String get monthBack => '提前 30 天';

  @override
  String get monthForward => '推后 30 天';

  @override
  String get positionsNote => '这一天的真实位置 · 大小和距离未按比例 · 点按行星';

  @override
  String get navYou => '我';

  @override
  String get ageTitle => '你在其他行星上的年龄';

  @override
  String get setBirthDate => '设置你的生日';

  @override
  String get changeBirthDate => '更改';

  @override
  String nextBirthday(String days) {
    return '$days 天后过下一个生日';
  }

  @override
  String get ageNote => '你的生日只保存在这部手机上。';

  @override
  String get share => '分享';

  @override
  String shareText(String planet) {
    return 'Heliora 中的$planet，免费离线太阳系应用：https://github.com/lumio-apps/heliora';
  }

  @override
  String get shareFailed => '无法分享图片。';

  @override
  String get travelTitle => '有多远？';

  @override
  String get distanceFromEarth => '今天与地球的距离';

  @override
  String get lightTime => '光需要';

  @override
  String get bySpacecraft => '乘时速 60,000 公里的飞船';

  @override
  String get byCar => '乘时速 100 公里的汽车';

  @override
  String valueSeconds(String value) {
    return '$value 秒';
  }

  @override
  String valueMinutes(String value) {
    return '$value 分钟';
  }

  @override
  String get sizeTitle => '大小';

  @override
  String sizeTimes(String big, String times, String small) {
    return '$big的直径是$small的 $times×。';
  }

  @override
  String sizeSimilar(String a, String b) {
    return '$a和$b大小差不多。';
  }

  @override
  String get navSky => '星空';

  @override
  String get skyTitle => '今晚的星空';

  @override
  String get chooseCity => '选择你的城市';

  @override
  String get chooseCityHint => '选择离你最近的城市，查看月亮和今晚能看到的行星。不需要定位权限，数据只保存在手机上。';

  @override
  String get searchCity => '搜索城市';

  @override
  String get noCityFound => '没有找到城市';

  @override
  String get cityNote => '时间采用手机的时区。行星在黑暗天空中高于地平线至少 5° 时算作可见。';

  @override
  String illuminated(String percent) {
    return '$percent% 被照亮';
  }

  @override
  String get moonrise => '月出';

  @override
  String get moonset => '月落';

  @override
  String get sunset => '日落';

  @override
  String get sunrise => '日出';

  @override
  String get nextFull => '下次满月';

  @override
  String get nextNew => '下次新月';

  @override
  String get phaseNew => '新月';

  @override
  String get phaseWaxingCrescent => '娥眉月';

  @override
  String get phaseFirstQuarter => '上弦月';

  @override
  String get phaseWaxingGibbous => '盈凸月';

  @override
  String get phaseFull => '满月';

  @override
  String get phaseWaningGibbous => '亏凸月';

  @override
  String get phaseLastQuarter => '下弦月';

  @override
  String get phaseWaningCrescent => '残月';

  @override
  String get planetsTonight => '今晚的行星';

  @override
  String get statusVisible => '今晚可见';

  @override
  String get statusEvening => '傍晚，日落后';

  @override
  String get statusMorning => '清晨，日出前';

  @override
  String get statusNotVisible => '今晚不可见';

  @override
  String bestAt(String time) {
    return '最佳时间 $time';
  }

  @override
  String altitudeDir(String direction, String degrees) {
    return '$direction，高度 $degrees°';
  }

  @override
  String riseSet(String rise, String set) {
    return '升起 $rise · 落下 $set';
  }

  @override
  String get needsTelescope => '需要双筒望远镜或天文望远镜';

  @override
  String get dirN => '北';

  @override
  String get dirNE => '东北';

  @override
  String get dirE => '东';

  @override
  String get dirSE => '东南';

  @override
  String get dirS => '南';

  @override
  String get dirSW => '西南';

  @override
  String get dirW => '西';

  @override
  String get dirNW => '西北';

  @override
  String get findPlanet => '在天空中寻找';

  @override
  String finderTitle(String name) {
    return '寻找$name';
  }

  @override
  String get pointPhone => '举起手机，慢慢移动。';

  @override
  String turnRight(String degrees) {
    return '向右转 $degrees°';
  }

  @override
  String turnLeft(String degrees) {
    return '向左转 $degrees°';
  }

  @override
  String tiltUp(String degrees) {
    return '向上抬 $degrees°';
  }

  @override
  String tiltDown(String degrees) {
    return '向下压 $degrees°';
  }

  @override
  String onTarget(String name) {
    return '$name就在那里！';
  }

  @override
  String belowHorizon(String name) {
    return '$name现在在地平线以下。';
  }

  @override
  String risesAt(String time) {
    return '它将在 $time 升起。';
  }

  @override
  String get noSensor => '这部手机没有指南针传感器，无法使用寻星功能。';

  @override
  String get calibrate => '指南针需要校准：请用手机在空中画几次“8”字。';

  @override
  String get phoneNow => '手机指向';

  @override
  String get finderNote => '让手机背面朝向天空，并远离磁铁和金属。千万不要直视太阳。';
}
