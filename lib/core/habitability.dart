import '../data/planets.dart';

/// The things that decide whether people could live somewhere.
enum LifeFactor { temperature, pressure, oxygen, water, surface, gravity }

/// Points for one factor. [max] points means "like Earth".
class FactorScore {
  const FactorScore(this.factor, this.points, this.max);

  final LifeFactor factor;
  final int points;
  final int max;

  bool get full => points == max;
  bool get none => points == 0;
}

/// A simple 0 to 10 score of how livable a body is for humans. Earth gets 10.
/// It is a teaching aid, not science: it only looks at six easy-to-explain
/// conditions.
class LifeScore {
  const LifeScore(this.factors);

  final List<FactorScore> factors;

  int get total => factors.fold<int>(0, (sum, f) => sum + f.points);

  static const int maxTotal = 10;
}

LifeScore lifeScore(Planet body) {
  final temp = body.meanTempC;
  final int tempPoints = temp >= -20 && temp <= 40
      ? 2
      : (temp >= -80 && temp <= 80 ? 1 : 0);

  final bar = body.pressureBar ?? 0;
  final int pressurePoints = !body.hasSurface
      ? 0
      : (bar >= 0.5 && bar <= 2
          ? 2
          : ((bar >= 0.06 && bar < 0.5) || (bar > 2 && bar <= 5) ? 1 : 0));

  final oxygen = body.thinAtmosphere ? 0.0 : body.oxygenPercent;
  final int oxygenPoints =
      oxygen >= 15 && oxygen <= 30 ? 2 : (oxygen >= 1 ? 1 : 0);

  final int waterPoints;
  switch (body.water) {
    case Water.liquid:
      waterPoints = 2;
    case Water.ice:
    case Water.ocean:
      waterPoints = 1;
    case Water.none:
      waterPoints = 0;
  }

  final int surfacePoints = body.hasSurface ? 1 : 0;

  final g = body.relativeGravity;
  final int gravityPoints = g >= 0.3 && g <= 2 ? 1 : 0;

  return LifeScore(<FactorScore>[
    FactorScore(LifeFactor.temperature, tempPoints, 2),
    FactorScore(LifeFactor.pressure, pressurePoints, 2),
    FactorScore(LifeFactor.oxygen, oxygenPoints, 2),
    FactorScore(LifeFactor.water, waterPoints, 2),
    FactorScore(LifeFactor.surface, surfacePoints, 1),
    FactorScore(LifeFactor.gravity, gravityPoints, 1),
  ]);
}
