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

  @override
  String get today => 'Hari ini';

  @override
  String get play => 'Putar';

  @override
  String get pause => 'Jeda';

  @override
  String get monthBack => '30 hari sebelumnya';

  @override
  String get monthForward => '30 hari sesudahnya';

  @override
  String get positionsNote =>
      'Posisi asli pada tanggal ini · Ukuran dan jarak tidak sesuai skala · Ketuk planet';

  @override
  String get navYou => 'Anda';

  @override
  String get ageTitle => 'Umur Anda di planet lain';

  @override
  String get setBirthDate => 'Atur tanggal lahir';

  @override
  String get changeBirthDate => 'Ubah';

  @override
  String nextBirthday(String days) {
    return 'Ulang tahun berikutnya dalam $days hari';
  }

  @override
  String get ageNote => 'Tanggal lahir Anda hanya disimpan di ponsel ini.';

  @override
  String get share => 'Bagikan';

  @override
  String shareText(String planet) {
    return '$planet di Heliora, aplikasi Tata Surya offline gratis: https://github.com/lumio-apps/heliora';
  }

  @override
  String get shareFailed => 'Gambar tidak bisa dibagikan.';

  @override
  String get travelTitle => 'Seberapa jauh?';

  @override
  String get distanceFromEarth => 'Jarak dari Bumi hari ini';

  @override
  String get lightTime => 'Cahaya butuh';

  @override
  String get bySpacecraft => 'Dengan wahana 60.000 km/jam';

  @override
  String get byCar => 'Dengan mobil 100 km/jam';

  @override
  String valueSeconds(String value) {
    return '$value dtk';
  }

  @override
  String valueMinutes(String value) {
    return '$value mnt';
  }

  @override
  String get sizeTitle => 'Ukuran';

  @override
  String sizeTimes(String big, String times, String small) {
    return '$big $times× lebih lebar dari $small.';
  }

  @override
  String sizeSimilar(String a, String b) {
    return '$a dan $b hampir sama besar.';
  }

  @override
  String get navSky => 'Langit';

  @override
  String get skyTitle => 'Langit malam ini';

  @override
  String get chooseCity => 'Pilih kota Anda';

  @override
  String get chooseCityHint =>
      'Pilih kota terdekat untuk melihat Bulan dan planet yang tampak malam ini. Tidak perlu izin lokasi, dan pilihan hanya disimpan di ponsel.';

  @override
  String get searchCity => 'Cari kota';

  @override
  String get noCityFound => 'Kota tidak ditemukan';

  @override
  String get cityNote =>
      'Waktu memakai zona waktu ponsel. Planet dianggap tampak bila setidaknya 5° di atas cakrawala saat langit gelap.';

  @override
  String illuminated(String percent) {
    return '$percent% terang';
  }

  @override
  String get moonrise => 'Bulan terbit';

  @override
  String get moonset => 'Bulan terbenam';

  @override
  String get sunset => 'Matahari terbenam';

  @override
  String get sunrise => 'Matahari terbit';

  @override
  String get nextFull => 'Purnama berikutnya';

  @override
  String get nextNew => 'Bulan baru berikutnya';

  @override
  String get phaseNew => 'Bulan baru';

  @override
  String get phaseWaxingCrescent => 'Sabit awal';

  @override
  String get phaseFirstQuarter => 'Kuartal pertama';

  @override
  String get phaseWaxingGibbous => 'Cembung awal';

  @override
  String get phaseFull => 'Purnama';

  @override
  String get phaseWaningGibbous => 'Cembung akhir';

  @override
  String get phaseLastQuarter => 'Kuartal terakhir';

  @override
  String get phaseWaningCrescent => 'Sabit akhir';

  @override
  String get planetsTonight => 'Planet malam ini';

  @override
  String get statusVisible => 'Tampak malam ini';

  @override
  String get statusEvening => 'Petang, setelah matahari terbenam';

  @override
  String get statusMorning => 'Pagi, sebelum matahari terbit';

  @override
  String get statusNotVisible => 'Tidak tampak malam ini';

  @override
  String bestAt(String time) {
    return 'Terbaik pukul $time';
  }

  @override
  String altitudeDir(String direction, String degrees) {
    return '$direction, setinggi $degrees°';
  }

  @override
  String riseSet(String rise, String set) {
    return 'Terbit $rise · Terbenam $set';
  }

  @override
  String get needsTelescope => 'Perlu teropong atau teleskop';

  @override
  String get dirN => 'Utara';

  @override
  String get dirNE => 'Timur laut';

  @override
  String get dirE => 'Timur';

  @override
  String get dirSE => 'Tenggara';

  @override
  String get dirS => 'Selatan';

  @override
  String get dirSW => 'Barat daya';

  @override
  String get dirW => 'Barat';

  @override
  String get dirNW => 'Barat laut';

  @override
  String get findPlanet => 'Cari di langit';

  @override
  String finderTitle(String name) {
    return 'Cari $name';
  }

  @override
  String get pointPhone => 'Angkat ponsel dan gerakkan perlahan.';

  @override
  String turnRight(String degrees) {
    return 'Belok kanan $degrees°';
  }

  @override
  String turnLeft(String degrees) {
    return 'Belok kiri $degrees°';
  }

  @override
  String tiltUp(String degrees) {
    return 'Miringkan ke atas $degrees°';
  }

  @override
  String tiltDown(String degrees) {
    return 'Miringkan ke bawah $degrees°';
  }

  @override
  String onTarget(String name) {
    return '$name ada di sana!';
  }

  @override
  String belowHorizon(String name) {
    return '$name sedang berada di bawah cakrawala.';
  }

  @override
  String risesAt(String time) {
    return 'Terbit pukul $time.';
  }

  @override
  String get noSensor =>
      'Ponsel ini tidak punya sensor kompas, jadi pencari tidak bisa bekerja.';

  @override
  String get calibrate =>
      'Kompas perlu dikalibrasi: gerakkan ponsel membentuk angka 8 beberapa kali.';

  @override
  String get phoneNow => 'Ponsel Anda mengarah ke';

  @override
  String get finderNote =>
      'Pegang ponsel dengan bagian belakang menghadap langit, jauh dari magnet dan logam. Jangan pernah menatap Matahari.';

  @override
  String get eventsTitle => 'Peristiwa antariksa';

  @override
  String get eventsSubtitle =>
      'Apa yang bisa dilihat di langit dalam 12 bulan ke depan.';

  @override
  String eventsNext(String event, String when) {
    return 'Berikutnya: $event · $when';
  }

  @override
  String get eventFullMoon => 'Bulan purnama';

  @override
  String get eventNewMoon => 'Bulan baru';

  @override
  String eventOpposition(String planet) {
    return '$planet beroposisi';
  }

  @override
  String eventEveningElongation(String planet) {
    return '$planet: waktu terbaik di sore hari';
  }

  @override
  String eventMorningElongation(String planet) {
    return '$planet: waktu terbaik di pagi hari';
  }

  @override
  String eventConjunction(String a, String b) {
    return '$a dan $b berdekatan';
  }

  @override
  String get eventMarchEquinox => 'Ekuinoks Maret';

  @override
  String get eventJuneSolstice => 'Solstis Juni';

  @override
  String get eventSeptemberEquinox => 'Ekuinoks September';

  @override
  String get eventDecemberSolstice => 'Solstis Desember';

  @override
  String get eventFullMoonDesc =>
      'Seluruh wajah Bulan terang. Terbit sekitar matahari terbenam.';

  @override
  String get eventNewMoonDesc =>
      'Bulan tidak terlihat. Langit paling gelap bulan ini untuk melihat bintang dan planet.';

  @override
  String eventOppositionDesc(String planet) {
    return '$planet berseberangan dengan Matahari. Ia paling terang tahun ini dan terlihat sepanjang malam.';
  }

  @override
  String eventEveningDesc(String planet, String degrees) {
    return '$planet berjarak $degrees° dari Matahari, jarak terjauhnya. Lihat rendah di barat setelah matahari terbenam.';
  }

  @override
  String eventMorningDesc(String planet, String degrees) {
    return '$planet berjarak $degrees° dari Matahari, jarak terjauhnya. Lihat rendah di timur sebelum matahari terbit.';
  }

  @override
  String eventConjunctionDesc(String degrees) {
    return 'Keduanya hanya terpisah $degrees° di langit.';
  }

  @override
  String get eventEquinoxDesc =>
      'Siang dan malam hampir sama panjang di seluruh Bumi.';

  @override
  String get eventJuneSolsticeDesc =>
      'Hari terpanjang di utara, hari terpendek di selatan.';

  @override
  String get eventDecemberSolsticeDesc =>
      'Hari terpendek di utara, hari terpanjang di selatan.';

  @override
  String eventMeteorShower(String shower) {
    return 'Hujan meteor $shower';
  }

  @override
  String eventMeteorDesc(String rate, String percent) {
    return 'Hingga sekitar $rate meteor per jam di langit gelap. Bulan akan terang $percent%.';
  }

  @override
  String get showerQuadrantids => 'Kuadrantid';

  @override
  String get showerLyrids => 'Lirid';

  @override
  String get showerEtaAquariids => 'Eta Akuarid';

  @override
  String get showerPerseids => 'Perseid';

  @override
  String get showerOrionids => 'Orionid';

  @override
  String get showerLeonids => 'Leonid';

  @override
  String get showerGeminids => 'Geminid';

  @override
  String get showerUrsids => 'Ursid';

  @override
  String get eventToday => 'Hari ini';

  @override
  String get eventTomorrow => 'Besok';

  @override
  String eventInDays(String days) {
    return '$days hari lagi';
  }

  @override
  String get eventsNote =>
      'Tanggal dihitung di ponsel Anda dan ditampilkan dalam zona waktunya. Puncak hujan meteor adalah tanggal umum tiap tahun dan bisa bergeser sehari. Pengingat hanya tersimpan di ponsel Anda.';

  @override
  String get remindMe => 'Ingatkan saya';

  @override
  String reminderSet(String date) {
    return 'Baik, saya akan mengingatkan Anda pada $date.';
  }

  @override
  String get reminderOff => 'Pengingat dihapus.';

  @override
  String get reminderTooLate =>
      'Peristiwa ini terlalu dekat untuk membuat pengingat.';

  @override
  String get notificationsOff =>
      'Notifikasi Heliora mati. Nyalakan di pengaturan Android.';

  @override
  String get reminderTomorrow => 'Besok';

  @override
  String get reminderToday => 'Terjadi hari ini';

  @override
  String get onlineTitle => 'Fitur online';

  @override
  String get onlineSubtitle =>
      'Tampilkan stasiun luar angkasa dan peluncuran roket. Heliora lalu hanya menghubungi wheretheiss.at, Celestrak, dan Launch Library 2, yang dapat melihat alamat internet ponsel Anda. Tidak ada hal lain yang dikirim. Mati secara default.';

  @override
  String get turnOnOnline => 'Aktifkan fitur online';

  @override
  String get issTitle => 'Stasiun luar angkasa';

  @override
  String get issCardHint => 'Di mana sekarang dan kapan melintas di atas Anda';

  @override
  String get issNeedsOnline =>
      'Untuk menampilkan stasiun, Heliora memerlukan data orbitnya dari internet. Data diunduh sekali lalu berfungsi offline selama beberapa hari.';

  @override
  String get issLoading => 'Mengambil data orbit…';

  @override
  String get issFailed =>
      'Data orbit tidak bisa diambil. Periksa internet lalu coba lagi.';

  @override
  String issStale(String days) {
    return 'Data orbit sudah $days hari, jadi posisi mungkin meleset. Sambungkan ke internet untuk memperbaruinya.';
  }

  @override
  String get issHeight => 'Ketinggian';

  @override
  String get issSpeed => 'Kecepatan';

  @override
  String get issFromYou => 'Jarak dari Anda';

  @override
  String valueKmh(String value) {
    return '$value km/jam';
  }

  @override
  String issAboveHorizon(String direction, String degrees) {
    return 'Di atas cakrawala Anda sekarang! Lihat ke $direction, setinggi $degrees°.';
  }

  @override
  String get issBelowHorizon => 'Di bawah cakrawala Anda saat ini.';

  @override
  String issPassesTitle(String city) {
    return 'Lintasan berikutnya di atas $city';
  }

  @override
  String get issNoPasses => 'Tidak ada lintasan bagus dalam 5 hari ke depan.';

  @override
  String issMaxHigh(String degrees) {
    return 'Setinggi hingga $degrees°';
  }

  @override
  String issFromTo(String start, String end) {
    return 'Dari $start ke $end';
  }

  @override
  String get issVisible => 'Mudah dilihat';

  @override
  String get issHidden => 'Sulit dilihat';

  @override
  String get issPassTitle => 'Stasiun luar angkasa melintas di atas Anda';

  @override
  String issPassBody(String degrees, String direction) {
    return 'Terbit dalam 10 menit, setinggi hingga $degrees°. Lihat ke $direction.';
  }

  @override
  String get issNote =>
      'Posisi dihitung di ponsel Anda dari data orbit stasiun. Lintasan mudah dilihat saat langit gelap dan stasiun disinari Matahari: tampak seperti bintang terang yang bergerak cepat.';

  @override
  String get launchesNeedOnline =>
      'Aktifkan fitur online untuk melihat peluncuran roket mendatang di sini.';

  @override
  String get launchesFailed =>
      'Daftar peluncuran tidak bisa diperbarui. Menampilkan daftar tersimpan.';

  @override
  String get launchesNote =>
      'Waktu peluncuran berasal dari Launch Library 2 dan sering berubah. Nama dan tempat dalam bahasa Inggris.';

  @override
  String get launchReminderBody =>
      'Meluncur sekitar satu jam lagi. Waktu bisa berubah.';

  @override
  String get launchTimeTbd => 'Waktu belum ditentukan';
}
