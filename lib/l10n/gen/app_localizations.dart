import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('gu'),
    Locale('hi'),
    Locale('hy'),
    Locale('id'),
    Locale('ja'),
    Locale('kn'),
    Locale('ml'),
    Locale('mr'),
    Locale('pa'),
    Locale('pt'),
    Locale('ru'),
    Locale('ta'),
    Locale('te'),
    Locale('ur'),
    Locale('zh')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Heliora'**
  String get appTitle;

  /// No description provided for @tagline.
  ///
  /// In en, this message translates to:
  /// **'Explore the Solar System, fully offline'**
  String get tagline;

  /// No description provided for @navExplore.
  ///
  /// In en, this message translates to:
  /// **'Explore'**
  String get navExplore;

  /// No description provided for @navCompare.
  ///
  /// In en, this message translates to:
  /// **'Compare'**
  String get navCompare;

  /// No description provided for @navWeight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get navWeight;

  /// No description provided for @navQuiz.
  ///
  /// In en, this message translates to:
  /// **'Quiz'**
  String get navQuiz;

  /// No description provided for @viewMode.
  ///
  /// In en, this message translates to:
  /// **'View mode'**
  String get viewMode;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @notToScale.
  ///
  /// In en, this message translates to:
  /// **'Not to scale · Tap a planet to open it'**
  String get notToScale;

  /// No description provided for @dragToRotate.
  ///
  /// In en, this message translates to:
  /// **'Drag to rotate · Pinch to zoom'**
  String get dragToRotate;

  /// No description provided for @planetsTitle.
  ///
  /// In en, this message translates to:
  /// **'Planets'**
  String get planetsTitle;

  /// No description provided for @planetMercury.
  ///
  /// In en, this message translates to:
  /// **'Mercury'**
  String get planetMercury;

  /// No description provided for @planetVenus.
  ///
  /// In en, this message translates to:
  /// **'Venus'**
  String get planetVenus;

  /// No description provided for @planetEarth.
  ///
  /// In en, this message translates to:
  /// **'Earth'**
  String get planetEarth;

  /// No description provided for @planetMars.
  ///
  /// In en, this message translates to:
  /// **'Mars'**
  String get planetMars;

  /// No description provided for @planetJupiter.
  ///
  /// In en, this message translates to:
  /// **'Jupiter'**
  String get planetJupiter;

  /// No description provided for @planetSaturn.
  ///
  /// In en, this message translates to:
  /// **'Saturn'**
  String get planetSaturn;

  /// No description provided for @planetUranus.
  ///
  /// In en, this message translates to:
  /// **'Uranus'**
  String get planetUranus;

  /// No description provided for @planetNeptune.
  ///
  /// In en, this message translates to:
  /// **'Neptune'**
  String get planetNeptune;

  /// No description provided for @planetOrder.
  ///
  /// In en, this message translates to:
  /// **'Planet {n} from the Sun'**
  String planetOrder(int n);

  /// No description provided for @openDetails.
  ///
  /// In en, this message translates to:
  /// **'Open details'**
  String get openDetails;

  /// No description provided for @diameter.
  ///
  /// In en, this message translates to:
  /// **'Diameter'**
  String get diameter;

  /// No description provided for @gravity.
  ///
  /// In en, this message translates to:
  /// **'Gravity'**
  String get gravity;

  /// No description provided for @avgTemp.
  ///
  /// In en, this message translates to:
  /// **'Average temperature'**
  String get avgTemp;

  /// No description provided for @avgTempShort.
  ///
  /// In en, this message translates to:
  /// **'Avg temp'**
  String get avgTempShort;

  /// No description provided for @dayLength.
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get dayLength;

  /// No description provided for @yearLength.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get yearLength;

  /// No description provided for @moons.
  ///
  /// In en, this message translates to:
  /// **'Known moons'**
  String get moons;

  /// No description provided for @moonsShort.
  ///
  /// In en, this message translates to:
  /// **'Moons'**
  String get moonsShort;

  /// No description provided for @distance.
  ///
  /// In en, this message translates to:
  /// **'Distance from the Sun'**
  String get distance;

  /// No description provided for @pressure.
  ///
  /// In en, this message translates to:
  /// **'Surface pressure'**
  String get pressure;

  /// No description provided for @noSurface.
  ///
  /// In en, this message translates to:
  /// **'No solid surface'**
  String get noSurface;

  /// No description provided for @valueKm.
  ///
  /// In en, this message translates to:
  /// **'{value} km'**
  String valueKm(String value);

  /// No description provided for @valueMillionKm.
  ///
  /// In en, this message translates to:
  /// **'{value} million km'**
  String valueMillionKm(String value);

  /// No description provided for @valueHours.
  ///
  /// In en, this message translates to:
  /// **'{value} h'**
  String valueHours(String value);

  /// No description provided for @valueDays.
  ///
  /// In en, this message translates to:
  /// **'{value} days'**
  String valueDays(String value);

  /// No description provided for @valueYears.
  ///
  /// In en, this message translates to:
  /// **'{value} years'**
  String valueYears(String value);

  /// No description provided for @atmosphere.
  ///
  /// In en, this message translates to:
  /// **'Atmosphere'**
  String get atmosphere;

  /// No description provided for @thinAtmosphere.
  ///
  /// In en, this message translates to:
  /// **'Almost no atmosphere. These gases form a very thin layer called an exosphere.'**
  String get thinAtmosphere;

  /// No description provided for @oxygen.
  ///
  /// In en, this message translates to:
  /// **'Oxygen'**
  String get oxygen;

  /// No description provided for @oxygenVsEarth.
  ///
  /// In en, this message translates to:
  /// **'Oxygen vs Earth'**
  String get oxygenVsEarth;

  /// No description provided for @breathable.
  ///
  /// In en, this message translates to:
  /// **'Breathable for humans'**
  String get breathable;

  /// No description provided for @notBreathable.
  ///
  /// In en, this message translates to:
  /// **'Not breathable, a spacesuit is needed'**
  String get notBreathable;

  /// No description provided for @weightFeelsLike.
  ///
  /// In en, this message translates to:
  /// **'{weight} kg on Earth feels like'**
  String weightFeelsLike(String weight);

  /// No description provided for @gasCo2.
  ///
  /// In en, this message translates to:
  /// **'Carbon dioxide'**
  String get gasCo2;

  /// No description provided for @gasN2.
  ///
  /// In en, this message translates to:
  /// **'Nitrogen'**
  String get gasN2;

  /// No description provided for @gasO2.
  ///
  /// In en, this message translates to:
  /// **'Oxygen'**
  String get gasO2;

  /// No description provided for @gasAr.
  ///
  /// In en, this message translates to:
  /// **'Argon'**
  String get gasAr;

  /// No description provided for @gasH2.
  ///
  /// In en, this message translates to:
  /// **'Hydrogen'**
  String get gasH2;

  /// No description provided for @gasHe.
  ///
  /// In en, this message translates to:
  /// **'Helium'**
  String get gasHe;

  /// No description provided for @gasCh4.
  ///
  /// In en, this message translates to:
  /// **'Methane'**
  String get gasCh4;

  /// No description provided for @gasNa.
  ///
  /// In en, this message translates to:
  /// **'Sodium'**
  String get gasNa;

  /// No description provided for @gasK.
  ///
  /// In en, this message translates to:
  /// **'Potassium'**
  String get gasK;

  /// No description provided for @compareTitle.
  ///
  /// In en, this message translates to:
  /// **'Compare planets'**
  String get compareTitle;

  /// No description provided for @compareHint.
  ///
  /// In en, this message translates to:
  /// **'Pick two planets to see them side by side.'**
  String get compareHint;

  /// No description provided for @weightTitle.
  ///
  /// In en, this message translates to:
  /// **'Your weight on other planets'**
  String get weightTitle;

  /// No description provided for @weightInput.
  ///
  /// In en, this message translates to:
  /// **'Your weight on Earth (kg)'**
  String get weightInput;

  /// No description provided for @gravityTimes.
  ///
  /// In en, this message translates to:
  /// **'{factor}× Earth\'s gravity'**
  String gravityTimes(String factor);

  /// No description provided for @quizTitle.
  ///
  /// In en, this message translates to:
  /// **'Planet quiz'**
  String get quizTitle;

  /// No description provided for @quizIntro.
  ///
  /// In en, this message translates to:
  /// **'10 questions about the planets. How many can you get right?'**
  String get quizIntro;

  /// No description provided for @quizStart.
  ///
  /// In en, this message translates to:
  /// **'Start quiz'**
  String get quizStart;

  /// No description provided for @quizProgress.
  ///
  /// In en, this message translates to:
  /// **'Question {current} of {total}'**
  String quizProgress(int current, int total);

  /// No description provided for @quizNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get quizNext;

  /// No description provided for @quizSeeResult.
  ///
  /// In en, this message translates to:
  /// **'See result'**
  String get quizSeeResult;

  /// No description provided for @quizCorrect.
  ///
  /// In en, this message translates to:
  /// **'Correct!'**
  String get quizCorrect;

  /// No description provided for @quizWrong.
  ///
  /// In en, this message translates to:
  /// **'Not quite. The answer is {answer}.'**
  String quizWrong(String answer);

  /// No description provided for @quizScore.
  ///
  /// In en, this message translates to:
  /// **'You got {score} of {total}'**
  String quizScore(int score, int total);

  /// No description provided for @quizBest.
  ///
  /// In en, this message translates to:
  /// **'Best score: {score}'**
  String quizBest(int score);

  /// No description provided for @quizNewBest.
  ///
  /// In en, this message translates to:
  /// **'New best score!'**
  String get quizNewBest;

  /// No description provided for @quizAgain.
  ///
  /// In en, this message translates to:
  /// **'Play again'**
  String get quizAgain;

  /// No description provided for @qLargest.
  ///
  /// In en, this message translates to:
  /// **'Which planet is the largest?'**
  String get qLargest;

  /// No description provided for @qSmallest.
  ///
  /// In en, this message translates to:
  /// **'Which planet is the smallest?'**
  String get qSmallest;

  /// No description provided for @qHottest.
  ///
  /// In en, this message translates to:
  /// **'Which planet is the hottest?'**
  String get qHottest;

  /// No description provided for @qColdest.
  ///
  /// In en, this message translates to:
  /// **'Which planet is the coldest?'**
  String get qColdest;

  /// No description provided for @qMostMoons.
  ///
  /// In en, this message translates to:
  /// **'Which planet has the most known moons?'**
  String get qMostMoons;

  /// No description provided for @qBreathable.
  ///
  /// In en, this message translates to:
  /// **'On which planet can humans breathe the air?'**
  String get qBreathable;

  /// No description provided for @qClosest.
  ///
  /// In en, this message translates to:
  /// **'Which planet is closest to the Sun?'**
  String get qClosest;

  /// No description provided for @qFarthest.
  ///
  /// In en, this message translates to:
  /// **'Which planet is farthest from the Sun?'**
  String get qFarthest;

  /// No description provided for @qStrongestGravity.
  ///
  /// In en, this message translates to:
  /// **'Which planet has the strongest gravity?'**
  String get qStrongestGravity;

  /// No description provided for @qShortestDay.
  ///
  /// In en, this message translates to:
  /// **'Which planet has the shortest day?'**
  String get qShortestDay;

  /// No description provided for @qLongestDay.
  ///
  /// In en, this message translates to:
  /// **'Which planet has the longest day?'**
  String get qLongestDay;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @themeSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get themeSystem;

  /// No description provided for @themeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// No description provided for @themeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @appLanguage.
  ///
  /// In en, this message translates to:
  /// **'App language'**
  String get appLanguage;

  /// No description provided for @languageNote.
  ///
  /// In en, this message translates to:
  /// **'20 languages · planet names too'**
  String get languageNote;

  /// No description provided for @phoneLanguage.
  ///
  /// In en, this message translates to:
  /// **'Phone language'**
  String get phoneLanguage;

  /// No description provided for @updates.
  ///
  /// In en, this message translates to:
  /// **'Updates'**
  String get updates;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @checkForUpdates.
  ///
  /// In en, this message translates to:
  /// **'Check for updates'**
  String get checkForUpdates;

  /// No description provided for @checking.
  ///
  /// In en, this message translates to:
  /// **'Checking…'**
  String get checking;

  /// No description provided for @autoUpdateCheck.
  ///
  /// In en, this message translates to:
  /// **'Check automatically once a day'**
  String get autoUpdateCheck;

  /// No description provided for @updateNote.
  ///
  /// In en, this message translates to:
  /// **'Updates come from GitHub Releases. Your settings stay on your phone.'**
  String get updateNote;

  /// No description provided for @upToDate.
  ///
  /// In en, this message translates to:
  /// **'You have the latest version.'**
  String get upToDate;

  /// No description provided for @updateFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not reach GitHub. Check your internet and try again.'**
  String get updateFailed;

  /// No description provided for @updateAvailable.
  ///
  /// In en, this message translates to:
  /// **'Update available'**
  String get updateAvailable;

  /// No description provided for @updateReady.
  ///
  /// In en, this message translates to:
  /// **'Version {version} is ready to download.'**
  String updateReady(String version);

  /// No description provided for @download.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get download;

  /// No description provided for @later.
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get later;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @sourceCode.
  ///
  /// In en, this message translates to:
  /// **'Source code on GitHub'**
  String get sourceCode;

  /// No description provided for @privacyLine.
  ///
  /// In en, this message translates to:
  /// **'Offline · No ads · No tracking'**
  String get privacyLine;

  /// No description provided for @dataSource.
  ///
  /// In en, this message translates to:
  /// **'Facts: NASA Planetary Fact Sheet'**
  String get dataSource;

  /// No description provided for @openFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not open the link.'**
  String get openFailed;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'bn',
        'en',
        'es',
        'fr',
        'gu',
        'hi',
        'hy',
        'id',
        'ja',
        'kn',
        'ml',
        'mr',
        'pa',
        'pt',
        'ru',
        'ta',
        'te',
        'ur',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bn':
      return AppLocalizationsBn();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'gu':
      return AppLocalizationsGu();
    case 'hi':
      return AppLocalizationsHi();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'ja':
      return AppLocalizationsJa();
    case 'kn':
      return AppLocalizationsKn();
    case 'ml':
      return AppLocalizationsMl();
    case 'mr':
      return AppLocalizationsMr();
    case 'pa':
      return AppLocalizationsPa();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'ur':
      return AppLocalizationsUr();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
