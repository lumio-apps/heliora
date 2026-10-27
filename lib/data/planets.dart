import 'dart:ui' show Color;

/// The gases that appear in the planets' atmospheres.
enum Gas { co2, n2, o2, ar, h2, he, ch4, na, k }

extension GasFormula on Gas {
  /// Chemical formula shown next to the translated name.
  String get formula {
    switch (this) {
      case Gas.co2:
        return 'CO₂';
      case Gas.n2:
        return 'N₂';
      case Gas.o2:
        return 'O₂';
      case Gas.ar:
        return 'Ar';
      case Gas.h2:
        return 'H₂';
      case Gas.he:
        return 'He';
      case Gas.ch4:
        return 'CH₄';
      case Gas.na:
        return 'Na';
      case Gas.k:
        return 'K';
    }
  }

  /// Colour used for this gas in atmosphere bars.
  Color get color {
    switch (this) {
      case Gas.co2:
        return const Color(0xFFE07A4A);
      case Gas.n2:
        return const Color(0xFF7AA2FF);
      case Gas.o2:
        return const Color(0xFF3CCFB0);
      case Gas.ar:
        return const Color(0xFFB794F6);
      case Gas.h2:
        return const Color(0xFFF2C14E);
      case Gas.he:
        return const Color(0xFFF08BB4);
      case Gas.ch4:
        return const Color(0xFF6CC0CB);
      case Gas.na:
        return const Color(0xFFFF9F43);
      case Gas.k:
        return const Color(0xFFA3A8B8);
    }
  }
}

/// One gas and its share of the atmosphere, in percent by volume.
class GasShare {
  const GasShare(this.gas, this.percent);

  final Gas gas;
  final double percent;
}

/// How the 3D globe draws a planet's surface (see shaders/planet.frag).
enum SurfaceStyle { rocky, earth, banded, ice }

/// Facts about one planet. Values come from the NASA Planetary Fact Sheet;
/// moon counts are NASA's known moons as of mid 2026.
class Planet {
  const Planet({
    required this.id,
    required this.order,
    required this.diameterKm,
    required this.gravity,
    required this.meanTempC,
    required this.dayHours,
    required this.yearDays,
    required this.moons,
    required this.distanceMillionKm,
    required this.pressureBar,
    required this.atmosphere,
    required this.thinAtmosphere,
    required this.color,
    required this.colors,
    required this.style,
    this.hasRings = false,
    this.polarCaps = false,
    this.spot = false,
    this.tiltDeg = 0,
  });

  /// Stable key, also used for translated names and stored settings.
  final String id;

  /// 1 for Mercury up to 8 for Neptune.
  final int order;
  final int diameterKm;

  /// Surface gravity in m/s² (cloud tops for the giant planets).
  final double gravity;
  final int meanTempC;

  /// Length of one solar day in Earth hours.
  final double dayHours;

  /// Length of one year in Earth days.
  final double yearDays;
  final int moons;
  final double distanceMillionKm;

  /// Surface pressure in bar. Null for giant planets without a surface.
  final double? pressureBar;
  final List<GasShare> atmosphere;

  /// True when the "atmosphere" is an almost empty exosphere (Mercury).
  final bool thinAtmosphere;

  /// Main colour, used for dots and cards.
  final Color color;

  /// Three surface colours for the 3D globe.
  final List<Color> colors;
  final SurfaceStyle style;
  final bool hasRings;
  final bool polarCaps;

  /// Jupiter's Great Red Spot.
  final bool spot;

  /// Axial tilt shown on the 3D globe, in degrees.
  final double tiltDeg;

  static const double earthGravity = 9.8;

  /// Share of oxygen in percent, 0 when there is none.
  double get oxygenPercent {
    for (final share in atmosphere) {
      if (share.gas == Gas.o2) {
        return share.percent;
      }
    }
    return 0;
  }

  /// Only Earth has air people can breathe.
  bool get breathable => id == 'earth';

  /// What [earthKg] on Earth would weigh here.
  double weightFor(double earthKg) => earthKg * gravity / earthGravity;

  /// Gravity compared with Earth (1.0 = same as Earth).
  double get relativeGravity => gravity / earthGravity;
}

const List<Planet> planets = <Planet>[
  Planet(
    id: 'mercury',
    order: 1,
    diameterKm: 4879,
    gravity: 3.7,
    meanTempC: 167,
    dayHours: 4222.6,
    yearDays: 88.0,
    moons: 0,
    distanceMillionKm: 57.9,
    pressureBar: 0,
    atmosphere: <GasShare>[
      GasShare(Gas.o2, 42),
      GasShare(Gas.na, 29),
      GasShare(Gas.h2, 22),
      GasShare(Gas.he, 6),
      GasShare(Gas.k, 0.5),
    ],
    thinAtmosphere: true,
    color: Color(0xFF9C9A96),
    colors: <Color>[Color(0xFF8E8A85), Color(0xFF5E5B57), Color(0xFFB9B5AE)],
    style: SurfaceStyle.rocky,
  ),
  Planet(
    id: 'venus',
    order: 2,
    diameterKm: 12104,
    gravity: 8.9,
    meanTempC: 464,
    dayHours: 2802.0,
    yearDays: 224.7,
    moons: 0,
    distanceMillionKm: 108.2,
    pressureBar: 92,
    atmosphere: <GasShare>[
      GasShare(Gas.co2, 96.5),
      GasShare(Gas.n2, 3.5),
    ],
    thinAtmosphere: false,
    color: Color(0xFFE3C07B),
    colors: <Color>[Color(0xFFE8C98A), Color(0xFFC99A52), Color(0xFFF3E1B4)],
    style: SurfaceStyle.banded,
    tiltDeg: 3,
  ),
  Planet(
    id: 'earth',
    order: 3,
    diameterKm: 12756,
    gravity: 9.8,
    meanTempC: 15,
    dayHours: 24.0,
    yearDays: 365.2,
    moons: 1,
    distanceMillionKm: 149.6,
    pressureBar: 1,
    atmosphere: <GasShare>[
      GasShare(Gas.n2, 78.08),
      GasShare(Gas.o2, 20.95),
      GasShare(Gas.ar, 0.93),
      GasShare(Gas.co2, 0.04),
    ],
    thinAtmosphere: false,
    color: Color(0xFF3E7BD6),
    colors: <Color>[Color(0xFF1F5FB8), Color(0xFF4E9A5B), Color(0xFFB59B6A)],
    style: SurfaceStyle.earth,
    polarCaps: true,
    tiltDeg: 23.4,
  ),
  Planet(
    id: 'mars',
    order: 4,
    diameterKm: 6792,
    gravity: 3.7,
    meanTempC: -65,
    dayHours: 24.7,
    yearDays: 687.0,
    moons: 2,
    distanceMillionKm: 228.0,
    pressureBar: 0.006,
    atmosphere: <GasShare>[
      GasShare(Gas.co2, 95.1),
      GasShare(Gas.n2, 2.59),
      GasShare(Gas.ar, 1.94),
      GasShare(Gas.o2, 0.16),
    ],
    thinAtmosphere: false,
    color: Color(0xFFC1440E),
    colors: <Color>[Color(0xFFC1561E), Color(0xFF7A2A08), Color(0xFFDB8A55)],
    style: SurfaceStyle.rocky,
    polarCaps: true,
    tiltDeg: 25.2,
  ),
  Planet(
    id: 'jupiter',
    order: 5,
    diameterKm: 142984,
    gravity: 23.1,
    meanTempC: -110,
    dayHours: 9.9,
    yearDays: 4331,
    moons: 115,
    distanceMillionKm: 778.5,
    pressureBar: null,
    atmosphere: <GasShare>[
      GasShare(Gas.h2, 89.8),
      GasShare(Gas.he, 10.2),
    ],
    thinAtmosphere: false,
    color: Color(0xFFD2A679),
    colors: <Color>[Color(0xFFE6CFA8), Color(0xFFB07A4F), Color(0xFFF4EBDD)],
    style: SurfaceStyle.banded,
    spot: true,
    tiltDeg: 3.1,
  ),
  Planet(
    id: 'saturn',
    order: 6,
    diameterKm: 120536,
    gravity: 9.0,
    meanTempC: -140,
    dayHours: 10.7,
    yearDays: 10747,
    moons: 293,
    distanceMillionKm: 1432.0,
    pressureBar: null,
    atmosphere: <GasShare>[
      GasShare(Gas.h2, 96.3),
      GasShare(Gas.he, 3.25),
      GasShare(Gas.ch4, 0.45),
    ],
    thinAtmosphere: false,
    color: Color(0xFFE5CF94),
    colors: <Color>[Color(0xFFE9D59E), Color(0xFFC6A766), Color(0xFFF5E9C6)],
    style: SurfaceStyle.banded,
    hasRings: true,
    tiltDeg: 26.7,
  ),
  Planet(
    id: 'uranus',
    order: 7,
    diameterKm: 51118,
    gravity: 8.7,
    meanTempC: -195,
    dayHours: 17.2,
    yearDays: 30589,
    moons: 29,
    distanceMillionKm: 2867.0,
    pressureBar: null,
    atmosphere: <GasShare>[
      GasShare(Gas.h2, 82.5),
      GasShare(Gas.he, 15.2),
      GasShare(Gas.ch4, 2.3),
    ],
    thinAtmosphere: false,
    color: Color(0xFF8FD3DC),
    colors: <Color>[Color(0xFF9EDCE3), Color(0xFF7BC4CF), Color(0xFFC6EEF1)],
    style: SurfaceStyle.ice,
    tiltDeg: 82,
  ),
  Planet(
    id: 'neptune',
    order: 8,
    diameterKm: 49528,
    gravity: 11.0,
    meanTempC: -200,
    dayHours: 16.1,
    yearDays: 59800,
    moons: 16,
    distanceMillionKm: 4515.0,
    pressureBar: null,
    atmosphere: <GasShare>[
      GasShare(Gas.h2, 80),
      GasShare(Gas.he, 19),
      GasShare(Gas.ch4, 1.5),
    ],
    thinAtmosphere: false,
    color: Color(0xFF4A6FE3),
    colors: <Color>[Color(0xFF3F64D6), Color(0xFF2A47A8), Color(0xFF7D9BF0)],
    style: SurfaceStyle.ice,
    tiltDeg: 28.3,
  ),
];

/// Finds a planet by [id], falling back to Earth.
Planet planetById(String id) {
  for (final planet in planets) {
    if (planet.id == id) {
      return planet;
    }
  }
  return planets[2];
}
