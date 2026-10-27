import 'dart:math';

import '../data/planets.dart';

/// The kinds of question the quiz can ask. Each answer is worked out from
/// the planet data, so the quiz stays right when the data is updated.
enum QuizKind {
  largest,
  smallest,
  hottest,
  coldest,
  mostMoons,
  breathable,
  closest,
  farthest,
  strongestGravity,
  shortestDay,
  longestDay,
}

class QuizQuestion {
  const QuizQuestion(this.kind, this.options, this.answer);

  final QuizKind kind;

  /// Four planets in random order, one of them is [answer].
  final List<Planet> options;
  final Planet answer;
}

Planet _best(int Function(Planet a, Planet b) compare) {
  var best = planets.first;
  for (final planet in planets.skip(1)) {
    if (compare(planet, best) > 0) {
      best = planet;
    }
  }
  return best;
}

/// The correct planet for [kind].
Planet answerFor(QuizKind kind) {
  switch (kind) {
    case QuizKind.largest:
      return _best((a, b) => a.diameterKm.compareTo(b.diameterKm));
    case QuizKind.smallest:
      return _best((a, b) => b.diameterKm.compareTo(a.diameterKm));
    case QuizKind.hottest:
      return _best((a, b) => a.meanTempC.compareTo(b.meanTempC));
    case QuizKind.coldest:
      return _best((a, b) => b.meanTempC.compareTo(a.meanTempC));
    case QuizKind.mostMoons:
      return _best((a, b) => a.moons.compareTo(b.moons));
    case QuizKind.breathable:
      return planets.firstWhere((p) => p.breathable);
    case QuizKind.closest:
      return _best(
          (a, b) => b.distanceMillionKm.compareTo(a.distanceMillionKm));
    case QuizKind.farthest:
      return _best(
          (a, b) => a.distanceMillionKm.compareTo(b.distanceMillionKm));
    case QuizKind.strongestGravity:
      return _best((a, b) => a.gravity.compareTo(b.gravity));
    case QuizKind.shortestDay:
      return _best((a, b) => b.dayHours.compareTo(a.dayHours));
    case QuizKind.longestDay:
      return _best((a, b) => a.dayHours.compareTo(b.dayHours));
  }
}

/// Builds a quiz of [count] different questions with four options each.
List<QuizQuestion> buildQuiz({int count = 10, Random? random}) {
  final rng = random ?? Random();
  final kinds = List<QuizKind>.of(QuizKind.values)..shuffle(rng);
  final questions = <QuizQuestion>[];
  for (final kind in kinds.take(count)) {
    final answer = answerFor(kind);
    final others = planets.where((p) => p.id != answer.id).toList()
      ..shuffle(rng);
    final options = <Planet>[answer, ...others.take(3)]..shuffle(rng);
    questions.add(QuizQuestion(kind, options, answer));
  }
  return questions;
}
