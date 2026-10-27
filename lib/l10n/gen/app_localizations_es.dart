// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => 'Explora el sistema solar, totalmente sin conexión';

  @override
  String get navExplore => 'Explorar';

  @override
  String get navCompare => 'Comparar';

  @override
  String get navWeight => 'Peso';

  @override
  String get navQuiz => 'Quiz';

  @override
  String get viewMode => 'Modo de vista';

  @override
  String get settings => 'Ajustes';

  @override
  String get notToScale => 'No está a escala · Toca un planeta para abrirlo';

  @override
  String get dragToRotate => 'Arrastra para girar · Pellizca para hacer zoom';

  @override
  String get planetsTitle => 'Planetas';

  @override
  String get planetMercury => 'Mercurio';

  @override
  String get planetVenus => 'Venus';

  @override
  String get planetEarth => 'Tierra';

  @override
  String get planetMars => 'Marte';

  @override
  String get planetJupiter => 'Júpiter';

  @override
  String get planetSaturn => 'Saturno';

  @override
  String get planetUranus => 'Urano';

  @override
  String get planetNeptune => 'Neptuno';

  @override
  String planetOrder(int n) {
    return 'Planeta $n desde el Sol';
  }

  @override
  String get openDetails => 'Ver detalles';

  @override
  String get diameter => 'Diámetro';

  @override
  String get gravity => 'Gravedad';

  @override
  String get avgTemp => 'Temperatura media';

  @override
  String get avgTempShort => 'Temp. media';

  @override
  String get dayLength => 'Día';

  @override
  String get yearLength => 'Año';

  @override
  String get moons => 'Lunas conocidas';

  @override
  String get moonsShort => 'Lunas';

  @override
  String get distance => 'Distancia al Sol';

  @override
  String get pressure => 'Presión en la superficie';

  @override
  String get noSurface => 'Sin superficie sólida';

  @override
  String valueKm(String value) {
    return '$value km';
  }

  @override
  String valueMillionKm(String value) {
    return '$value millones de km';
  }

  @override
  String valueHours(String value) {
    return '$value h';
  }

  @override
  String valueDays(String value) {
    return '$value días';
  }

  @override
  String valueYears(String value) {
    return '$value años';
  }

  @override
  String get atmosphere => 'Atmósfera';

  @override
  String get thinAtmosphere =>
      'Casi no tiene atmósfera. Estos gases forman una capa muy fina llamada exosfera.';

  @override
  String get oxygen => 'Oxígeno';

  @override
  String get oxygenVsEarth => 'Oxígeno frente a la Tierra';

  @override
  String get breathable => 'Respirable para los humanos';

  @override
  String get notBreathable => 'No es respirable, se necesita un traje espacial';

  @override
  String weightFeelsLike(String weight) {
    return '$weight kg en la Tierra aquí se sienten como';
  }

  @override
  String get gasCo2 => 'Dióxido de carbono';

  @override
  String get gasN2 => 'Nitrógeno';

  @override
  String get gasO2 => 'Oxígeno';

  @override
  String get gasAr => 'Argón';

  @override
  String get gasH2 => 'Hidrógeno';

  @override
  String get gasHe => 'Helio';

  @override
  String get gasCh4 => 'Metano';

  @override
  String get gasNa => 'Sodio';

  @override
  String get gasK => 'Potasio';

  @override
  String get compareTitle => 'Comparar planetas';

  @override
  String get compareHint => 'Elige dos planetas para verlos lado a lado.';

  @override
  String get weightTitle => 'Tu peso en otros planetas';

  @override
  String get weightInput => 'Tu peso en la Tierra (kg)';

  @override
  String gravityTimes(String factor) {
    return '$factor× la gravedad de la Tierra';
  }

  @override
  String get quizTitle => 'Quiz de planetas';

  @override
  String get quizIntro =>
      '10 preguntas sobre los planetas. ¿Cuántas puedes acertar?';

  @override
  String get quizStart => 'Empezar quiz';

  @override
  String quizProgress(int current, int total) {
    return 'Pregunta $current de $total';
  }

  @override
  String get quizNext => 'Siguiente';

  @override
  String get quizSeeResult => 'Ver resultado';

  @override
  String get quizCorrect => '¡Correcto!';

  @override
  String quizWrong(String answer) {
    return 'No del todo. La respuesta es $answer.';
  }

  @override
  String quizScore(int score, int total) {
    return 'Acertaste $score de $total';
  }

  @override
  String quizBest(int score) {
    return 'Mejor puntuación: $score';
  }

  @override
  String get quizNewBest => '¡Nueva mejor puntuación!';

  @override
  String get quizAgain => 'Jugar de nuevo';

  @override
  String get qLargest => '¿Cuál es el planeta más grande?';

  @override
  String get qSmallest => '¿Cuál es el planeta más pequeño?';

  @override
  String get qHottest => '¿Cuál es el planeta más caliente?';

  @override
  String get qColdest => '¿Cuál es el planeta más frío?';

  @override
  String get qMostMoons => '¿Qué planeta tiene más lunas conocidas?';

  @override
  String get qBreathable =>
      '¿En qué planeta pueden los humanos respirar el aire?';

  @override
  String get qClosest => '¿Qué planeta está más cerca del Sol?';

  @override
  String get qFarthest => '¿Qué planeta está más lejos del Sol?';

  @override
  String get qStrongestGravity => '¿Qué planeta tiene la gravedad más fuerte?';

  @override
  String get qShortestDay => '¿Qué planeta tiene el día más corto?';

  @override
  String get qLongestDay => '¿Qué planeta tiene el día más largo?';

  @override
  String get appearance => 'Apariencia';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get language => 'Idioma';

  @override
  String get appLanguage => 'Idioma de la app';

  @override
  String get languageNote => '20 idiomas · también los nombres de los planetas';

  @override
  String get phoneLanguage => 'Idioma del teléfono';

  @override
  String get updates => 'Actualizaciones';

  @override
  String get version => 'Versión';

  @override
  String get checkForUpdates => 'Buscar actualizaciones';

  @override
  String get checking => 'Buscando…';

  @override
  String get autoUpdateCheck => 'Buscar automáticamente una vez al día';

  @override
  String get updateNote =>
      'Las actualizaciones vienen de GitHub Releases. Tus ajustes se quedan en tu teléfono.';

  @override
  String get upToDate => 'Tienes la última versión.';

  @override
  String get updateFailed =>
      'No se pudo conectar con GitHub. Revisa tu conexión e inténtalo de nuevo.';

  @override
  String get updateAvailable => 'Actualización disponible';

  @override
  String updateReady(String version) {
    return 'La versión $version está lista para descargar.';
  }

  @override
  String get download => 'Descargar';

  @override
  String get later => 'Más tarde';

  @override
  String get about => 'Acerca de';

  @override
  String get sourceCode => 'Código fuente en GitHub';

  @override
  String get privacyLine => 'Sin conexión · Sin anuncios · Sin rastreo';

  @override
  String get dataSource => 'Datos: NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'No se pudo abrir el enlace.';

  @override
  String get bodySun => 'Sol';

  @override
  String get bodyMoon => 'Luna';

  @override
  String get bodyPluto => 'Plutón';

  @override
  String get moonIo => 'Ío';

  @override
  String get moonEuropa => 'Europa';

  @override
  String get moonGanymede => 'Ganímedes';

  @override
  String get moonCallisto => 'Calisto';

  @override
  String get moonTitan => 'Titán';

  @override
  String get moonEnceladus => 'Encélado';

  @override
  String get moonTriton => 'Tritón';

  @override
  String get kindStar => 'Nuestra estrella, el centro del sistema solar';

  @override
  String get kindDwarf => 'Planeta enano';

  @override
  String moonOf(String planet) {
    return 'Luna de $planet';
  }

  @override
  String get orbitPeriod => 'Una órbita';

  @override
  String distanceFrom(String body) {
    return 'Distancia a $body';
  }

  @override
  String get composition => 'De qué está hecho';

  @override
  String get noAtmosphere => 'No tiene una atmósfera real, es casi el vacío.';

  @override
  String get majorMoons => 'Lunas principales';

  @override
  String get lifeTitle => '¿Podrían vivir aquí los humanos?';

  @override
  String get lifeScoreShort => 'Puntuación de vida';

  @override
  String get lifeNote =>
      'Calculada con la temperatura, la presión del aire, el oxígeno, el agua, la superficie y la gravedad. La Tierra saca 10.';

  @override
  String get water => 'Agua';

  @override
  String get waterLiquid => 'Agua líquida';

  @override
  String get waterIce => 'Hielo';

  @override
  String get waterOcean => 'Océano bajo el hielo';

  @override
  String get waterNone => 'Sin agua';

  @override
  String get surface => 'Superficie';

  @override
  String get solidSurface => 'Superficie sólida';

  @override
  String get lifeHome => 'Como en casa';

  @override
  String get lifeHard =>
      'Muy difícil, se necesitaría una base cerrada y trajes espaciales';

  @override
  String get lifeNo => 'Imposible para los humanos';

  @override
  String get downloadInstall => 'Descargar e instalar';

  @override
  String downloadingPercent(String percent) {
    return 'Descargando… $percent%';
  }

  @override
  String get installNow => 'Instalar';

  @override
  String get allowInstalls =>
      'Permite que Heliora instale apps en la pantalla que se abrió y luego vuelve y toca Instalar.';

  @override
  String get downloadFailed =>
      'La descarga no terminó. Revisa tu conexión e inténtalo de nuevo.';

  @override
  String get tryAgain => 'Reintentar';
}
