import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/format.dart';
import '../core/orbits.dart';
import '../data/planets.dart';
import '../l10n/names.dart';
import '../state/app_state.dart';
import '../theme.dart';
import '../widgets/common.dart';

/// What the user would weigh, and how old they would be, on other worlds.
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
        const SizedBox(height: 24),
        const _AgeSection(),
      ],
    );
  }
}

/// "Your age on other planets": the user's age in each planet's years and
/// the days until their next birthday there.
class _AgeSection extends StatelessWidget {
  const _AgeSection();

  /// Bodies with a year around the Sun: the planets and Pluto.
  static final List<Planet> _bodies = <Planet>[
    ...planets,
    planetById('pluto'),
  ];

  Future<void> _pick(BuildContext context, DateTime? current) async {
    final state = AppScope.read(context);
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: current ?? DateTime(now.year - 20, now.month, now.day),
      firstDate: DateTime(1900),
      lastDate: now,
    );
    if (picked != null) {
      await state.setBirthDate(
          DateTime(picked.year, picked.month, picked.day, 12));
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = Palette.of(context);
    final saved = AppScope.of(context).settings.birthDate;
    final now = DateTime.now();
    final DateTime? birth =
        saved != null && saved.isBefore(now) ? saved : null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(l.ageTitle,
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w700, color: p.text)),
        const SizedBox(height: 12),
        SurfaceCard(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: <Widget>[
              Icon(Icons.cake_outlined, color: p.accentText),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  birth != null
                      ? MaterialLocalizations.of(context)
                          .formatMediumDate(birth)
                      : l.setBirthDate,
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600, color: p.text),
                ),
              ),
              TextButton(
                onPressed: () => _pick(context, birth),
                child:
                    Text(birth != null ? l.changeBirthDate : l.setBirthDate),
              ),
            ],
          ),
        ),
        const SizedBox(height: 6),
        Text(l.ageNote, style: TextStyle(fontSize: 12, color: p.muted)),
        if (birth != null) ...<Widget>[
          const SizedBox(height: 12),
          for (final body in _bodies) ...<Widget>[
            SurfaceCard(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              borderColor: body.id == 'earth' ? p.accentText : null,
              child: Row(
                children: <Widget>[
                  PlanetBall(planet: body, size: 32),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(planetName(l, body),
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: p.text)),
                        Text(
                          l.nextBirthday(formatNumber(context,
                              daysToNextBirthday(birth, now, body.yearDays))),
                          style: TextStyle(fontSize: 12, color: p.muted),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    l.valueYears(formatNumber(
                        context, ageOn(birth, now, body.yearDays),
                        decimals: body.yearDays > 3000 ? 3 : 1)),
                    style: TextStyle(
                      fontSize: 17,
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
      ],
    );
  }
}
