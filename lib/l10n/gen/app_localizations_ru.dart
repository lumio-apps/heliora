// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Heliora';

  @override
  String get tagline => 'Исследуйте Солнечную систему, полностью офлайн';

  @override
  String get navExplore => 'Обзор';

  @override
  String get navCompare => 'Сравнение';

  @override
  String get navWeight => 'Вес';

  @override
  String get navQuiz => 'Викторина';

  @override
  String get viewMode => 'Режим просмотра';

  @override
  String get settings => 'Настройки';

  @override
  String get notToScale =>
      'Не в масштабе · Нажмите на планету, чтобы открыть её';

  @override
  String get dragToRotate =>
      'Тяните, чтобы вращать · Сведите пальцы для масштаба';

  @override
  String get planetsTitle => 'Планеты';

  @override
  String get planetMercury => 'Меркурий';

  @override
  String get planetVenus => 'Венера';

  @override
  String get planetEarth => 'Земля';

  @override
  String get planetMars => 'Марс';

  @override
  String get planetJupiter => 'Юпитер';

  @override
  String get planetSaturn => 'Сатурн';

  @override
  String get planetUranus => 'Уран';

  @override
  String get planetNeptune => 'Нептун';

  @override
  String planetOrder(int n) {
    return 'Планета № $n от Солнца';
  }

  @override
  String get openDetails => 'Подробнее';

  @override
  String get diameter => 'Диаметр';

  @override
  String get gravity => 'Гравитация';

  @override
  String get avgTemp => 'Средняя температура';

  @override
  String get avgTempShort => 'Ср. темп.';

  @override
  String get dayLength => 'Сутки';

  @override
  String get yearLength => 'Год';

  @override
  String get moons => 'Известные спутники';

  @override
  String get moonsShort => 'Спутники';

  @override
  String get distance => 'Расстояние от Солнца';

  @override
  String get pressure => 'Давление у поверхности';

  @override
  String get noSurface => 'Нет твёрдой поверхности';

  @override
  String valueKm(String value) {
    return '$value км';
  }

  @override
  String valueMillionKm(String value) {
    return '$value млн км';
  }

  @override
  String valueHours(String value) {
    return '$value ч';
  }

  @override
  String valueDays(String value) {
    return '$value сут';
  }

  @override
  String valueYears(String value) {
    return '$value лет';
  }

  @override
  String get atmosphere => 'Атмосфера';

  @override
  String get thinAtmosphere =>
      'Атмосферы почти нет. Эти газы образуют очень тонкий слой — экзосферу.';

  @override
  String get oxygen => 'Кислород';

  @override
  String get oxygenVsEarth => 'Кислород в сравнении с Землёй';

  @override
  String get breathable => 'Пригодно для дыхания человека';

  @override
  String get notBreathable => 'Дышать нельзя, нужен скафандр';

  @override
  String weightFeelsLike(String weight) {
    return '$weight кг на Земле здесь ощущаются как';
  }

  @override
  String get gasCo2 => 'Углекислый газ';

  @override
  String get gasN2 => 'Азот';

  @override
  String get gasO2 => 'Кислород';

  @override
  String get gasAr => 'Аргон';

  @override
  String get gasH2 => 'Водород';

  @override
  String get gasHe => 'Гелий';

  @override
  String get gasCh4 => 'Метан';

  @override
  String get gasNa => 'Натрий';

  @override
  String get gasK => 'Калий';

  @override
  String get compareTitle => 'Сравнение планет';

  @override
  String get compareHint => 'Выберите две планеты, чтобы сравнить их.';

  @override
  String get weightTitle => 'Ваш вес на других планетах';

  @override
  String get weightInput => 'Ваш вес на Земле (кг)';

  @override
  String gravityTimes(String factor) {
    return '$factor× земной гравитации';
  }

  @override
  String get quizTitle => 'Викторина о планетах';

  @override
  String get quizIntro =>
      '10 вопросов о планетах. Сколько правильных ответов вы дадите?';

  @override
  String get quizStart => 'Начать викторину';

  @override
  String quizProgress(int current, int total) {
    return 'Вопрос $current из $total';
  }

  @override
  String get quizNext => 'Далее';

  @override
  String get quizSeeResult => 'Посмотреть результат';

  @override
  String get quizCorrect => 'Верно!';

  @override
  String quizWrong(String answer) {
    return 'Не совсем. Правильный ответ: $answer.';
  }

  @override
  String quizScore(int score, int total) {
    return 'Правильно $score из $total';
  }

  @override
  String quizBest(int score) {
    return 'Лучший результат: $score';
  }

  @override
  String get quizNewBest => 'Новый рекорд!';

  @override
  String get quizAgain => 'Сыграть ещё';

  @override
  String get qLargest => 'Какая планета самая большая?';

  @override
  String get qSmallest => 'Какая планета самая маленькая?';

  @override
  String get qHottest => 'Какая планета самая горячая?';

  @override
  String get qColdest => 'Какая планета самая холодная?';

  @override
  String get qMostMoons => 'У какой планеты больше всего известных спутников?';

  @override
  String get qBreathable => 'На какой планете люди могут дышать воздухом?';

  @override
  String get qClosest => 'Какая планета ближе всего к Солнцу?';

  @override
  String get qFarthest => 'Какая планета дальше всего от Солнца?';

  @override
  String get qStrongestGravity => 'У какой планеты самая сильная гравитация?';

  @override
  String get qShortestDay => 'У какой планеты самые короткие сутки?';

  @override
  String get qLongestDay => 'У какой планеты самые длинные сутки?';

  @override
  String get appearance => 'Оформление';

  @override
  String get theme => 'Тема';

  @override
  String get themeSystem => 'Системная';

  @override
  String get themeLight => 'Светлая';

  @override
  String get themeDark => 'Тёмная';

  @override
  String get language => 'Язык';

  @override
  String get appLanguage => 'Язык приложения';

  @override
  String get languageNote => '20 языков · и названия планет';

  @override
  String get phoneLanguage => 'Язык телефона';

  @override
  String get updates => 'Обновления';

  @override
  String get version => 'Версия';

  @override
  String get checkForUpdates => 'Проверить обновления';

  @override
  String get checking => 'Проверка…';

  @override
  String get autoUpdateCheck => 'Проверять автоматически раз в день';

  @override
  String get updateNote =>
      'Обновления приходят из GitHub Releases. Ваши настройки остаются на телефоне.';

  @override
  String get upToDate => 'У вас последняя версия.';

  @override
  String get updateFailed =>
      'Не удалось подключиться к GitHub. Проверьте интернет и попробуйте снова.';

  @override
  String get updateAvailable => 'Доступно обновление';

  @override
  String updateReady(String version) {
    return 'Версия $version готова к загрузке.';
  }

  @override
  String get download => 'Скачать';

  @override
  String get later => 'Позже';

  @override
  String get about => 'О приложении';

  @override
  String get sourceCode => 'Исходный код на GitHub';

  @override
  String get privacyLine => 'Офлайн · Без рекламы · Без отслеживания';

  @override
  String get dataSource => 'Данные: NASA Planetary Fact Sheet';

  @override
  String get openFailed => 'Не удалось открыть ссылку.';
}
