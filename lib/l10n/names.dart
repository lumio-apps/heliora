import 'package:flutter/widgets.dart';

import '../core/quiz.dart';
import '../data/planets.dart';
import 'gen/app_localizations.dart';

/// The 20 app languages, shown in their own script in the picker.
const List<(String, String)> appLanguages = <(String, String)>[
  ('en', 'English'),
  ('hi', 'हिन्दी'),
  ('bn', 'বাংলা'),
  ('gu', 'ગુજરાતી'),
  ('kn', 'ಕನ್ನಡ'),
  ('ml', 'മലയാളം'),
  ('mr', 'मराठी'),
  ('pa', 'ਪੰਜਾਬੀ'),
  ('ta', 'தமிழ்'),
  ('te', 'తెలుగు'),
  ('ur', 'اردو'),
  ('ar', 'العربية'),
  ('zh', '中文'),
  ('ja', '日本語'),
  ('es', 'Español'),
  ('fr', 'Français'),
  ('pt', 'Português'),
  ('ru', 'Русский'),
  ('id', 'Bahasa Indonesia'),
  ('hy', 'Հայերեն'),
];

/// Native name of a language code, or the code itself.
String languageName(String code) {
  for (final (c, name) in appLanguages) {
    if (c == code) {
      return name;
    }
  }
  return code;
}

extension HelioraL10n on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}

String planetName(AppLocalizations l, Planet planet) {
  switch (planet.id) {
    case 'mercury':
      return l.planetMercury;
    case 'venus':
      return l.planetVenus;
    case 'earth':
      return l.planetEarth;
    case 'mars':
      return l.planetMars;
    case 'jupiter':
      return l.planetJupiter;
    case 'saturn':
      return l.planetSaturn;
    case 'uranus':
      return l.planetUranus;
    case 'neptune':
      return l.planetNeptune;
  }
  return planet.id;
}

String gasName(AppLocalizations l, Gas gas) {
  switch (gas) {
    case Gas.co2:
      return l.gasCo2;
    case Gas.n2:
      return l.gasN2;
    case Gas.o2:
      return l.gasO2;
    case Gas.ar:
      return l.gasAr;
    case Gas.h2:
      return l.gasH2;
    case Gas.he:
      return l.gasHe;
    case Gas.ch4:
      return l.gasCh4;
    case Gas.na:
      return l.gasNa;
    case Gas.k:
      return l.gasK;
  }
}

String quizQuestionText(AppLocalizations l, QuizKind kind) {
  switch (kind) {
    case QuizKind.largest:
      return l.qLargest;
    case QuizKind.smallest:
      return l.qSmallest;
    case QuizKind.hottest:
      return l.qHottest;
    case QuizKind.coldest:
      return l.qColdest;
    case QuizKind.mostMoons:
      return l.qMostMoons;
    case QuizKind.breathable:
      return l.qBreathable;
    case QuizKind.closest:
      return l.qClosest;
    case QuizKind.farthest:
      return l.qFarthest;
    case QuizKind.strongestGravity:
      return l.qStrongestGravity;
    case QuizKind.shortestDay:
      return l.qShortestDay;
    case QuizKind.longestDay:
      return l.qLongestDay;
  }
}
