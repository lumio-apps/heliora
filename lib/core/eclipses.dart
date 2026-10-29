import 'dart:math' as math;

import 'orbits.dart';
import 'sky.dart';

/// Solar and lunar eclipses, worked out on the phone from the same Sun and
/// Moon positions as the rest of the app. Checked against the official
/// eclipse lists for 2022 to 2029: times agree within a few minutes and the
/// type is right. It is a light method, so very thin partial eclipses at the
/// edge of what is possible can be missed or added.

enum EclipseType { total, annular, hybrid, partial, penumbral }

class Eclipse {
  const Eclipse({
    required this.lunar,
    required this.time,
    required this.type,
    required this.magnitude,
  });

  /// True for a lunar eclipse, false for a solar eclipse.
  final bool lunar;

  /// The middle of the eclipse (UTC), good to a few minutes.
  final DateTime time;

  final EclipseType type;

  /// Lunar: how much of the Moon's width is inside Earth's dark shadow
  /// (1 or more is total); for a penumbral eclipse the half-shadow instead.
  /// Solar: how far the Moon's shadow axis passes from Earth's centre, in
  /// Earth radii (below 1 the shadow hits Earth's middle).
  final double magnitude;
}

double _rad(double d) => d * math.pi / 180;
double _deg(double r) => r * 180 / math.pi;

double _sunDistanceAu(DateTime t) {
  final e = heliocentricPosition('earth', clampOrbitDate(t));
  return math.sqrt(e.x * e.x + e.y * e.y + e.z * e.z);
}

/// Angle in degrees between the Moon and the point [sunSide] degrees of
/// longitude from the Sun (0 = the Sun, 180 = the shadow of Earth).
double _moonSeparation(DateTime t, double sunSide) {
  final m = moonEcliptic(t);
  final c = math.cos(_rad(m.lat)) *
      math.cos(_rad(m.lon - (sunLongitude(t) + sunSide)));
  return _deg(math.acos(c.clamp(-1.0, 1.0).toDouble()));
}

DateTime _at(int ms) => DateTime.fromMillisecondsSinceEpoch(ms, isUtc: true);

/// The moment between [a] and [b] where [f] is smallest.
DateTime _lowest(double Function(DateTime) f, DateTime a, DateTime b) {
  var lo = a.millisecondsSinceEpoch;
  var hi = b.millisecondsSinceEpoch;
  for (var i = 0; i < 40; i++) {
    final third = (hi - lo) ~/ 3;
    final m1 = lo + third;
    final m2 = hi - third;
    if (f(_at(m1)) < f(_at(m2))) {
      hi = m2;
    } else {
      lo = m1;
    }
  }
  return _at(lo + (hi - lo) ~/ 2);
}

/// Angular radius of the Moon in degrees.
double _moonRadius(double distance) =>
    _deg(math.asin(1737.4 / (distance * 6378.14)));

/// All eclipses with their middle in [from] (inclusive) to [to] (exclusive),
/// earliest first.
List<Eclipse> computeEclipses(DateTime from, DateTime to) {
  final begin = from.toUtc(), end = to.toUtc();
  final out = <Eclipse>[];

  for (final lunar in <bool>[false, true]) {
    // Eclipses only happen at new Moon (solar) and full Moon (lunar).
    var t = begin.subtract(const Duration(days: 2));
    while (true) {
      t = nextPhase(t, lunar ? 180.0 : 0.0);
      if (t.isAfter(end.add(const Duration(days: 2)))) {
        break;
      }
      final side = lunar ? 180.0 : 0.0;
      final mid = _lowest((x) => _moonSeparation(x, side),
          t.subtract(const Duration(hours: 12)), t.add(const Duration(hours: 12)));
      t = t.add(const Duration(days: 2));
      if (mid.isBefore(begin) || !mid.isBefore(end)) {
        continue;
      }
      final sep = _moonSeparation(mid, side);
      final r = moonDistance(mid);
      final parallax = _deg(math.asin(1 / r));
      final moonR = _moonRadius(r);
      final sunAu = _sunDistanceAu(mid);
      final sunR = 0.2666 / sunAu;
      if (!lunar) {
        final gamma = sep / parallax;
        if (gamma >= 1.55) {
          continue;
        }
        final EclipseType type;
        if (gamma < 0.9972) {
          final ratio = moonR / sunR;
          type = (ratio - 1).abs() < 0.004
              ? EclipseType.hybrid
              : (ratio > 1 ? EclipseType.total : EclipseType.annular);
        } else {
          type = EclipseType.partial;
        }
        out.add(Eclipse(
            lunar: false, time: mid, type: type, magnitude: gamma));
      } else {
        final sunParallax = 0.00244 / sunAu;
        final umbra = 1.02 * (parallax + sunParallax - sunR);
        final penumbra = 1.02 * (parallax + sunParallax + sunR);
        final umbral = (umbra + moonR - sep) / (2 * moonR);
        final penumbral = (penumbra + moonR - sep) / (2 * moonR);
        if (umbral >= 1) {
          out.add(Eclipse(
              lunar: true,
              time: mid,
              type: EclipseType.total,
              magnitude: umbral));
        } else if (umbral > 0) {
          out.add(Eclipse(
              lunar: true,
              time: mid,
              type: EclipseType.partial,
              magnitude: umbral));
        } else if (penumbral >= 0.3) {
          // Fainter than this the Moon only dims a little: not worth listing.
          out.add(Eclipse(
              lunar: true,
              time: mid,
              type: EclipseType.penumbral,
              magnitude: penumbral));
        }
      }
    }
  }
  out.sort((a, b) => a.time.compareTo(b.time));
  return out;
}

/// How a lunar eclipse looks from a place.
enum LunarView { up, partly, down }

/// Is the Moon above the horizon at the middle of [eclipse], during part of
/// the eclipse (two hours either side), or not at all?
LunarView lunarView(Eclipse eclipse, double lat, double lon) {
  double alt(DateTime t) =>
      toHorizontal(equatorialOf('moon', t), t, lat, lon).altitude;
  if (alt(eclipse.time) > 0) {
    return LunarView.up;
  }
  for (var m = -120; m <= 120; m += 10) {
    if (alt(eclipse.time.add(Duration(minutes: m))) > 0) {
      return LunarView.partly;
    }
  }
  return LunarView.down;
}

/// The most of the Sun's width the Moon covers at a place during a solar
/// eclipse, counting only the minutes the Sun is above the horizon. Negative
/// when the Moon passes clear of the Sun there, null when the Sun stays
/// below the horizon. About 0.06 uncertain, so treat it as a rough guide.
double? solarLocalMagnitude(Eclipse eclipse, double lat, double lon) {
  double? best;
  for (var m = -180; m <= 180; m += 5) {
    final t = eclipse.time.add(Duration(minutes: m));
    final sun = toHorizontal(equatorialOf('sun', t), t, lat, lon);
    if (sun.altitude <= 0) {
      continue;
    }
    final moon = toHorizontal(equatorialOf('moon', t), t, lat, lon);
    final r = moonDistance(t);
    final sunAu = _sunDistanceAu(t);
    // Seen from the ground the Moon sits lower than from Earth's centre.
    final moonAlt = moon.altitude -
        _deg(math.asin(1 / r)) * math.cos(_rad(moon.altitude));
    final sunAlt = sun.altitude -
        0.00244 / sunAu * math.cos(_rad(sun.altitude));
    final a1 = _rad(moonAlt), a2 = _rad(sunAlt);
    final c = math.sin(a1) * math.sin(a2) +
        math.cos(a1) * math.cos(a2) * math.cos(_rad(moon.azimuth - sun.azimuth));
    final sep = _deg(math.acos(c.clamp(-1.0, 1.0).toDouble()));
    final sunR = 0.2666 / sunAu;
    final mag = (sunR + _moonRadius(r) - sep) / (2 * sunR);
    if (best == null || mag > best) {
      best = mag;
    }
  }
  return best;
}
