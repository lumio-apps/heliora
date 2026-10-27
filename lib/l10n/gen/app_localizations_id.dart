// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => 'Jelajahi Tata Surya, sepenuhnya offline';

  @override
  String get navExplore => 'Jelajahi';

  @override
  String get navCompare => 'Bandingkan';

  @override
  String get navWeight => 'Berat';

  @override
  String get navQuiz => 'Kuis';

  @override
  String get viewMode => 'Mode tampilan';

  @override
  String get settings => 'Setelan';

  @override
  String get notToScale => 'Tidak sesuai skala · Ketuk planet untuk membukanya';

  @override
  String get dragToRotate => 'Seret untuk memutar · Cubit untuk zoom';

  @override
  String get planetsTitle => 'Planet';

  @override
  String get planetMercury => 'Merkurius';

  @override
  String get planetVenus => 'Venus';

  @override
  String get planetEarth => 'Bumi';

  @override
  String get planetMars => 'Mars';

  @override
  String get planetJupiter => 'Jupiter';

  @override
  String get planetSaturn => 'Saturnus';

  @override
  String get planetUranus => 'Uranus';

  @override
  String get planetNeptune => 'Neptunus';

  @override
  String planetOrder(int n) {
    return 'Planet ke-$n dari Matahari';
  }

  @override
  String get openDetails => 'Buka detail';

  @override
  String get diameter => 'Diameter';

  @override
  String get gravity => 'Gravitasi';

  @override
  String get avgTemp => 'Suhu rata-rata';

  @override
  String get avgTempShort => 'Suhu rata-rata';

  @override
  String get dayLength => 'Hari';

  @override
  String get yearLength => 'Tahun';

  @override
  String get moons => 'Bulan yang diketahui';

  @override
  String get moonsShort => 'Bulan';

  @override
  String get distance => 'Jarak dari Matahari';

  @override
  String get pressure => 'Tekanan permukaan';

  @override
  String get noSurface => 'Tidak ada permukaan padat';

  @override
  String valueKm(String value) {
    return '$value km';
  }

  @override
  String valueMillionKm(String value) {
    return '$value juta km';
  }

  @override
  String valueHours(String value) {
    return '$value jam';
  }

  @override
  String valueDays(String value) {
    return '$value hari';
  }

  @override
  String valueYears(String value) {
    return '$value tahun';
  }

  @override
  String get atmosphere => 'Atmosfer';

  @override
  String get thinAtmosphere =>
      'Hampir tidak ada atmosfer. Gas-gas ini membentuk lapisan sangat tipis yang disebut eksosfer.';

  @override
  String get oxygen => 'Oksigen';

  @override
  String get oxygenVsEarth => 'Oksigen dibanding Bumi';

  @override
  String get breathable => 'Bisa dihirup manusia';

  @override
  String get notBreathable => 'Tidak bisa dihirup, perlu baju antariksa';

  @override
  String weightFeelsLike(String weight) {
    return '$weight kg di Bumi di sini terasa';
  }

  @override
  String get gasCo2 => 'Karbon dioksida';

  @override
  String get gasN2 => 'Nitrogen';

  @override
  String get gasO2 => 'Oksigen';

  @override
  String get gasAr => 'Argon';

  @override
  String get gasH2 => 'Hidrogen';

  @override
  String get gasHe => 'Helium';

  @override
  String get gasCh4 => 'Metana';

  @override
  String get gasNa => 'Natrium';

  @override
  String get gasK => 'Kalium';

  @override
  String get compareTitle => 'Bandingkan planet';

  @override
  String get compareHint => 'Pilih dua planet untuk dilihat berdampingan.';

  @override
  String get weightTitle => 'Berat Anda di planet lain';

  @override
  String get weightInput => 'Berat Anda di Bumi (kg)';

  @override
  String gravityTimes(String factor) {
    return '$factor× gravitasi Bumi';
  }

  @override
  String get quizTitle => 'Kuis planet';

  @override
  String get quizIntro =>
      '10 pertanyaan tentang planet. Berapa yang bisa Anda jawab benar?';

  @override
  String get quizStart => 'Mulai kuis';

  @override
  String quizProgress(int current, int total) {
    return 'Pertanyaan $current dari $total';
  }

  @override
  String get quizNext => 'Berikutnya';

  @override
  String get quizSeeResult => 'Lihat hasil';

  @override
  String get quizCorrect => 'Benar!';

  @override
  String quizWrong(String answer) {
    return 'Belum tepat. Jawabannya $answer.';
  }

  @override
  String quizScore(int score, int total) {
    return 'Anda benar $score dari $total';
  }

  @override
  String quizBest(int score) {
    return 'Skor terbaik: $score';
  }

  @override
  String get quizNewBest => 'Skor terbaik baru!';

  @override
  String get quizAgain => 'Main lagi';

  @override
  String get qLargest => 'Planet mana yang terbesar?';

  @override
  String get qSmallest => 'Planet mana yang terkecil?';

  @override
  String get qHottest => 'Planet mana yang terpanas?';

  @override
  String get qColdest => 'Planet mana yang terdingin?';

  @override
  String get qMostMoons => 'Planet mana yang punya bulan paling banyak?';

  @override
  String get qBreathable => 'Di planet mana manusia bisa menghirup udaranya?';

  @override
  String get qClosest => 'Planet mana yang paling dekat dengan Matahari?';

  @override
  String get qFarthest => 'Planet mana yang paling jauh dari Matahari?';

  @override
  String get qStrongestGravity => 'Planet mana yang gravitasinya paling kuat?';

  @override
  String get qShortestDay => 'Planet mana yang harinya paling pendek?';

  @override
  String get qLongestDay => 'Planet mana yang harinya paling panjang?';

  @override
  String get appearance => 'Tampilan';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Terang';

  @override
  String get themeDark => 'Gelap';

  @override
  String get language => 'Bahasa';

  @override
  String get appLanguage => 'Bahasa aplikasi';

  @override
  String get languageNote => '20 bahasa · nama planet juga';

  @override
  String get phoneLanguage => 'Bahasa ponsel';

  @override
  String get updates => 'Pembaruan';

  @override
  String get version => 'Versi';

  @override
  String get checkForUpdates => 'Periksa pembaruan';

  @override
  String get checking => 'Memeriksa…';

  @override
  String get autoUpdateCheck => 'Periksa otomatis sekali sehari';

  @override
  String get updateNote =>
      'Pembaruan datang dari GitHub Releases. Setelan Anda tetap ada di ponsel.';

  @override
  String get upToDate => 'Anda sudah memakai versi terbaru.';

  @override
  String get updateFailed =>
      'Tidak bisa terhubung ke GitHub. Periksa internet lalu coba lagi.';

  @override
  String get updateAvailable => 'Pembaruan tersedia';

  @override
  String updateReady(String version) {
    return 'Versi $version siap diunduh.';
  }

  @override
  String get download => 'Unduh';

  @override
  String get later => 'Nanti';

  @override
  String get about => 'Tentang';

  @override
  String get sourceCode => 'Kode sumber di GitHub';

  @override
  String get privacyLine => 'Offline · Tanpa iklan · Tanpa pelacakan';

  @override
  String get dataSource => 'Data: NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'Tidak bisa membuka tautan.';

  @override
  String get bodySun => 'Matahari';

  @override
  String get bodyMoon => 'Bulan';

  @override
  String get bodyPluto => 'Pluto';

  @override
  String get moonIo => 'Io';

  @override
  String get moonEuropa => 'Europa';

  @override
  String get moonGanymede => 'Ganymede';

  @override
  String get moonCallisto => 'Callisto';

  @override
  String get moonTitan => 'Titan';

  @override
  String get moonEnceladus => 'Enceladus';

  @override
  String get moonTriton => 'Triton';

  @override
  String get kindStar => 'Bintang kita, pusat Tata Surya';

  @override
  String get kindDwarf => 'Planet kerdil';

  @override
  String moonOf(String planet) {
    return 'Bulan milik $planet';
  }

  @override
  String get orbitPeriod => 'Satu orbit';

  @override
  String distanceFrom(String body) {
    return 'Jarak dari $body';
  }

  @override
  String get composition => 'Terbuat dari apa';

  @override
  String get noAtmosphere => 'Tidak punya atmosfer sungguhan, hampir hampa.';

  @override
  String get majorMoons => 'Bulan utama';

  @override
  String get lifeTitle => 'Bisakah manusia tinggal di sini?';

  @override
  String get lifeScoreShort => 'Skor kehidupan';

  @override
  String get lifeNote =>
      'Dihitung dari suhu, tekanan udara, oksigen, air, permukaan, dan gravitasi. Bumi mendapat 10.';

  @override
  String get water => 'Air';

  @override
  String get waterLiquid => 'Air cair';

  @override
  String get waterIce => 'Es';

  @override
  String get waterOcean => 'Lautan di bawah es';

  @override
  String get waterNone => 'Tidak ada air';

  @override
  String get surface => 'Permukaan';

  @override
  String get solidSurface => 'Permukaan padat';

  @override
  String get lifeHome => 'Seperti di rumah';

  @override
  String get lifeHard =>
      'Sangat sulit, perlu pangkalan tertutup dan baju antariksa';

  @override
  String get lifeNo => 'Mustahil bagi manusia';

  @override
  String get downloadInstall => 'Unduh dan pasang';

  @override
  String downloadingPercent(String percent) {
    return 'Mengunduh… $percent%';
  }

  @override
  String get installNow => 'Pasang';

  @override
  String get allowInstalls =>
      'Izinkan Heliora memasang aplikasi di layar yang terbuka, lalu kembali dan ketuk Pasang.';

  @override
  String get downloadFailed =>
      'Unduhan tidak selesai. Periksa internet lalu coba lagi.';

  @override
  String get tryAgain => 'Coba lagi';
}
