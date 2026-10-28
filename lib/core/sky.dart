import 'dart:math' as math;

import 'orbits.dart';

/// Sky maths for "Tonight's sky": where the Sun, the Moon and the planets are
/// in the sky of a place on Earth, when they rise and set, and the Moon's
/// phase. Everything runs on the phone, with no internet.
///
/// Planets use the JPL orbits in orbits.dart. The Moon uses Paul Schlyter's
/// "How to compute planetary positions" with its main perturbations, which is
/// good to a fraction of a degree: enough for rise times within a few
/// minutes and phase dates within about an hour.

double _rad(double d) => d * math.pi / 180;
double _deg(double r) => r * 180 / math.pi;
double _norm360(double d) {
  final v = d % 360;
  return v < 0 ? v + 360 : v;
}

/// A direction in the sky as seen from Earth's centre.
class Equatorial {
  const Equatorial(this.ra, this.dec);

  /// Right ascension in degrees.
  final double ra;

  /// Declination in degrees.
  final double dec;
}

/// Where a body is above a place: [altitude] above the horizon and
/// [azimuth] from north towards east, both in degrees.
class Horizontal {
  const Horizontal(this.altitude, this.azimuth);

  final double altitude;
  final double azimuth;
}

/// Tilt of Earth's axis on [jd], in degrees.
double obliquity(double jd) => 23.4393 - 3.563e-7 * (jd - 2451543.5);

Equatorial _fromEcliptic(double x, double y, double z, double jd) {
  final e = _rad(obliquity(jd));
  final xe = x;
  final ye = y * math.cos(e) - z * math.sin(e);
  final ze = y * math.sin(e) + z * math.cos(e);
  return Equatorial(
    _norm360(_deg(math.atan2(ye, xe))),
    _deg(math.atan2(ze, math.sqrt(xe * xe + ye * ye))),
  );
}

/// Geocentric ecliptic longitude of the Sun on [date], in degrees.
double sunLongitude(DateTime date) {
  final e = heliocentricPosition('earth', clampOrbitDate(date));
  return _norm360(_deg(math.atan2(-e.y, -e.x)));
}

/// The Moon's geocentric ecliptic longitude and latitude in degrees.
({double lon, double lat}) moonEcliptic(DateTime date) {
  final d = julianDay(date) - 2451543.5;
  final n = _norm360(125.1228 - 0.0529538083 * d);
  const inc = 5.1454;
  final w = _norm360(318.0634 + 0.1643573223 * d);
  const a = 60.2666;
  const e = 0.054900;
  final m = _norm360(115.3654 + 13.0649929509 * d);

  final mr = _rad(m);
  var ecc = mr + e * math.sin(mr) * (1 + e * math.cos(mr));
  for (var k = 0; k < 8; k++) {
    ecc -= (ecc - e * math.sin(ecc) - mr) / (1 - e * math.cos(ecc));
  }
  final xv = a * (math.cos(ecc) - e);
  final yv = a * math.sqrt(1 - e * e) * math.sin(ecc);
  final v = _deg(math.atan2(yv, xv));
  final r = math.sqrt(xv * xv + yv * yv);

  final nr = _rad(n), vw = _rad(v + w), ir = _rad(inc);
  final xh = r *
      (math.cos(nr) * math.cos(vw) - math.sin(nr) * math.sin(vw) * math.cos(ir));
  final yh = r *
      (math.sin(nr) * math.cos(vw) + math.cos(nr) * math.sin(vw) * math.cos(ir));
  final zh = r * (math.sin(vw) * math.sin(ir));
  var lon = _deg(math.atan2(yh, xh));
  var lat = _deg(math.atan2(zh, math.sqrt(xh * xh + yh * yh)));

  // Main perturbations.
  final ms = _rad(356.0470 + 0.9856002585 * d);
  final ws = 282.9404 + 4.70935e-5 * d;
  final ls = _deg(ms) + ws;
  final lm = m + w + n;
  final dd = _rad(lm - ls);
  final f = _rad(lm - n);
  final mm = mr;
  lon += -1.274 * math.sin(mm - 2 * dd) +
      0.658 * math.sin(2 * dd) -
      0.186 * math.sin(ms) -
      0.059 * math.sin(2 * mm - 2 * dd) -
      0.057 * math.sin(mm - 2 * dd + ms) +
      0.053 * math.sin(mm + 2 * dd) +
      0.046 * math.sin(2 * dd - ms) +
      0.041 * math.sin(mm - ms) -
      0.035 * math.sin(dd) -
      0.031 * math.sin(mm + ms) -
      0.015 * math.sin(2 * f - 2 * dd) +
      0.011 * math.sin(mm - 4 * dd);
  lat += -0.173 * math.sin(f - 2 * dd) -
      0.055 * math.sin(mm - f - 2 * dd) -
      0.046 * math.sin(mm + f - 2 * dd) +
      0.033 * math.sin(f + 2 * dd) +
      0.017 * math.sin(2 * mm + f);
  // Schlyter's elements are for the equinox of the date, the planet orbits
  // for J2000. Undo precession (about 50.3 arcseconds a year) so both match.
  lon -= 0.013970 * (julianDay(date) - 2451545.0) / 365.25;
  return (lon: _norm360(lon), lat: lat);
}

/// Right ascension and declination of 'sun', 'moon' or a planet on [date].
Equatorial equatorialOf(String id, DateTime date) {
  final jd = julianDay(date);
  if (id == 'moon') {
    final m = moonEcliptic(date);
    final lo = _rad(m.lon), la = _rad(m.lat);
    return _fromEcliptic(math.cos(la) * math.cos(lo),
        math.cos(la) * math.sin(lo), math.sin(la), jd);
  }
  final d = clampOrbitDate(date);
  final earth = heliocentricPosition('earth', d);
  if (id == 'sun') {
    return _fromEcliptic(-earth.x, -earth.y, -earth.z, jd);
  }
  final p = heliocentricPosition(id, d);
  return _fromEcliptic(p.x - earth.x, p.y - earth.y, p.z - earth.z, jd);
}

/// Local sidereal time in degrees at longitude [lonDeg] (east positive).
double siderealTime(DateTime date, double lonDeg) {
  final jd = julianDay(date);
  return _norm360(280.46061837 + 360.98564736629 * (jd - 2451545.0) + lonDeg);
}

/// Altitude and azimuth of [eq] seen from [latDeg], [lonDeg] at [date].
Horizontal toHorizontal(
    Equatorial eq, DateTime date, double latDeg, double lonDeg) {
  final h = _rad(siderealTime(date, lonDeg) - eq.ra);
  final phi = _rad(latDeg);
  final dec = _rad(eq.dec);
  final alt = math.asin(math.sin(phi) * math.sin(dec) +
      math.cos(phi) * math.cos(dec) * math.cos(h));
  final az = math.atan2(
    -math.cos(dec) * math.sin(h),
    math.sin(dec) * math.cos(phi) - math.cos(dec) * math.cos(h) * math.sin(phi),
  );
  return Horizontal(_deg(alt), _norm360(_deg(az)));
}

/// Altitude at which a body counts as rising or setting, allowing for air
/// bending the light and, for the Sun and Moon, their size and parallax.
double horizonFor(String id) {
  switch (id) {
    case 'sun':
      return -0.833;
    case 'moon':
      return 0.125;
    default:
      return -0.567;
  }
}

/// One of the eight compass directions, 0 = north, 1 = north-east, ...
int compassIndex(double azimuth) => ((_norm360(azimuth) + 22.5) ~/ 45) % 8;

// ---------------------------------------------------------------- Moon phase

/// Moon phase on [date]: [age] is the Sun to Moon angle in degrees (0 new,
/// 180 full), [lit] the lit part of the disc from 0 to 1.
({double age, double lit}) moonPhase(DateTime date) {
  final m = moonEcliptic(date);
  final s = sunLongitude(date);
  final age = _norm360(m.lon - s);
  final cosE = math.cos(_rad(m.lat)) * math.cos(_rad(m.lon - s));
  return (age: age, lit: (1 - cosE) / 2);
}

/// 0 new, 1 waxing crescent, 2 first quarter, 3 waxing gibbous, 4 full,
/// 5 waning gibbous, 6 last quarter, 7 waning crescent.
int phaseIndex(double age) {
  final a = _norm360(age);
  if (a < 10 || a >= 350) {
    return 0;
  }
  if (a < 80) {
    return 1;
  }
  if (a < 100) {
    return 2;
  }
  if (a < 170) {
    return 3;
  }
  if (a < 190) {
    return 4;
  }
  if (a < 260) {
    return 5;
  }
  if (a < 280) {
    return 6;
  }
  return 7;
}

/// The next moment after [from] when the Moon's age reaches [target]
/// (0 = new moon, 180 = full moon).
DateTime nextPhase(DateTime from, double target) {
  double gap(DateTime t) {
    var g = _norm360(moonPhase(t).age - target);
    if (g > 180) g -= 360;
    return g;
  }

  var a = from.toUtc();
  var ga = gap(a);
  for (var i = 0; i < 140; i++) {
    final b = a.add(const Duration(hours: 6));
    final gb = gap(b);
    if (ga < 0 && gb >= 0) {
      var lo = a, hi = b;
      for (var k = 0; k < 20; k++) {
        final mid = lo.add(Duration(
            milliseconds: hi.difference(lo).inMilliseconds ~/ 2));
        if (gap(mid) < 0) {
          lo = mid;
        } else {
          hi = mid;
        }
      }
      return hi;
    }
    a = b;
    ga = gb;
  }
  return a;
}

// ----------------------------------------------------------- Tonight's sky

/// How a planet can be seen on one night.
enum SkyVisibility { allNight, evening, morning, notVisible }

class BodyNight {
  const BodyNight({
    required this.id,
    this.rise,
    this.set,
    this.bestTime,
    this.bestAltitude = 0,
    this.bestAzimuth = 0,
    this.visibility = SkyVisibility.notVisible,
  });

  final String id;
  final DateTime? rise;
  final DateTime? set;

  /// When it is highest while the sky is dark.
  final DateTime? bestTime;
  final double bestAltitude;
  final double bestAzimuth;
  final SkyVisibility visibility;
}

class SkyTonight {
  const SkyTonight({
    required this.sunset,
    required this.sunrise,
    required this.moon,
    required this.planets,
  });

  final DateTime? sunset;
  final DateTime? sunrise;
  final BodyNight moon;
  final List<BodyNight> planets;
}

/// Planets you can look for, nearest first.
const List<String> skyPlanets = <String>[
  'mercury',
  'venus',
  'mars',
  'jupiter',
  'saturn',
  'uranus',
  'neptune',
];

/// Works out tonight's sky for a place: from 12:00 on [day] (local time of
/// the phone) to 12:00 the next day, in 10 minute steps.
SkyTonight skyTonight(DateTime day, double lat, double lon) {
  final start = DateTime(day.year, day.month, day.day, 12);
  const step = Duration(minutes: 10);
  const steps = 144;
  final times = <DateTime>[
    for (var i = 0; i <= steps; i++) start.add(step * i),
  ];

  List<Horizontal> track(String id) => <Horizontal>[
        for (final t in times) toHorizontal(equatorialOf(id, t), t, lat, lon),
      ];

  DateTime cross(int i, double a0, double a1, double h) {
    final f = (h - a0) / (a1 - a0);
    return times[i].add(Duration(
        milliseconds: (step.inMilliseconds * f.clamp(0.0, 1.0)).round()));
  }

  ({DateTime? rise, DateTime? set}) riseSet(List<Horizontal> tr, double h,
      {DateTime? after}) {
    DateTime? rise, set;
    for (var i = 0; i < steps; i++) {
      if (after != null && times[i + 1].isBefore(after)) {
        continue;
      }
      final a0 = tr[i].altitude, a1 = tr[i + 1].altitude;
      if (rise == null && a0 < h && a1 >= h) {
        rise = cross(i, a0, a1, h);
      }
      if (set == null && a0 >= h && a1 < h) {
        set = cross(i, a0, a1, h);
      }
    }
    return (rise: rise, set: set);
  }

  final sun = track('sun');
  final sunTimes = riseSet(sun, horizonFor('sun'));
  final sunset = sunTimes.set;
  final sunrise = sunset == null
      ? sunTimes.rise
      : riseSet(sun, horizonFor('sun'), after: sunset).rise;

  // Dark enough to see planets: Sun 6 degrees below the horizon.
  final dark = <bool>[for (final s in sun) s.altitude < -6];
  final darkIdx = <int>[
    for (var i = 0; i <= steps; i++)
      if (dark[i]) i,
  ];
  final middle = darkIdx.isEmpty
      ? steps ~/ 2
      : (darkIdx.first + darkIdx.last) ~/ 2;

  BodyNight night(String id) {
    final tr = track(id);
    final rs = riseSet(tr, horizonFor(id));
    final seen = <int>[
      for (var i = 0; i <= steps; i++)
        if (dark[i] && tr[i].altitude > 5) i,
    ];
    if (seen.isEmpty) {
      return BodyNight(id: id, rise: rs.rise, set: rs.set);
    }
    var best = seen.first;
    for (final i in seen) {
      if (tr[i].altitude > tr[best].altitude) {
        best = i;
      }
    }
    final SkyVisibility vis;
    if (seen.last < middle) {
      vis = SkyVisibility.evening;
    } else if (seen.first > middle) {
      vis = SkyVisibility.morning;
    } else {
      vis = SkyVisibility.allNight;
    }
    return BodyNight(
      id: id,
      rise: rs.rise,
      set: rs.set,
      bestTime: times[best],
      bestAltitude: tr[best].altitude,
      bestAzimuth: tr[best].azimuth,
      visibility: vis,
    );
  }

  return SkyTonight(
    sunset: sunset,
    sunrise: sunrise,
    moon: night('moon'),
    planets: <BodyNight>[for (final id in skyPlanets) night(id)],
  );
}

/// The Sun's first rise and set in the 24 hours after [start] at a place.
({DateTime? rise, DateTime? set}) sunRiseSet(
    DateTime start, double lat, double lon) {
  DateTime? rise, set;
  var prev = toHorizontal(equatorialOf('sun', start), start, lat, lon).altitude;
  const h = -0.833;
  for (var m = 2; m <= 1440; m += 2) {
    final t = start.add(Duration(minutes: m));
    final alt = toHorizontal(equatorialOf('sun', t), t, lat, lon).altitude;
    if (rise == null && prev < h && alt >= h) {
      rise = t.subtract(Duration(
          seconds: ((alt - h) / (alt - prev) * 120).round()));
    }
    if (set == null && prev >= h && alt < h) {
      set = t.subtract(Duration(
          seconds: ((h - alt) / (prev - alt) * 120).round()));
    }
    prev = alt;
  }
  return (rise: rise, set: set);
}
