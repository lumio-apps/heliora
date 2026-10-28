// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => 'Explore o Sistema Solar, totalmente offline';

  @override
  String get navExplore => 'Explorar';

  @override
  String get navCompare => 'Comparar';

  @override
  String get navWeight => 'Peso';

  @override
  String get navQuiz => 'Quiz';

  @override
  String get viewMode => 'Modo de visualização';

  @override
  String get settings => 'Configurações';

  @override
  String get notToScale => 'Fora de escala · Toque num planeta para abri-lo';

  @override
  String get dragToRotate => 'Arraste para girar · Pince para dar zoom';

  @override
  String get planetsTitle => 'Planetas';

  @override
  String get planetMercury => 'Mercúrio';

  @override
  String get planetVenus => 'Vênus';

  @override
  String get planetEarth => 'Terra';

  @override
  String get planetMars => 'Marte';

  @override
  String get planetJupiter => 'Júpiter';

  @override
  String get planetSaturn => 'Saturno';

  @override
  String get planetUranus => 'Urano';

  @override
  String get planetNeptune => 'Netuno';

  @override
  String planetOrder(int n) {
    return 'Planeta $n a partir do Sol';
  }

  @override
  String get openDetails => 'Ver detalhes';

  @override
  String get diameter => 'Diâmetro';

  @override
  String get gravity => 'Gravidade';

  @override
  String get avgTemp => 'Temperatura média';

  @override
  String get avgTempShort => 'Temp. média';

  @override
  String get dayLength => 'Dia';

  @override
  String get yearLength => 'Ano';

  @override
  String get moons => 'Luas conhecidas';

  @override
  String get moonsShort => 'Luas';

  @override
  String get distance => 'Distância do Sol';

  @override
  String get pressure => 'Pressão na superfície';

  @override
  String get noSurface => 'Sem superfície sólida';

  @override
  String valueKm(String value) {
    return '$value km';
  }

  @override
  String valueMillionKm(String value) {
    return '$value milhões de km';
  }

  @override
  String valueHours(String value) {
    return '$value h';
  }

  @override
  String valueDays(String value) {
    return '$value dias';
  }

  @override
  String valueYears(String value) {
    return '$value anos';
  }

  @override
  String get atmosphere => 'Atmosfera';

  @override
  String get thinAtmosphere =>
      'Quase não há atmosfera. Esses gases formam uma camada muito fina chamada exosfera.';

  @override
  String get oxygen => 'Oxigênio';

  @override
  String get oxygenVsEarth => 'Oxigênio comparado com a Terra';

  @override
  String get breathable => 'Respirável para humanos';

  @override
  String get notBreathable => 'Não respirável, é preciso um traje espacial';

  @override
  String weightFeelsLike(String weight) {
    return '$weight kg na Terra aqui parecem';
  }

  @override
  String get gasCo2 => 'Dióxido de carbono';

  @override
  String get gasN2 => 'Nitrogênio';

  @override
  String get gasO2 => 'Oxigênio';

  @override
  String get gasAr => 'Argônio';

  @override
  String get gasH2 => 'Hidrogênio';

  @override
  String get gasHe => 'Hélio';

  @override
  String get gasCh4 => 'Metano';

  @override
  String get gasNa => 'Sódio';

  @override
  String get gasK => 'Potássio';

  @override
  String get compareTitle => 'Comparar planetas';

  @override
  String get compareHint => 'Escolha dois planetas para vê-los lado a lado.';

  @override
  String get weightTitle => 'Seu peso em outros planetas';

  @override
  String get weightInput => 'Seu peso na Terra (kg)';

  @override
  String gravityTimes(String factor) {
    return '$factor× a gravidade da Terra';
  }

  @override
  String get quizTitle => 'Quiz dos planetas';

  @override
  String get quizIntro =>
      '10 perguntas sobre os planetas. Quantas você consegue acertar?';

  @override
  String get quizStart => 'Começar quiz';

  @override
  String quizProgress(int current, int total) {
    return 'Pergunta $current de $total';
  }

  @override
  String get quizNext => 'Próxima';

  @override
  String get quizSeeResult => 'Ver resultado';

  @override
  String get quizCorrect => 'Correto!';

  @override
  String quizWrong(String answer) {
    return 'Não exatamente. A resposta é $answer.';
  }

  @override
  String quizScore(int score, int total) {
    return 'Você acertou $score de $total';
  }

  @override
  String quizBest(int score) {
    return 'Melhor pontuação: $score';
  }

  @override
  String get quizNewBest => 'Nova melhor pontuação!';

  @override
  String get quizAgain => 'Jogar de novo';

  @override
  String get qLargest => 'Qual é o maior planeta?';

  @override
  String get qSmallest => 'Qual é o menor planeta?';

  @override
  String get qHottest => 'Qual é o planeta mais quente?';

  @override
  String get qColdest => 'Qual é o planeta mais frio?';

  @override
  String get qMostMoons => 'Qual planeta tem mais luas conhecidas?';

  @override
  String get qBreathable => 'Em qual planeta os humanos podem respirar o ar?';

  @override
  String get qClosest => 'Qual planeta está mais perto do Sol?';

  @override
  String get qFarthest => 'Qual planeta está mais longe do Sol?';

  @override
  String get qStrongestGravity => 'Qual planeta tem a gravidade mais forte?';

  @override
  String get qShortestDay => 'Qual planeta tem o dia mais curto?';

  @override
  String get qLongestDay => 'Qual planeta tem o dia mais longo?';

  @override
  String get appearance => 'Aparência';

  @override
  String get theme => 'Tema';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Escuro';

  @override
  String get language => 'Idioma';

  @override
  String get appLanguage => 'Idioma do app';

  @override
  String get languageNote => '20 idiomas · nomes dos planetas também';

  @override
  String get phoneLanguage => 'Idioma do telefone';

  @override
  String get updates => 'Atualizações';

  @override
  String get version => 'Versão';

  @override
  String get checkForUpdates => 'Procurar atualizações';

  @override
  String get checking => 'Procurando…';

  @override
  String get autoUpdateCheck => 'Procurar automaticamente uma vez por dia';

  @override
  String get updateNote =>
      'As atualizações vêm do GitHub Releases. Suas configurações ficam no seu telefone.';

  @override
  String get upToDate => 'Você já tem a versão mais recente.';

  @override
  String get updateFailed =>
      'Não foi possível acessar o GitHub. Verifique a internet e tente de novo.';

  @override
  String get updateAvailable => 'Atualização disponível';

  @override
  String updateReady(String version) {
    return 'A versão $version está pronta para baixar.';
  }

  @override
  String get download => 'Baixar';

  @override
  String get later => 'Depois';

  @override
  String get about => 'Sobre';

  @override
  String get sourceCode => 'Código-fonte no GitHub';

  @override
  String get privacyLine => 'Offline · Sem anúncios · Sem rastreamento';

  @override
  String get dataSource => 'Dados: NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'Não foi possível abrir o link.';

  @override
  String get bodySun => 'Sol';

  @override
  String get bodyMoon => 'Lua';

  @override
  String get bodyPluto => 'Plutão';

  @override
  String get moonIo => 'Io';

  @override
  String get moonEuropa => 'Europa';

  @override
  String get moonGanymede => 'Ganimedes';

  @override
  String get moonCallisto => 'Calisto';

  @override
  String get moonTitan => 'Titã';

  @override
  String get moonEnceladus => 'Encélado';

  @override
  String get moonTriton => 'Tritão';

  @override
  String get kindStar => 'Nossa estrela, o centro do Sistema Solar';

  @override
  String get kindDwarf => 'Planeta anão';

  @override
  String moonOf(String planet) {
    return 'Lua de $planet';
  }

  @override
  String get orbitPeriod => 'Uma órbita';

  @override
  String distanceFrom(String body) {
    return 'Distância de $body';
  }

  @override
  String get composition => 'Do que é feito';

  @override
  String get noAtmosphere => 'Não tem atmosfera de verdade, é quase vácuo.';

  @override
  String get majorMoons => 'Luas principais';

  @override
  String get lifeTitle => 'Humanos poderiam viver aqui?';

  @override
  String get lifeScoreShort => 'Pontuação de vida';

  @override
  String get lifeNote =>
      'Calculada pela temperatura, pressão do ar, oxigênio, água, superfície e gravidade. A Terra tira 10.';

  @override
  String get water => 'Água';

  @override
  String get waterLiquid => 'Água líquida';

  @override
  String get waterIce => 'Gelo';

  @override
  String get waterOcean => 'Oceano sob o gelo';

  @override
  String get waterNone => 'Sem água';

  @override
  String get surface => 'Superfície';

  @override
  String get solidSurface => 'Superfície sólida';

  @override
  String get lifeHome => 'Igual a estar em casa';

  @override
  String get lifeHard =>
      'Muito difícil, seria preciso uma base fechada e trajes espaciais';

  @override
  String get lifeNo => 'Impossível para humanos';

  @override
  String get downloadInstall => 'Baixar e instalar';

  @override
  String downloadingPercent(String percent) {
    return 'Baixando… $percent%';
  }

  @override
  String get installNow => 'Instalar';

  @override
  String get allowInstalls =>
      'Permita que o Heliora instale apps na tela que abriu, depois volte e toque em Instalar.';

  @override
  String get downloadFailed =>
      'O download não terminou. Verifique a internet e tente de novo.';

  @override
  String get tryAgain => 'Tentar de novo';

  @override
  String get today => 'Hoje';

  @override
  String get play => 'Reproduzir';

  @override
  String get pause => 'Pausar';

  @override
  String get monthBack => '30 dias antes';

  @override
  String get monthForward => '30 dias depois';

  @override
  String get positionsNote =>
      'Posições reais nesta data · Tamanhos e distâncias fora de escala · Toque num planeta';

  @override
  String get navYou => 'Você';

  @override
  String get ageTitle => 'Sua idade em outros planetas';

  @override
  String get setBirthDate => 'Informe sua data de nascimento';

  @override
  String get changeBirthDate => 'Alterar';

  @override
  String nextBirthday(String days) {
    return 'Próximo aniversário em $days dias';
  }

  @override
  String get ageNote => 'Sua data de nascimento fica salva só neste telefone.';

  @override
  String get share => 'Compartilhar';

  @override
  String shareText(String planet) {
    return '$planet no Heliora, o app gratuito do Sistema Solar offline: https://github.com/lumio-apps/heliora';
  }

  @override
  String get shareFailed => 'Não foi possível compartilhar a imagem.';

  @override
  String get travelTitle => 'A que distância fica?';

  @override
  String get distanceFromEarth => 'Distância da Terra hoje';

  @override
  String get lightTime => 'A luz leva';

  @override
  String get bySpacecraft => 'De nave espacial a 60.000 km/h';

  @override
  String get byCar => 'De carro a 100 km/h';

  @override
  String valueSeconds(String value) {
    return '$value s';
  }

  @override
  String valueMinutes(String value) {
    return '$value min';
  }

  @override
  String get sizeTitle => 'Tamanho';

  @override
  String sizeTimes(String big, String times, String small) {
    return '$big é $times× mais largo que $small.';
  }

  @override
  String sizeSimilar(String a, String b) {
    return '$a e $b têm quase o mesmo tamanho.';
  }

  @override
  String get navSky => 'Céu';

  @override
  String get skyTitle => 'O céu desta noite';

  @override
  String get chooseCity => 'Escolha sua cidade';

  @override
  String get chooseCityHint =>
      'Escolha a cidade mais próxima para ver a Lua e os planetas visíveis esta noite. Não precisa de permissão de localização e fica só no seu telefone.';

  @override
  String get searchCity => 'Buscar cidade';

  @override
  String get noCityFound => 'Nenhuma cidade encontrada';

  @override
  String get cityNote =>
      'Os horários estão no fuso do seu telefone. Um planeta conta como visível quando está pelo menos 5° acima do horizonte com o céu escuro.';

  @override
  String illuminated(String percent) {
    return '$percent% iluminada';
  }

  @override
  String get moonrise => 'Nascer da Lua';

  @override
  String get moonset => 'Ocaso da Lua';

  @override
  String get sunset => 'Pôr do sol';

  @override
  String get sunrise => 'Nascer do sol';

  @override
  String get nextFull => 'Próxima lua cheia';

  @override
  String get nextNew => 'Próxima lua nova';

  @override
  String get phaseNew => 'Lua nova';

  @override
  String get phaseWaxingCrescent => 'Lua crescente';

  @override
  String get phaseFirstQuarter => 'Quarto crescente';

  @override
  String get phaseWaxingGibbous => 'Crescente gibosa';

  @override
  String get phaseFull => 'Lua cheia';

  @override
  String get phaseWaningGibbous => 'Minguante gibosa';

  @override
  String get phaseLastQuarter => 'Quarto minguante';

  @override
  String get phaseWaningCrescent => 'Lua minguante';

  @override
  String get planetsTonight => 'Planetas esta noite';

  @override
  String get statusVisible => 'Visível esta noite';

  @override
  String get statusEvening => 'À noitinha, após o pôr do sol';

  @override
  String get statusMorning => 'De madrugada, antes do nascer do sol';

  @override
  String get statusNotVisible => 'Não visível esta noite';

  @override
  String bestAt(String time) {
    return 'Melhor às $time';
  }

  @override
  String altitudeDir(String direction, String degrees) {
    return '$direction, a $degrees° de altura';
  }

  @override
  String riseSet(String rise, String set) {
    return 'Nasce $rise · Se põe $set';
  }

  @override
  String get needsTelescope => 'Precisa de binóculo ou telescópio';

  @override
  String get dirN => 'Norte';

  @override
  String get dirNE => 'Nordeste';

  @override
  String get dirE => 'Leste';

  @override
  String get dirSE => 'Sudeste';

  @override
  String get dirS => 'Sul';

  @override
  String get dirSW => 'Sudoeste';

  @override
  String get dirW => 'Oeste';

  @override
  String get dirNW => 'Noroeste';
}
