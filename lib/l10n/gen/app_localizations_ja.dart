// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => '太陽系を探検しよう、完全オフライン';

  @override
  String get navExplore => '探検';

  @override
  String get navCompare => '比較';

  @override
  String get navWeight => '体重';

  @override
  String get navQuiz => 'クイズ';

  @override
  String get viewMode => '表示モード';

  @override
  String get settings => '設定';

  @override
  String get notToScale => '縮尺は正確ではありません · 惑星をタップして開く';

  @override
  String get dragToRotate => 'ドラッグで回転 · ピンチでズーム';

  @override
  String get planetsTitle => '惑星';

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
    return '太陽から $n 番目の惑星';
  }

  @override
  String get openDetails => '詳細を開く';

  @override
  String get diameter => '直径';

  @override
  String get gravity => '重力';

  @override
  String get avgTemp => '平均気温';

  @override
  String get avgTempShort => '平均気温';

  @override
  String get dayLength => '1 日';

  @override
  String get yearLength => '1 年';

  @override
  String get moons => '既知の衛星';

  @override
  String get moonsShort => '衛星';

  @override
  String get distance => '太陽からの距離';

  @override
  String get pressure => '表面気圧';

  @override
  String get noSurface => '固い地表はありません';

  @override
  String valueKm(String value) {
    return '$value km';
  }

  @override
  String valueMillionKm(String value) {
    return '$value 百万 km';
  }

  @override
  String valueHours(String value) {
    return '$value 時間';
  }

  @override
  String valueDays(String value) {
    return '$value 日';
  }

  @override
  String valueYears(String value) {
    return '$value 年';
  }

  @override
  String get atmosphere => '大気';

  @override
  String get thinAtmosphere => '大気はほとんどありません。これらの気体は外気圏と呼ばれるとても薄い層をつくっています。';

  @override
  String get oxygen => '酸素';

  @override
  String get oxygenVsEarth => '酸素：地球との比較';

  @override
  String get breathable => '人間が呼吸できる';

  @override
  String get notBreathable => '呼吸できません。宇宙服が必要です';

  @override
  String weightFeelsLike(String weight) {
    return '地球で $weight kg の人はここでは';
  }

  @override
  String get gasCo2 => '二酸化炭素';

  @override
  String get gasN2 => '窒素';

  @override
  String get gasO2 => '酸素';

  @override
  String get gasAr => 'アルゴン';

  @override
  String get gasH2 => '水素';

  @override
  String get gasHe => 'ヘリウム';

  @override
  String get gasCh4 => 'メタン';

  @override
  String get gasNa => 'ナトリウム';

  @override
  String get gasK => 'カリウム';

  @override
  String get compareTitle => '惑星を比較';

  @override
  String get compareHint => '2 つの惑星を選んで並べて比べましょう。';

  @override
  String get weightTitle => 'ほかの惑星でのあなたの体重';

  @override
  String get weightInput => '地球でのあなたの体重 (kg)';

  @override
  String gravityTimes(String factor) {
    return '地球の重力の $factor×';
  }

  @override
  String get quizTitle => '惑星クイズ';

  @override
  String get quizIntro => '惑星についての 10 問。何問正解できるかな？';

  @override
  String get quizStart => 'クイズを始める';

  @override
  String quizProgress(int current, int total) {
    return '$total 問中 $current 問目';
  }

  @override
  String get quizNext => '次へ';

  @override
  String get quizSeeResult => '結果を見る';

  @override
  String get quizCorrect => '正解！';

  @override
  String quizWrong(String answer) {
    return '残念。正解は$answerです。';
  }

  @override
  String quizScore(int score, int total) {
    return '$total 問中 $score 問正解';
  }

  @override
  String quizBest(int score) {
    return 'ベストスコア：$score';
  }

  @override
  String get quizNewBest => 'ベストスコア更新！';

  @override
  String get quizAgain => 'もう一度遊ぶ';

  @override
  String get qLargest => 'いちばん大きい惑星は？';

  @override
  String get qSmallest => 'いちばん小さい惑星は？';

  @override
  String get qHottest => 'いちばん暑い惑星は？';

  @override
  String get qColdest => 'いちばん寒い惑星は？';

  @override
  String get qMostMoons => '既知の衛星がいちばん多い惑星は？';

  @override
  String get qBreathable => '人間が空気を呼吸できる惑星は？';

  @override
  String get qClosest => '太陽にいちばん近い惑星は？';

  @override
  String get qFarthest => '太陽からいちばん遠い惑星は？';

  @override
  String get qStrongestGravity => '重力がいちばん強い惑星は？';

  @override
  String get qShortestDay => '1 日がいちばん短い惑星は？';

  @override
  String get qLongestDay => '1 日がいちばん長い惑星は？';

  @override
  String get appearance => '外観';

  @override
  String get theme => 'テーマ';

  @override
  String get themeSystem => 'システム';

  @override
  String get themeLight => 'ライト';

  @override
  String get themeDark => 'ダーク';

  @override
  String get language => '言語';

  @override
  String get appLanguage => 'アプリの言語';

  @override
  String get languageNote => '20 言語 · 惑星の名前も';

  @override
  String get phoneLanguage => 'スマホの言語';

  @override
  String get updates => 'アップデート';

  @override
  String get version => 'バージョン';

  @override
  String get checkForUpdates => 'アップデートを確認';

  @override
  String get checking => '確認中…';

  @override
  String get autoUpdateCheck => '1 日 1 回自動で確認';

  @override
  String get updateNote => 'アップデートは GitHub Releases から届きます。設定はスマホに残ります。';

  @override
  String get upToDate => '最新バージョンです。';

  @override
  String get updateFailed => 'GitHub に接続できませんでした。インターネットを確認してもう一度お試しください。';

  @override
  String get updateAvailable => 'アップデートがあります';

  @override
  String updateReady(String version) {
    return 'バージョン $version をダウンロードできます。';
  }

  @override
  String get download => 'ダウンロード';

  @override
  String get later => '後で';

  @override
  String get about => 'このアプリについて';

  @override
  String get sourceCode => 'GitHub のソースコード';

  @override
  String get privacyLine => 'オフライン · 広告なし · トラッキングなし';

  @override
  String get dataSource => '出典：NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'リンクを開けませんでした。';

  @override
  String get bodySun => '太陽';

  @override
  String get bodyMoon => '月';

  @override
  String get bodyPluto => '冥王星';

  @override
  String get moonIo => 'イオ';

  @override
  String get moonEuropa => 'エウロパ';

  @override
  String get moonGanymede => 'ガニメデ';

  @override
  String get moonCallisto => 'カリスト';

  @override
  String get moonTitan => 'タイタン';

  @override
  String get moonEnceladus => 'エンケラドゥス';

  @override
  String get moonTriton => 'トリトン';

  @override
  String get kindStar => '私たちの恒星、太陽系の中心';

  @override
  String get kindDwarf => '準惑星';

  @override
  String moonOf(String planet) {
    return '$planetの衛星';
  }

  @override
  String get orbitPeriod => '1 周';

  @override
  String distanceFrom(String body) {
    return '$bodyからの距離';
  }

  @override
  String get composition => '何でできているか';

  @override
  String get noAtmosphere => '本当の大気はなく、ほぼ真空です。';

  @override
  String get majorMoons => '主な衛星';

  @override
  String get lifeTitle => '人間はここで暮らせる？';

  @override
  String get lifeScoreShort => 'くらしスコア';

  @override
  String get lifeNote => '気温・気圧・酸素・水・地表・重力から計算。地球は 10 点。';

  @override
  String get water => '水';

  @override
  String get waterLiquid => '液体の水';

  @override
  String get waterIce => '氷';

  @override
  String get waterOcean => '氷の下の海';

  @override
  String get waterNone => '水なし';

  @override
  String get surface => '地表';

  @override
  String get solidSurface => '固い地表';

  @override
  String get lifeHome => 'まるで我が家';

  @override
  String get lifeHard => 'とても大変、密閉された基地と宇宙服が必要';

  @override
  String get lifeNo => '人間には不可能';

  @override
  String get downloadInstall => 'ダウンロードしてインストール';

  @override
  String downloadingPercent(String percent) {
    return 'ダウンロード中… $percent%';
  }

  @override
  String get installNow => 'インストール';

  @override
  String get allowInstalls =>
      '開いた画面で Heliora にアプリのインストールを許可し、戻って「インストール」をタップしてください。';

  @override
  String get downloadFailed => 'ダウンロードが完了しませんでした。インターネットを確認してもう一度お試しください。';

  @override
  String get tryAgain => '再試行';
}
