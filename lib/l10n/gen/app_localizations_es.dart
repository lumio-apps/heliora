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

  @override
  String get today => 'Hoy';

  @override
  String get play => 'Reproducir';

  @override
  String get pause => 'Pausa';

  @override
  String get monthBack => '30 días antes';

  @override
  String get monthForward => '30 días después';

  @override
  String get positionsNote =>
      'Posiciones reales en esta fecha · Tamaños y distancias no a escala · Toca un planeta';

  @override
  String get navYou => 'Tú';

  @override
  String get ageTitle => 'Tu edad en otros planetas';

  @override
  String get setBirthDate => 'Indica tu fecha de nacimiento';

  @override
  String get changeBirthDate => 'Cambiar';

  @override
  String nextBirthday(String days) {
    return 'Próximo cumpleaños en $days días';
  }

  @override
  String get ageNote =>
      'Tu fecha de nacimiento solo se guarda en este teléfono.';

  @override
  String get share => 'Compartir';

  @override
  String shareText(String planet) {
    return '$planet en Heliora, la app gratuita del sistema solar sin conexión: https://github.com/lumio-apps/heliora';
  }

  @override
  String get shareFailed => 'No se pudo compartir la imagen.';

  @override
  String get travelTitle => '¿A qué distancia está?';

  @override
  String get distanceFromEarth => 'Distancia a la Tierra hoy';

  @override
  String get lightTime => 'La luz tarda';

  @override
  String get bySpacecraft => 'En nave espacial a 60.000 km/h';

  @override
  String get byCar => 'En coche a 100 km/h';

  @override
  String valueSeconds(String value) {
    return '$value s';
  }

  @override
  String valueMinutes(String value) {
    return '$value min';
  }

  @override
  String get sizeTitle => 'Tamaño';

  @override
  String sizeTimes(String big, String times, String small) {
    return '$big es $times× más ancho que $small.';
  }

  @override
  String sizeSimilar(String a, String b) {
    return '$a y $b tienen casi el mismo tamaño.';
  }

  @override
  String get navSky => 'Cielo';

  @override
  String get skyTitle => 'El cielo de esta noche';

  @override
  String get chooseCity => 'Elige tu ciudad';

  @override
  String get chooseCityHint =>
      'Elige la ciudad más cercana para ver la Luna y los planetas visibles esta noche. No se necesita permiso de ubicación y se queda en tu teléfono.';

  @override
  String get searchCity => 'Buscar ciudad';

  @override
  String get noCityFound => 'No se encontró ninguna ciudad';

  @override
  String get cityNote =>
      'Las horas están en la zona horaria de tu teléfono. Un planeta cuenta como visible si está al menos 5° sobre el horizonte con el cielo oscuro.';

  @override
  String illuminated(String percent) {
    return '$percent% iluminada';
  }

  @override
  String get moonrise => 'Salida de la Luna';

  @override
  String get moonset => 'Puesta de la Luna';

  @override
  String get sunset => 'Puesta de sol';

  @override
  String get sunrise => 'Salida del sol';

  @override
  String get nextFull => 'Próxima luna llena';

  @override
  String get nextNew => 'Próxima luna nueva';

  @override
  String get phaseNew => 'Luna nueva';

  @override
  String get phaseWaxingCrescent => 'Creciente';

  @override
  String get phaseFirstQuarter => 'Cuarto creciente';

  @override
  String get phaseWaxingGibbous => 'Gibosa creciente';

  @override
  String get phaseFull => 'Luna llena';

  @override
  String get phaseWaningGibbous => 'Gibosa menguante';

  @override
  String get phaseLastQuarter => 'Cuarto menguante';

  @override
  String get phaseWaningCrescent => 'Menguante';

  @override
  String get planetsTonight => 'Planetas esta noche';

  @override
  String get statusVisible => 'Visible esta noche';

  @override
  String get statusEvening => 'Al atardecer, tras la puesta de sol';

  @override
  String get statusMorning => 'Al amanecer, antes de la salida del sol';

  @override
  String get statusNotVisible => 'No visible esta noche';

  @override
  String bestAt(String time) {
    return 'Mejor a las $time';
  }

  @override
  String altitudeDir(String direction, String degrees) {
    return '$direction, a $degrees° de altura';
  }

  @override
  String riseSet(String rise, String set) {
    return 'Sale $rise · Se pone $set';
  }

  @override
  String get needsTelescope => 'Hacen falta prismáticos o telescopio';

  @override
  String get dirN => 'Norte';

  @override
  String get dirNE => 'Noreste';

  @override
  String get dirE => 'Este';

  @override
  String get dirSE => 'Sureste';

  @override
  String get dirS => 'Sur';

  @override
  String get dirSW => 'Suroeste';

  @override
  String get dirW => 'Oeste';

  @override
  String get dirNW => 'Noroeste';

  @override
  String get findPlanet => 'Buscar en el cielo';

  @override
  String finderTitle(String name) {
    return 'Buscar $name';
  }

  @override
  String get pointPhone => 'Levanta el móvil y muévelo despacio.';

  @override
  String turnRight(String degrees) {
    return 'Gira a la derecha $degrees°';
  }

  @override
  String turnLeft(String degrees) {
    return 'Gira a la izquierda $degrees°';
  }

  @override
  String tiltUp(String degrees) {
    return 'Inclina hacia arriba $degrees°';
  }

  @override
  String tiltDown(String degrees) {
    return 'Inclina hacia abajo $degrees°';
  }

  @override
  String onTarget(String name) {
    return '¡$name está justo ahí!';
  }

  @override
  String belowHorizon(String name) {
    return '$name está ahora bajo el horizonte.';
  }

  @override
  String risesAt(String time) {
    return 'Sale a las $time.';
  }

  @override
  String get noSensor =>
      'Este móvil no tiene sensor de brújula, así que el buscador no puede funcionar.';

  @override
  String get calibrate =>
      'La brújula necesita calibrarse: mueve el móvil en forma de 8 unas cuantas veces.';

  @override
  String get phoneNow => 'Tu móvil apunta a';

  @override
  String get finderNote =>
      'Sujeta el móvil con la parte trasera hacia el cielo y aléjalo de imanes y metal. Nunca mires al Sol.';

  @override
  String get eventsTitle => 'Eventos espaciales';

  @override
  String get eventsSubtitle =>
      'Qué mirar en el cielo en los próximos 12 meses.';

  @override
  String eventsNext(String event, String when) {
    return 'Próximo: $event · $when';
  }

  @override
  String get eventFullMoon => 'Luna llena';

  @override
  String get eventNewMoon => 'Luna nueva';

  @override
  String eventOpposition(String planet) {
    return '$planet en oposición';
  }

  @override
  String eventEveningElongation(String planet) {
    return '$planet: mejor vista por la tarde';
  }

  @override
  String eventMorningElongation(String planet) {
    return '$planet: mejor vista por la mañana';
  }

  @override
  String eventConjunction(String a, String b) {
    return '$a y $b se encuentran';
  }

  @override
  String get eventMarchEquinox => 'Equinoccio de marzo';

  @override
  String get eventJuneSolstice => 'Solsticio de junio';

  @override
  String get eventSeptemberEquinox => 'Equinoccio de septiembre';

  @override
  String get eventDecemberSolstice => 'Solsticio de diciembre';

  @override
  String get eventFullMoonDesc =>
      'Toda la cara de la Luna está iluminada. Sale hacia la puesta de sol.';

  @override
  String get eventNewMoonDesc =>
      'La Luna no se ve. El cielo más oscuro del mes para ver estrellas y planetas.';

  @override
  String eventOppositionDesc(String planet) {
    return '$planet está opuesto al Sol. Está en su momento más brillante del año y se ve toda la noche.';
  }

  @override
  String eventEveningDesc(String planet, String degrees) {
    return '$planet está a $degrees° del Sol, lo más lejos posible. Mira bajo en el oeste después de la puesta de sol.';
  }

  @override
  String eventMorningDesc(String planet, String degrees) {
    return '$planet está a $degrees° del Sol, lo más lejos posible. Mira bajo en el este antes del amanecer.';
  }

  @override
  String eventConjunctionDesc(String degrees) {
    return 'Pasan a solo $degrees° de distancia en el cielo.';
  }

  @override
  String get eventEquinoxDesc =>
      'El día y la noche duran casi lo mismo en toda la Tierra.';

  @override
  String get eventJuneSolsticeDesc =>
      'El día más largo en el norte y el más corto en el sur.';

  @override
  String get eventDecemberSolsticeDesc =>
      'El día más corto en el norte y el más largo en el sur.';

  @override
  String eventMeteorShower(String shower) {
    return 'Lluvia de meteoros $shower';
  }

  @override
  String eventMeteorDesc(String rate, String percent) {
    return 'Hasta unos $rate meteoros por hora con cielo oscuro. La Luna estará iluminada al $percent%.';
  }

  @override
  String get showerQuadrantids => 'Cuadrántidas';

  @override
  String get showerLyrids => 'Líridas';

  @override
  String get showerEtaAquariids => 'Eta Acuáridas';

  @override
  String get showerPerseids => 'Perseidas';

  @override
  String get showerOrionids => 'Oriónidas';

  @override
  String get showerLeonids => 'Leónidas';

  @override
  String get showerGeminids => 'Gemínidas';

  @override
  String get showerUrsids => 'Úrsidas';

  @override
  String get eventToday => 'Hoy';

  @override
  String get eventTomorrow => 'Mañana';

  @override
  String eventInDays(String days) {
    return 'En $days días';
  }

  @override
  String get eventsNote =>
      'Las fechas se calculan en tu móvil y se muestran en su zona horaria. Los picos de las lluvias de meteoros son fechas habituales cada año y pueden variar un día. Los recordatorios se quedan en tu móvil.';

  @override
  String get remindMe => 'Recordármelo';

  @override
  String reminderSet(String date) {
    return 'Vale, te lo recordaré el $date.';
  }

  @override
  String get reminderOff => 'Recordatorio eliminado.';

  @override
  String get reminderTooLate =>
      'Este evento está demasiado cerca para poner un recordatorio.';

  @override
  String get notificationsOff =>
      'Las notificaciones de Heliora están desactivadas. Actívalas en los ajustes de Android.';

  @override
  String get reminderTomorrow => 'Es mañana';

  @override
  String get reminderToday => 'Ocurre hoy';
}
