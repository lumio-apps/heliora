import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/format.dart';
import '../data/planets.dart';
import '../l10n/names.dart';
import '../theme.dart';
import '../widgets/common.dart';

/// What the user would weigh on every planet.
class WeightScreen extends StatefulWidget {
  const WeightScreen({super.key});

  @override
  State<WeightScreen> createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  final TextEditingController _controller = TextEditingController(text: '70');
  double _kg = 70;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _changed(String text) {
    final value = double.tryParse(text.replaceAll(',', '.'));
    setState(() => _kg = (value == null || value < 0) ? 0 : value);
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = Palette.of(context);
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      children: <Widget>[
        Text(l.weightTitle,
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w700, color: p.text)),
        const SizedBox(height: 16),
        TextField(
          controller: _controller,
          onChanged: _changed,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'[0-9.,]')),
            LengthLimitingTextInputFormatter(6),
          ],
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: p.text),
          decoration: InputDecoration(
            labelText: l.weightInput,
            suffixText: 'kg',
            filled: true,
            fillColor: p.surface,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: p.border),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: p.border),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: p.accentText, width: 1.5),
            ),
          ),
        ),
        const SizedBox(height: 16),
        for (final planet in allBodies) ...<Widget>[
          SurfaceCard(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            borderColor: planet.id == 'earth' ? p.accentText : null,
            child: Row(
              children: <Widget>[
                PlanetBall(planet: planet, size: 32),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(planetName(l, planet),
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: p.text)),
                      Text(
                        l.gravityTimes(formatNumber(
                            context, planet.relativeGravity,
                            decimals: 2)),
                        style: TextStyle(fontSize: 12, color: p.muted),
                      ),
                    ],
                  ),
                ),
                Text(
                  '${formatNumber(context, planet.weightFor(_kg), decimals: 1)} kg',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: p.accentText,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
        ],
      ],
    );
  }
}
