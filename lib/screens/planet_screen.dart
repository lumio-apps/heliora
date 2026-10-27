import 'package:flutter/material.dart';

import '../core/format.dart';
import '../data/planets.dart';
import '../l10n/gen/app_localizations.dart';
import '../l10n/names.dart';
import '../theme.dart';
import '../widgets/common.dart';

/// Text helpers shared by the planet and compare screens.
class PlanetText {
  PlanetText(this.context) : l = context.l10n;

  final BuildContext context;
  final AppLocalizations l;

  String diameter(Planet p) =>
      l.valueKm(formatNumber(context, p.diameterKm));

  String gravity(Planet p) =>
      '${formatNumber(context, p.gravity, decimals: 1)} m/s² '
      '(${formatNumber(context, p.relativeGravity, decimals: 2)} g)';

  String temperature(Planet p) => '${formatNumber(context, p.meanTempC)} °C';

  String day(Planet p) => p.dayHours > 48
      ? l.valueDays(formatNumber(context, p.dayHours / 24, decimals: 1))
      : l.valueHours(formatNumber(context, p.dayHours, decimals: 1));

  String year(Planet p) => p.yearDays > 1000
      ? l.valueYears(formatNumber(context, p.yearDays / 365.25, decimals: 1))
      : l.valueDays(formatNumber(context, p.yearDays, decimals: 1));

  String moons(Planet p) => formatNumber(context, p.moons);

  String distance(Planet p) => l.valueMillionKm(
      formatNumber(context, p.distanceMillionKm, decimals: 1));

  String pressure(Planet p) {
    final bar = p.pressureBar;
    if (bar == null) {
      return l.noSurface;
    }
    if (bar == 0) {
      return '≈ 0 bar';
    }
    return '${formatNumber(context, bar, decimals: 3)} bar';
  }

  String oxygen(Planet p) => formatPercent(context, p.oxygenPercent);
}

class PlanetScreen extends StatelessWidget {
  const PlanetScreen({super.key, required this.planet});

  final Planet planet;

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = Palette.of(context);
    final t = PlanetText(context);
    final earth = planetById('earth');

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
        children: <Widget>[
          Row(
            children: <Widget>[
              PlanetBall(planet: planet, size: 88),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      planetName(l, planet),
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: p.text,
                        height: 1.1,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(l.planetOrder(planet.order),
                        style: TextStyle(fontSize: 14, color: p.muted)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1.8,
            children: <Widget>[
              StatTile(label: l.diameter, value: t.diameter(planet)),
              StatTile(label: l.gravity, value: t.gravity(planet)),
              StatTile(label: l.avgTemp, value: t.temperature(planet)),
              StatTile(label: l.moons, value: t.moons(planet)),
              StatTile(label: l.dayLength, value: t.day(planet)),
              StatTile(label: l.yearLength, value: t.year(planet)),
              StatTile(label: l.distance, value: t.distance(planet)),
              StatTile(label: l.pressure, value: t.pressure(planet)),
            ],
          ),
          const SizedBox(height: 24),
          Text(l.atmosphere,
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w700, color: p.text)),
          const SizedBox(height: 12),
          AtmosphereBar(
            planet: planet,
            labelFor: (share) =>
                '${gasName(l, share.gas)} (${share.gas.formula}) '
                '${formatPercent(context, share.percent)}',
          ),
          if (planet.thinAtmosphere) ...<Widget>[
            const SizedBox(height: 12),
            Text(l.thinAtmosphere,
                style: TextStyle(fontSize: 13, color: p.muted, height: 1.4)),
          ],
          const SizedBox(height: 16),
          SurfaceCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(l.oxygenVsEarth,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: p.text)),
                if (!planet.thinAtmosphere) ...<Widget>[
                  const SizedBox(height: 12),
                  _OxygenRow(
                    label: planetName(l, planet),
                    percent: planet.oxygenPercent,
                    text: t.oxygen(planet),
                  ),
                  if (planet.id != 'earth') ...<Widget>[
                    const SizedBox(height: 8),
                    _OxygenRow(
                      label: planetName(l, earth),
                      percent: earth.oxygenPercent,
                      text: t.oxygen(earth),
                    ),
                  ],
                ],
                const SizedBox(height: 12),
                Row(
                  children: <Widget>[
                    Icon(planet.breathable ? Icons.check : Icons.close,
                        size: 18, color: planet.breathable ? p.good : p.bad),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        planet.breathable ? l.breathable : l.notBreathable,
                        style: TextStyle(
                            fontSize: 13,
                            color: planet.breathable ? p.good : p.bad),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          SurfaceCard(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(l.weightFeelsLike(formatNumber(context, 70)),
                      style: TextStyle(fontSize: 14, color: p.muted)),
                ),
                const SizedBox(width: 8),
                Text(
                  '${formatNumber(context, planet.weightFor(70), decimals: 1)} kg',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: p.accentText,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(l.dataSource,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: p.muted)),
        ],
      ),
    );
  }
}

class _OxygenRow extends StatelessWidget {
  const _OxygenRow({
    required this.label,
    required this.percent,
    required this.text,
  });

  final String label;
  final double percent;
  final String text;

  /// Bars are scaled so Earth's 20.95% fills the track.
  static const double _full = 20.95;

  @override
  Widget build(BuildContext context) {
    final p = Palette.of(context);
    final fraction = (percent / _full).clamp(0.0, 1.0).toDouble();
    return Row(
      children: <Widget>[
        SizedBox(
          width: 72,
          child: Text(label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 13, color: p.muted)),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: Container(
              height: 10,
              color: p.background,
              alignment: AlignmentDirectional.centerStart,
              child: FractionallySizedBox(
                widthFactor:
                    percent > 0 ? fraction.clamp(0.02, 1.0).toDouble() : 0.0,
                child: Container(color: Gas.o2.color),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        SizedBox(
          width: 60,
          child: Text(text,
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontSize: 13, fontWeight: FontWeight.w600, color: p.text)),
        ),
      ],
    );
  }
}
