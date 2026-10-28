import 'dart:math' as math;

import 'package:flutter/material.dart';

/// The Moon drawn with its lit part for a given phase.
class MoonView extends StatelessWidget {
  const MoonView({
    super.key,
    required this.age,
    required this.lit,
    this.size = 96,
    this.southern = false,
  });

  /// Sun to Moon angle in degrees: 0 new, 180 full.
  final double age;

  /// Lit part of the disc, 0 to 1.
  final double lit;
  final double size;

  /// South of the equator the Moon looks mirrored.
  final bool southern;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: CustomPaint(
        painter: _MoonPainter(
          lit: lit,
          // In the north the waxing Moon is lit on the right.
          litOnRight: (age < 180) != southern,
        ),
      ),
    );
  }
}

class _MoonPainter extends CustomPainter {
  _MoonPainter({required this.lit, required this.litOnRight});

  final double lit;
  final bool litOnRight;

  @override
  void paint(Canvas canvas, Size size) {
    final r = size.width / 2;
    final c = Offset(r, r);
    canvas.drawCircle(c, r, Paint()..color = const Color(0xFF2A2F3E));

    // The lit part is bounded by the limb on one side and the terminator,
    // an ellipse whose width depends on the phase, on the other.
    final k = lit.clamp(0.0, 1.0);
    final side = litOnRight ? 1.0 : -1.0;
    final path = Path();
    const steps = 48;
    for (var i = 0; i <= steps; i++) {
      final t = -math.pi / 2 + math.pi * i / steps;
      final p = c + Offset(side * r * math.cos(t), r * math.sin(t));
      if (i == 0) {
        path.moveTo(p.dx, p.dy);
      } else {
        path.lineTo(p.dx, p.dy);
      }
    }
    for (var i = steps; i >= 0; i--) {
      final t = -math.pi / 2 + math.pi * i / steps;
      path.lineTo(c.dx + side * r * (1 - 2 * k) * math.cos(t),
          c.dy + r * math.sin(t));
    }
    path.close();
    canvas.drawPath(
      path,
      Paint()
        ..shader = const RadialGradient(
          center: Alignment(-0.3, -0.3),
          colors: <Color>[Color(0xFFF4F1E8), Color(0xFFCFCABD)],
        ).createShader(Rect.fromCircle(center: c, radius: r)),
    );

    // A few soft "seas" so it reads as the Moon.
    final seas = Paint()..color = const Color(0x22000000);
    canvas.save();
    canvas.clipPath(path);
    canvas.drawCircle(c + Offset(-0.25 * r, -0.2 * r), 0.22 * r, seas);
    canvas.drawCircle(c + Offset(0.2 * r, -0.3 * r), 0.15 * r, seas);
    canvas.drawCircle(c + Offset(0.05 * r, 0.25 * r), 0.18 * r, seas);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant _MoonPainter oldDelegate) =>
      oldDelegate.lit != lit || oldDelegate.litOnRight != litOnRight;
}
