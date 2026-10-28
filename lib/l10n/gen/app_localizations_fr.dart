// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => 'Explorez le Système solaire, entièrement hors ligne';

  @override
  String get navExplore => 'Explorer';

  @override
  String get navCompare => 'Comparer';

  @override
  String get navWeight => 'Poids';

  @override
  String get navQuiz => 'Quiz';

  @override
  String get viewMode => 'Mode d’affichage';

  @override
  String get settings => 'Réglages';

  @override
  String get notToScale =>
      'Pas à l’échelle · Touchez une planète pour l’ouvrir';

  @override
  String get dragToRotate => 'Faites glisser pour tourner · Pincez pour zoomer';

  @override
  String get planetsTitle => 'Planètes';

  @override
  String get planetMercury => 'Mercure';

  @override
  String get planetVenus => 'Vénus';

  @override
  String get planetEarth => 'Terre';

  @override
  String get planetMars => 'Mars';

  @override
  String get planetJupiter => 'Jupiter';

  @override
  String get planetSaturn => 'Saturne';

  @override
  String get planetUranus => 'Uranus';

  @override
  String get planetNeptune => 'Neptune';

  @override
  String planetOrder(int n) {
    return 'Planète n° $n depuis le Soleil';
  }

  @override
  String get openDetails => 'Voir les détails';

  @override
  String get diameter => 'Diamètre';

  @override
  String get gravity => 'Gravité';

  @override
  String get avgTemp => 'Température moyenne';

  @override
  String get avgTempShort => 'Temp. moyenne';

  @override
  String get dayLength => 'Jour';

  @override
  String get yearLength => 'Année';

  @override
  String get moons => 'Lunes connues';

  @override
  String get moonsShort => 'Lunes';

  @override
  String get distance => 'Distance au Soleil';

  @override
  String get pressure => 'Pression en surface';

  @override
  String get noSurface => 'Pas de surface solide';

  @override
  String valueKm(String value) {
    return '$value km';
  }

  @override
  String valueMillionKm(String value) {
    return '$value millions de km';
  }

  @override
  String valueHours(String value) {
    return '$value h';
  }

  @override
  String valueDays(String value) {
    return '$value jours';
  }

  @override
  String valueYears(String value) {
    return '$value ans';
  }

  @override
  String get atmosphere => 'Atmosphère';

  @override
  String get thinAtmosphere =>
      'Presque pas d’atmosphère. Ces gaz forment une couche très fine appelée exosphère.';

  @override
  String get oxygen => 'Oxygène';

  @override
  String get oxygenVsEarth => 'Oxygène comparé à la Terre';

  @override
  String get breathable => 'Respirable pour les humains';

  @override
  String get notBreathable =>
      'Non respirable, une combinaison spatiale est nécessaire';

  @override
  String weightFeelsLike(String weight) {
    return '$weight kg sur Terre donnent ici';
  }

  @override
  String get gasCo2 => 'Dioxyde de carbone';

  @override
  String get gasN2 => 'Azote';

  @override
  String get gasO2 => 'Oxygène';

  @override
  String get gasAr => 'Argon';

  @override
  String get gasH2 => 'Hydrogène';

  @override
  String get gasHe => 'Hélium';

  @override
  String get gasCh4 => 'Méthane';

  @override
  String get gasNa => 'Sodium';

  @override
  String get gasK => 'Potassium';

  @override
  String get compareTitle => 'Comparer les planètes';

  @override
  String get compareHint =>
      'Choisissez deux planètes pour les voir côte à côte.';

  @override
  String get weightTitle => 'Votre poids sur les autres planètes';

  @override
  String get weightInput => 'Votre poids sur Terre (kg)';

  @override
  String gravityTimes(String factor) {
    return '$factor× la gravité terrestre';
  }

  @override
  String get quizTitle => 'Quiz des planètes';

  @override
  String get quizIntro =>
      '10 questions sur les planètes. Combien de bonnes réponses ?';

  @override
  String get quizStart => 'Commencer le quiz';

  @override
  String quizProgress(int current, int total) {
    return 'Question $current sur $total';
  }

  @override
  String get quizNext => 'Suivant';

  @override
  String get quizSeeResult => 'Voir le résultat';

  @override
  String get quizCorrect => 'Correct !';

  @override
  String quizWrong(String answer) {
    return 'Pas tout à fait. La réponse est $answer.';
  }

  @override
  String quizScore(int score, int total) {
    return '$score bonnes réponses sur $total';
  }

  @override
  String quizBest(int score) {
    return 'Meilleur score : $score';
  }

  @override
  String get quizNewBest => 'Nouveau meilleur score !';

  @override
  String get quizAgain => 'Rejouer';

  @override
  String get qLargest => 'Quelle est la plus grande planète ?';

  @override
  String get qSmallest => 'Quelle est la plus petite planète ?';

  @override
  String get qHottest => 'Quelle est la planète la plus chaude ?';

  @override
  String get qColdest => 'Quelle est la planète la plus froide ?';

  @override
  String get qMostMoons => 'Quelle planète a le plus de lunes connues ?';

  @override
  String get qBreathable =>
      'Sur quelle planète les humains peuvent-ils respirer l’air ?';

  @override
  String get qClosest => 'Quelle planète est la plus proche du Soleil ?';

  @override
  String get qFarthest => 'Quelle planète est la plus éloignée du Soleil ?';

  @override
  String get qStrongestGravity => 'Quelle planète a la gravité la plus forte ?';

  @override
  String get qShortestDay => 'Quelle planète a le jour le plus court ?';

  @override
  String get qLongestDay => 'Quelle planète a le jour le plus long ?';

  @override
  String get appearance => 'Apparence';

  @override
  String get theme => 'Thème';

  @override
  String get themeSystem => 'Système';

  @override
  String get themeLight => 'Clair';

  @override
  String get themeDark => 'Sombre';

  @override
  String get language => 'Langue';

  @override
  String get appLanguage => 'Langue de l’app';

  @override
  String get languageNote => '20 langues · noms des planètes inclus';

  @override
  String get phoneLanguage => 'Langue du téléphone';

  @override
  String get updates => 'Mises à jour';

  @override
  String get version => 'Version';

  @override
  String get checkForUpdates => 'Rechercher des mises à jour';

  @override
  String get checking => 'Recherche…';

  @override
  String get autoUpdateCheck => 'Vérifier automatiquement une fois par jour';

  @override
  String get updateNote =>
      'Les mises à jour viennent de GitHub Releases. Vos réglages restent sur votre téléphone.';

  @override
  String get upToDate => 'Vous avez la dernière version.';

  @override
  String get updateFailed =>
      'Impossible de joindre GitHub. Vérifiez votre connexion et réessayez.';

  @override
  String get updateAvailable => 'Mise à jour disponible';

  @override
  String updateReady(String version) {
    return 'La version $version est prête à être téléchargée.';
  }

  @override
  String get download => 'Télécharger';

  @override
  String get later => 'Plus tard';

  @override
  String get about => 'À propos';

  @override
  String get sourceCode => 'Code source sur GitHub';

  @override
  String get privacyLine => 'Hors ligne · Sans publicité · Sans pistage';

  @override
  String get dataSource => 'Données : NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'Impossible d’ouvrir le lien.';

  @override
  String get bodySun => 'Soleil';

  @override
  String get bodyMoon => 'Lune';

  @override
  String get bodyPluto => 'Pluton';

  @override
  String get moonIo => 'Io';

  @override
  String get moonEuropa => 'Europe';

  @override
  String get moonGanymede => 'Ganymède';

  @override
  String get moonCallisto => 'Callisto';

  @override
  String get moonTitan => 'Titan';

  @override
  String get moonEnceladus => 'Encelade';

  @override
  String get moonTriton => 'Triton';

  @override
  String get kindStar => 'Notre étoile, le centre du Système solaire';

  @override
  String get kindDwarf => 'Planète naine';

  @override
  String moonOf(String planet) {
    return 'Lune de $planet';
  }

  @override
  String get orbitPeriod => 'Une orbite';

  @override
  String distanceFrom(String body) {
    return 'Distance à $body';
  }

  @override
  String get composition => 'De quoi il est fait';

  @override
  String get noAtmosphere => 'Pas de vraie atmosphère, c’est presque le vide.';

  @override
  String get majorMoons => 'Lunes principales';

  @override
  String get lifeTitle => 'Les humains pourraient-ils vivre ici ?';

  @override
  String get lifeScoreShort => 'Score de vie';

  @override
  String get lifeNote =>
      'Calculé d’après la température, la pression de l’air, l’oxygène, l’eau, la surface et la gravité. La Terre obtient 10.';

  @override
  String get water => 'Eau';

  @override
  String get waterLiquid => 'Eau liquide';

  @override
  String get waterIce => 'Glace';

  @override
  String get waterOcean => 'Océan sous la glace';

  @override
  String get waterNone => 'Pas d’eau';

  @override
  String get surface => 'Surface';

  @override
  String get solidSurface => 'Surface solide';

  @override
  String get lifeHome => 'Comme à la maison';

  @override
  String get lifeHard =>
      'Très difficile, il faudrait une base fermée et des combinaisons';

  @override
  String get lifeNo => 'Impossible pour les humains';

  @override
  String get downloadInstall => 'Télécharger et installer';

  @override
  String downloadingPercent(String percent) {
    return 'Téléchargement… $percent %';
  }

  @override
  String get installNow => 'Installer';

  @override
  String get allowInstalls =>
      'Autorisez Heliora à installer des apps sur l’écran qui s’est ouvert, puis revenez et touchez Installer.';

  @override
  String get downloadFailed =>
      'Le téléchargement n’a pas abouti. Vérifiez votre connexion et réessayez.';

  @override
  String get tryAgain => 'Réessayer';

  @override
  String get today => 'Aujourd’hui';

  @override
  String get play => 'Lecture';

  @override
  String get pause => 'Pause';

  @override
  String get monthBack => '30 jours plus tôt';

  @override
  String get monthForward => '30 jours plus tard';

  @override
  String get positionsNote =>
      'Positions réelles à cette date · Tailles et distances pas à l’échelle · Touchez une planète';

  @override
  String get navYou => 'Vous';

  @override
  String get ageTitle => 'Votre âge sur les autres planètes';

  @override
  String get setBirthDate => 'Indiquez votre date de naissance';

  @override
  String get changeBirthDate => 'Modifier';

  @override
  String nextBirthday(String days) {
    return 'Prochain anniversaire dans $days jours';
  }

  @override
  String get ageNote =>
      'Votre date de naissance reste uniquement sur ce téléphone.';

  @override
  String get share => 'Partager';

  @override
  String shareText(String planet) {
    return '$planet dans Heliora, l’app gratuite du Système solaire hors ligne : https://github.com/lumio-apps/heliora';
  }

  @override
  String get shareFailed => 'Impossible de partager l’image.';

  @override
  String get travelTitle => 'À quelle distance ?';

  @override
  String get distanceFromEarth => 'Distance de la Terre aujourd’hui';

  @override
  String get lightTime => 'La lumière met';

  @override
  String get bySpacecraft => 'En vaisseau à 60 000 km/h';

  @override
  String get byCar => 'En voiture à 100 km/h';

  @override
  String valueSeconds(String value) {
    return '$value s';
  }

  @override
  String valueMinutes(String value) {
    return '$value min';
  }

  @override
  String get sizeTitle => 'Taille';

  @override
  String sizeTimes(String big, String times, String small) {
    return '$big est $times× plus large que $small.';
  }

  @override
  String sizeSimilar(String a, String b) {
    return '$a et $b ont à peu près la même taille.';
  }

  @override
  String get navSky => 'Ciel';

  @override
  String get skyTitle => 'Le ciel de ce soir';

  @override
  String get chooseCity => 'Choisissez votre ville';

  @override
  String get chooseCityHint =>
      'Choisissez la ville la plus proche pour voir la Lune et les planètes visibles ce soir. Aucune autorisation de position n’est nécessaire et le choix reste sur votre téléphone.';

  @override
  String get searchCity => 'Rechercher une ville';

  @override
  String get noCityFound => 'Aucune ville trouvée';

  @override
  String get cityNote =>
      'Les heures sont dans le fuseau horaire du téléphone. Une planète est visible si elle est à au moins 5° au-dessus de l’horizon dans un ciel noir.';

  @override
  String illuminated(String percent) {
    return '$percent % éclairée';
  }

  @override
  String get moonrise => 'Lever de lune';

  @override
  String get moonset => 'Coucher de lune';

  @override
  String get sunset => 'Coucher du soleil';

  @override
  String get sunrise => 'Lever du soleil';

  @override
  String get nextFull => 'Prochaine pleine lune';

  @override
  String get nextNew => 'Prochaine nouvelle lune';

  @override
  String get phaseNew => 'Nouvelle lune';

  @override
  String get phaseWaxingCrescent => 'Premier croissant';

  @override
  String get phaseFirstQuarter => 'Premier quartier';

  @override
  String get phaseWaxingGibbous => 'Gibbeuse croissante';

  @override
  String get phaseFull => 'Pleine lune';

  @override
  String get phaseWaningGibbous => 'Gibbeuse décroissante';

  @override
  String get phaseLastQuarter => 'Dernier quartier';

  @override
  String get phaseWaningCrescent => 'Dernier croissant';

  @override
  String get planetsTonight => 'Planètes ce soir';

  @override
  String get statusVisible => 'Visible ce soir';

  @override
  String get statusEvening => 'Le soir, après le coucher du soleil';

  @override
  String get statusMorning => 'Le matin, avant le lever du soleil';

  @override
  String get statusNotVisible => 'Pas visible ce soir';

  @override
  String bestAt(String time) {
    return 'Idéal à $time';
  }

  @override
  String altitudeDir(String direction, String degrees) {
    return '$direction, à $degrees° de hauteur';
  }

  @override
  String riseSet(String rise, String set) {
    return 'Lever $rise · Coucher $set';
  }

  @override
  String get needsTelescope => 'Jumelles ou télescope nécessaires';

  @override
  String get dirN => 'Nord';

  @override
  String get dirNE => 'Nord-est';

  @override
  String get dirE => 'Est';

  @override
  String get dirSE => 'Sud-est';

  @override
  String get dirS => 'Sud';

  @override
  String get dirSW => 'Sud-ouest';

  @override
  String get dirW => 'Ouest';

  @override
  String get dirNW => 'Nord-ouest';

  @override
  String get findPlanet => 'Trouver dans le ciel';

  @override
  String finderTitle(String name) {
    return 'Trouver $name';
  }

  @override
  String get pointPhone => 'Levez votre téléphone et déplacez-le lentement.';

  @override
  String turnRight(String degrees) {
    return 'Tournez à droite de $degrees°';
  }

  @override
  String turnLeft(String degrees) {
    return 'Tournez à gauche de $degrees°';
  }

  @override
  String tiltUp(String degrees) {
    return 'Inclinez vers le haut de $degrees°';
  }

  @override
  String tiltDown(String degrees) {
    return 'Inclinez vers le bas de $degrees°';
  }

  @override
  String onTarget(String name) {
    return '$name est juste là !';
  }

  @override
  String belowHorizon(String name) {
    return '$name est actuellement sous l’horizon.';
  }

  @override
  String risesAt(String time) {
    return 'Il se lève à $time.';
  }

  @override
  String get noSensor =>
      'Ce téléphone n’a pas de capteur de boussole, la recherche ne peut donc pas fonctionner.';

  @override
  String get calibrate =>
      'La boussole doit être étalonnée : dessinez quelques 8 avec votre téléphone.';

  @override
  String get phoneNow => 'Votre téléphone pointe vers';

  @override
  String get finderNote =>
      'Tenez le téléphone avec l’arrière vers le ciel, loin des aimants et du métal. Ne regardez jamais le Soleil.';
}
