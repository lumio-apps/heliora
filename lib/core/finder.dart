import 'dart:math' as math;

/// Smallest signed turn from [from] to [to] in degrees, between -180 and
/// 180. Positive means turn right (clockwise seen from above).
double turnAngle(double from, double to) {
  var d = (to - from) % 360;
  if (d > 180) {
    d -= 360;
  } else if (d < -180) {
    d += 360;
  }
  return d;
}

/// How far the phone is from pointing at a target.
class Guidance {
  const Guidance(this.turn, this.tilt);

  /// Degrees to turn: positive = right, negative = left.
  final double turn;

  /// Degrees to tilt: positive = raise the phone, negative = lower it.
  final double tilt;

  /// Angle between where the phone points and the target, in degrees.
  double get offBy => math.sqrt(turn * turn + tilt * tilt);

  /// Close enough to count as found.
  bool get onTarget => offBy <= 6;
}

Guidance guide({
  required double phoneAzimuth,
  required double phoneAltitude,
  required double targetAzimuth,
  required double targetAltitude,
}) {
  // Near the zenith a turn of many degrees is a small move, so turns are
  // scaled by how high the phone points.
  final scale = math.cos(phoneAltitude * math.pi / 180).abs();
  return Guidance(
    turnAngle(phoneAzimuth, targetAzimuth) * scale,
    targetAltitude - phoneAltitude,
  );
}

/// Smooths noisy compass readings. Angles are averaged as vectors so that
/// 359° and 1° average to 0°, not 180°.
class DirectionSmoother {
  DirectionSmoother({this.factor = 0.2});

  final double factor;
  double? _x;
  double? _y;
  double? _alt;

  ({double azimuth, double altitude}) add(double azimuth, double altitude) {
    final a = azimuth * math.pi / 180;
    final x = math.sin(a), y = math.cos(a);
    if (_x == null) {
      _x = x;
      _y = y;
      _alt = altitude;
    } else {
      _x = _x! + (x - _x!) * factor;
      _y = _y! + (y - _y!) * factor;
      _alt = _alt! + (altitude - _alt!) * factor;
    }
    var az = math.atan2(_x!, _y!) * 180 / math.pi;
    if (az < 0) {
      az += 360;
    }
    return (azimuth: az, altitude: _alt!);
  }
}
