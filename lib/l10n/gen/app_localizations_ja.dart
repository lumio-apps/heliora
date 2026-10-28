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

  @override
  String get today => '今日';

  @override
  String get play => '再生';

  @override
  String get pause => '一時停止';

  @override
  String get monthBack => '30 日前';

  @override
  String get monthForward => '30 日後';

  @override
  String get positionsNote => 'この日の実際の位置 · 大きさと距離は縮尺どおりではありません · 惑星をタップ';

  @override
  String get navYou => 'あなた';

  @override
  String get ageTitle => 'ほかの惑星でのあなたの年齢';

  @override
  String get setBirthDate => '誕生日を設定';

  @override
  String get changeBirthDate => '変更';

  @override
  String nextBirthday(String days) {
    return '次の誕生日まであと $days 日';
  }

  @override
  String get ageNote => '誕生日はこのスマホにだけ保存されます。';

  @override
  String get share => '共有';

  @override
  String shareText(String planet) {
    return 'Heliora の$planet。無料・オフラインの太陽系アプリ：https://github.com/lumio-apps/heliora';
  }

  @override
  String get shareFailed => '画像を共有できませんでした。';

  @override
  String get travelTitle => 'どれくらい遠い？';

  @override
  String get distanceFromEarth => '今日の地球からの距離';

  @override
  String get lightTime => '光でかかる時間';

  @override
  String get bySpacecraft => '時速 60,000 km の宇宙船で';

  @override
  String get byCar => '時速 100 km の車で';

  @override
  String valueSeconds(String value) {
    return '$value 秒';
  }

  @override
  String valueMinutes(String value) {
    return '$value 分';
  }

  @override
  String get sizeTitle => '大きさ';

  @override
  String sizeTimes(String big, String times, String small) {
    return '$bigの直径は$smallの $times× です。';
  }

  @override
  String sizeSimilar(String a, String b) {
    return '$aと$bはほぼ同じ大きさです。';
  }

  @override
  String get navSky => '星空';

  @override
  String get skyTitle => '今夜の空';

  @override
  String get chooseCity => '都市を選ぶ';

  @override
  String get chooseCityHint =>
      'いちばん近い都市を選ぶと、月と今夜見える惑星がわかります。位置情報の許可は不要で、スマホの中だけに保存されます。';

  @override
  String get searchCity => '都市を検索';

  @override
  String get noCityFound => '都市が見つかりません';

  @override
  String get cityNote => '時刻はスマホのタイムゾーンです。暗い空で地平線から 5° 以上の高さにあれば見えるとしています。';

  @override
  String illuminated(String percent) {
    return '$percent% 輝面';
  }

  @override
  String get moonrise => '月の出';

  @override
  String get moonset => '月の入り';

  @override
  String get sunset => '日の入り';

  @override
  String get sunrise => '日の出';

  @override
  String get nextFull => '次の満月';

  @override
  String get nextNew => '次の新月';

  @override
  String get phaseNew => '新月';

  @override
  String get phaseWaxingCrescent => '三日月';

  @override
  String get phaseFirstQuarter => '上弦の月';

  @override
  String get phaseWaxingGibbous => '十三夜';

  @override
  String get phaseFull => '満月';

  @override
  String get phaseWaningGibbous => '寝待月';

  @override
  String get phaseLastQuarter => '下弦の月';

  @override
  String get phaseWaningCrescent => '有明月';

  @override
  String get planetsTonight => '今夜の惑星';

  @override
  String get statusVisible => '今夜見える';

  @override
  String get statusEvening => '夕方、日没後';

  @override
  String get statusMorning => '明け方、日の出前';

  @override
  String get statusNotVisible => '今夜は見えない';

  @override
  String bestAt(String time) {
    return '見ごろ $time';
  }

  @override
  String altitudeDir(String direction, String degrees) {
    return '$direction、高さ $degrees°';
  }

  @override
  String riseSet(String rise, String set) {
    return '出 $rise · 入り $set';
  }

  @override
  String get needsTelescope => '双眼鏡か望遠鏡が必要';

  @override
  String get dirN => '北';

  @override
  String get dirNE => '北東';

  @override
  String get dirE => '東';

  @override
  String get dirSE => '南東';

  @override
  String get dirS => '南';

  @override
  String get dirSW => '南西';

  @override
  String get dirW => '西';

  @override
  String get dirNW => '北西';

  @override
  String get findPlanet => '空で探す';

  @override
  String finderTitle(String name) {
    return '$nameを探す';
  }

  @override
  String get pointPhone => 'スマホを持ち上げて、ゆっくり動かしてください。';

  @override
  String turnRight(String degrees) {
    return '右へ $degrees° 回る';
  }

  @override
  String turnLeft(String degrees) {
    return '左へ $degrees° 回る';
  }

  @override
  String tiltUp(String degrees) {
    return '$degrees° 上へ傾ける';
  }

  @override
  String tiltDown(String degrees) {
    return '$degrees° 下へ傾ける';
  }

  @override
  String onTarget(String name) {
    return '$nameはすぐそこです！';
  }

  @override
  String belowHorizon(String name) {
    return '$nameは今、地平線の下にあります。';
  }

  @override
  String risesAt(String time) {
    return '$time に昇ります。';
  }

  @override
  String get noSensor => 'このスマホにはコンパスセンサーがないため、探す機能は使えません。';

  @override
  String get calibrate => 'コンパスの調整が必要です。スマホで数回、8の字を描くように動かしてください。';

  @override
  String get phoneNow => 'スマホが向いている方向';

  @override
  String get finderNote => 'スマホの背面を空に向け、磁石や金属から離してください。太陽は絶対に見ないでください。';

  @override
  String get eventsTitle => '宇宙イベント';

  @override
  String get eventsSubtitle => 'これから12か月の空の見どころ。';

  @override
  String eventsNext(String event, String when) {
    return '次: $event · $when';
  }

  @override
  String get eventFullMoon => '満月';

  @override
  String get eventNewMoon => '新月';

  @override
  String eventOpposition(String planet) {
    return '$planetが衝';
  }

  @override
  String eventEveningElongation(String planet) {
    return '$planet：夕方の見ごろ';
  }

  @override
  String eventMorningElongation(String planet) {
    return '$planet：明け方の見ごろ';
  }

  @override
  String eventConjunction(String a, String b) {
    return '$aと$bが接近';
  }

  @override
  String get eventMarchEquinox => '3月の春分';

  @override
  String get eventJuneSolstice => '6月の夏至';

  @override
  String get eventSeptemberEquinox => '9月の秋分';

  @override
  String get eventDecemberSolstice => '12月の冬至';

  @override
  String get eventFullMoonDesc => '月の全面が明るく輝きます。日没ごろに昇ります。';

  @override
  String get eventNewMoonDesc => '月は見えません。星や惑星を見るのに月で最も暗い空です。';

  @override
  String eventOppositionDesc(String planet) {
    return '$planetは太陽の反対側にあります。今年いちばん明るく、一晩中見えます。';
  }

  @override
  String eventEveningDesc(String planet, String degrees) {
    return '$planetは太陽から $degrees° 離れ、最も遠い位置です。日没後、西の低い空を見てください。';
  }

  @override
  String eventMorningDesc(String planet, String degrees) {
    return '$planetは太陽から $degrees° 離れ、最も遠い位置です。日の出前、東の低い空を見てください。';
  }

  @override
  String eventConjunctionDesc(String degrees) {
    return '空でわずか $degrees° の距離まで近づきます。';
  }

  @override
  String get eventEquinoxDesc => '地球のどこでも昼と夜がほぼ同じ長さになります。';

  @override
  String get eventJuneSolsticeDesc => '北半球で昼が最も長く、南半球で最も短い日。';

  @override
  String get eventDecemberSolsticeDesc => '北半球で昼が最も短く、南半球で最も長い日。';

  @override
  String eventMeteorShower(String shower) {
    return '$shower流星群';
  }

  @override
  String eventMeteorDesc(String rate, String percent) {
    return '暗い空で1時間に最大約 $rate 個の流星。月の明るさは $percent% です。';
  }

  @override
  String get showerQuadrantids => 'しぶんぎ座';

  @override
  String get showerLyrids => 'こと座';

  @override
  String get showerEtaAquariids => 'みずがめ座η';

  @override
  String get showerPerseids => 'ペルセウス座';

  @override
  String get showerOrionids => 'オリオン座';

  @override
  String get showerLeonids => 'しし座';

  @override
  String get showerGeminids => 'ふたご座';

  @override
  String get showerUrsids => 'こぐま座';

  @override
  String get eventToday => '今日';

  @override
  String get eventTomorrow => '明日';

  @override
  String eventInDays(String days) {
    return '$days 日後';
  }

  @override
  String get eventsNote =>
      '日付はスマホの中で計算し、スマホのタイムゾーンで表示します。流星群の極大日は毎年の目安で、1日ずれることがあります。リマインダーはスマホの中だけに保存されます。';

  @override
  String get remindMe => '通知する';

  @override
  String reminderSet(String date) {
    return 'わかりました。$date にお知らせします。';
  }

  @override
  String get reminderOff => 'リマインダーを削除しました。';

  @override
  String get reminderTooLate => 'イベントが近すぎてリマインダーを設定できません。';

  @override
  String get notificationsOff => 'Heliora の通知がオフです。Android の設定でオンにしてください。';

  @override
  String get reminderTomorrow => '明日です';

  @override
  String get reminderToday => '今日です';

  @override
  String get onlineTitle => 'オンライン機能';

  @override
  String get onlineSubtitle =>
      '宇宙ステーションとロケット打ち上げを表示します。オンにすると、Heliora は wheretheiss.at、Celestrak、Launch Library 2 とだけ通信し、これらはスマホのインターネットアドレスを見られます。ほかには何も送りません。初期設定はオフです。';

  @override
  String get turnOnOnline => 'オンライン機能をオンにする';

  @override
  String get issTitle => '宇宙ステーション';

  @override
  String get issCardHint => '今どこにいるか、いつ上空を通るか';

  @override
  String get issNeedsOnline =>
      'ステーションを表示するには、インターネットから軌道データを取得する必要があります。一度ダウンロードすれば数日間オフラインで使えます。';

  @override
  String get issLoading => '軌道データを取得中…';

  @override
  String get issFailed => '軌道データを取得できませんでした。通信を確認してもう一度お試しください。';

  @override
  String issStale(String days) {
    return '軌道データは $days 日前のものなので、位置がずれることがあります。インターネットに接続して更新してください。';
  }

  @override
  String get issHeight => '高度';

  @override
  String get issSpeed => '速度';

  @override
  String get issFromYou => 'あなたからの距離';

  @override
  String valueKmh(String value) {
    return '$value km/h';
  }

  @override
  String issAboveHorizon(String direction, String degrees) {
    return '今、地平線の上にいます！$directionを見てください、高さ $degrees°。';
  }

  @override
  String get issBelowHorizon => '今は地平線の下です。';

  @override
  String issPassesTitle(String city) {
    return '$cityの上空を通る次の日時';
  }

  @override
  String get issNoPasses => '今後5日間に見ごろの通過はありません。';

  @override
  String issMaxHigh(String degrees) {
    return '最高 $degrees°';
  }

  @override
  String issFromTo(String start, String end) {
    return '$startから$endへ';
  }

  @override
  String get issVisible => '見つけやすい';

  @override
  String get issHidden => '見つけにくい';

  @override
  String get issPassTitle => '宇宙ステーションがあなたの上空を通ります';

  @override
  String issPassBody(String degrees, String direction) {
    return '10分後に昇ります、最高 $degrees°。$directionを見てください。';
  }

  @override
  String get issNote =>
      '位置はスマホの中でステーションの軌道データから計算します。空が暗く、ステーションに太陽光が当たっているときは見つけやすく、明るく速く動く星のように見えます。';

  @override
  String get launchesNeedOnline => 'これからのロケット打ち上げをここで見るには、オンライン機能をオンにしてください。';

  @override
  String get launchesFailed => '打ち上げリストを更新できませんでした。保存済みのリストを表示しています。';

  @override
  String get launchesNote =>
      '打ち上げ時刻は Launch Library 2 から取得され、よく変わります。名称と場所は英語です。';

  @override
  String get launchReminderBody => '約1時間後に打ち上げ。時刻は変わることがあります。';

  @override
  String get launchTimeTbd => '時刻は未定';
}
