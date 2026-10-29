import 'dart:math';

import '../data/planets.dart';

/// How hard a quiz is.
enum QuizLevel { easy, medium, hard }

/// The kinds of question the quiz can ask. Each answer is worked out from
/// the planet data (or is a well known fact about one body), so the quiz
/// stays right when the data is updated.
enum QuizKind {
  // Easy
  largest,
  smallest,
  hottest,
  coldest,
  mostMoons,
  breathable,
  closest,
  farthest,
  star,
  dwarf,
  moonVisited,
  // Medium
  strongestGravity,
  shortestDay,
  longestDay,
  largestMoon,
  smallestMoon,
  thickAirMoon,
  geyserMoon,
  volcanicMoon,
  backwardsMoon,
  biggestRocky,
  coldestRocky,
  highestPressure,
  // Hard
  secondLargest,
  longestYear,
  shortestYear,
  smallestGiant,
  rockyLongestYear,
  fastestMoon,
  slowestMoon,
  strongestMoonGravity,
  coldestMoon,
  secondLargestMoon,
}

/// The level a question belongs to.
QuizLevel levelOf(QuizKind kind) {
  final i = kind.index;
  if (i <= QuizKind.moonVisited.index) {
    return QuizLevel.easy;
  }
  if (i <= QuizKind.highestPressure.index) {
    return QuizLevel.medium;
  }
  return QuizLevel.hard;
}

/// All the questions of one level.
List<QuizKind> kindsOf(QuizLevel level) =>
    <QuizKind>[for (final k in QuizKind.values) if (levelOf(k) == level) k];

class QuizQuestion {
  const QuizQuestion(this.kind, this.options, this.answer);

  final QuizKind kind;

  /// Four bodies in random order, one of them is [answer].
  final List<Planet> options;
  final Planet answer;
}

/// The four rocky planets, Mercury to Mars.
List<Planet> get _rocky => planets.where((p) => p.order <= 4).toList();

/// The four giant planets, Jupiter to Neptune.
List<Planet> get _giants => planets.where((p) => p.order >= 5).toList();

/// The moons in the app, including our Moon.
List<Planet> get _moons => allBodies.where((b) => b.isMoon).toList();

Planet _pick(List<Planet> list, num Function(Planet p) value, {bool max = true}) {
  var best = list.first;
  for (final body in list.skip(1)) {
    if (max ? value(body) > value(best) : value(body) < value(best)) {
      best = body;
    }
  }
  return best;
}

double _bar(Planet p) => p.pressureBar ?? 0;

/// The correct body for [kind].
Planet answerFor(QuizKind kind) {
  switch (kind) {
    case QuizKind.largest:
      return _pick(planets, (p) => p.diameterKm);
    case QuizKind.smallest:
      return _pick(planets, (p) => p.diameterKm, max: false);
    case QuizKind.hottest:
      return _pick(planets, (p) => p.meanTempC);
    case QuizKind.coldest:
      return _pick(planets, (p) => p.meanTempC, max: false);
    case QuizKind.mostMoons:
      return _pick(planets, (p) => p.moons);
    case QuizKind.breathable:
      return planets.firstWhere((p) => p.breathable);
    case QuizKind.closest:
      return _pick(planets, (p) => p.distanceMillionKm, max: false);
    case QuizKind.farthest:
      return _pick(planets, (p) => p.distanceMillionKm);
    case QuizKind.star:
      return planetById('sun');
    case QuizKind.dwarf:
      return planetById('pluto');
    case QuizKind.moonVisited:
      return planetById('moon');
    case QuizKind.strongestGravity:
      return _pick(planets, (p) => p.gravity);
    case QuizKind.shortestDay:
      return _pick(planets, (p) => p.dayHours, max: false);
    case QuizKind.longestDay:
      return _pick(planets, (p) => p.dayHours);
    case QuizKind.largestMoon:
      return _pick(_moons, (p) => p.diameterKm);
    case QuizKind.smallestMoon:
      return _pick(_moons, (p) => p.diameterKm, max: false);
    case QuizKind.thickAirMoon:
      return _pick(_moons, _bar);
    case QuizKind.geyserMoon:
      return planetById('enceladus');
    case QuizKind.volcanicMoon:
      return planetById('io');
    case QuizKind.backwardsMoon:
      return planetById('triton');
    case QuizKind.biggestRocky:
      return _pick(_rocky, (p) => p.diameterKm);
    case QuizKind.coldestRocky:
      return _pick(_rocky, (p) => p.meanTempC, max: false);
    case QuizKind.highestPressure:
      return _pick(planets.where((p) => p.hasSurface).toList(), _bar);
    case QuizKind.secondLargest:
      return (List<Planet>.of(planets)
            ..sort((a, b) => b.diameterKm.compareTo(a.diameterKm)))[1];
    case QuizKind.longestYear:
      return _pick(planets, (p) => p.yearDays);
    case QuizKind.shortestYear:
      return _pick(planets, (p) => p.yearDays, max: false);
    case QuizKind.smallestGiant:
      return _pick(_giants, (p) => p.diameterKm, max: false);
    case QuizKind.rockyLongestYear:
      return _pick(_rocky, (p) => p.yearDays);
    case QuizKind.fastestMoon:
      return _pick(_moons, (p) => p.yearDays, max: false);
    case QuizKind.slowestMoon:
      return _pick(_moons, (p) => p.yearDays);
    case QuizKind.strongestMoonGravity:
      return _pick(_moons, (p) => p.gravity);
    case QuizKind.coldestMoon:
      return _pick(_moons, (p) => p.meanTempC, max: false);
    case QuizKind.secondLargestMoon:
      return (_moons..sort((a, b) => b.diameterKm.compareTo(a.diameterKm)))[1];
  }
}

/// The bodies the wrong answers of [kind] are taken from. Never contains
/// another body that would also be a right answer.
List<Planet> distractorsFor(QuizKind kind) {
  switch (kind) {
    case QuizKind.biggestRocky:
    case QuizKind.coldestRocky:
    case QuizKind.rockyLongestYear:
      return _rocky;
    case QuizKind.smallestGiant:
      return _giants;
    case QuizKind.largestMoon:
    case QuizKind.smallestMoon:
    case QuizKind.thickAirMoon:
    case QuizKind.volcanicMoon:
    case QuizKind.backwardsMoon:
    case QuizKind.moonVisited:
    case QuizKind.fastestMoon:
    case QuizKind.slowestMoon:
    case QuizKind.strongestMoonGravity:
    case QuizKind.coldestMoon:
    case QuizKind.secondLargestMoon:
      return _moons;
    case QuizKind.geyserMoon:
      // Europa may have water plumes too, so it is left out.
      return _moons.where((b) => b.id != 'europa').toList();
    default:
      return planets;
  }
}

/// Builds a quiz of up to [count] different questions of [level], with four
/// options each.
List<QuizQuestion> buildQuiz({
  QuizLevel level = QuizLevel.medium,
  int count = 10,
  Random? random,
}) {
  final rng = random ?? Random();
  final kinds = kindsOf(level)..shuffle(rng);
  final questions = <QuizQuestion>[];
  for (final kind in kinds.take(count)) {
    final answer = answerFor(kind);
    final others = distractorsFor(kind).where((p) => p.id != answer.id).toList()
      ..shuffle(rng);
    final options = <Planet>[answer, ...others.take(3)]..shuffle(rng);
    questions.add(QuizQuestion(kind, options, answer));
  }
  return questions;
}
