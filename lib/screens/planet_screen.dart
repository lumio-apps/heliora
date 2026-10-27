import 'package:flutter/material.dart';

import '../core/format.dart';
import '../core/habitability.dart';
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

  /// One trip around the Sun, or around its planet for a moon.
  String year(Planet p) {
    if (p.yearDays <= 0) {
      return '–';
    }
    return p.yearDays > 1000
        ? l.valueYears(formatNumber(context, p.yearDays / 365.25, decimals: 1))
        : l.valueDays(formatNumber(context, p.yearDays, decimals: 1));
  }

  String moons(Planet p) => formatNumber(context, p.moons);

  /// Distance from the Sun. A moon uses its planet's distance.
  String distance(Planet p) {
    if (p.isStar) {
      return '–';
    }
    final from = p.isMoon ? planetById(p.parentId ?? 'earth') : p;
    return l.valueMillionKm(
        formatNumber(context, from.distanceMillionKm, decimals: 1));
  }

  /// Distance between a moon and its planet.
  String parentDistance(Planet p) =>
      l.valueKm(formatNumber(context, p.distanceMillionKm * 1e6));

  String relativeGravity(Planet p) =>
      '${formatNumber(context, p.relativeGravity, decimals: 2)} g';

  String pressure(Planet p) {
    final bar = p.pressureBar;
    if (bar == null) {
      return l.noSurface;
    }
    if (bar == 0) {
      return '≈ 0 bar';
    }
    if (bar < 0.001) {
      return '< 0.001 bar';
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
    final moons = moonsOf(planet.id);
    final parentName = planet.isMoon
        ? planetName(l, planetById(planet.parentId ?? 'earth'))
        : '';

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
                    Text(bodySubtitle(l, planet),
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
              if (!planet.isMoon && !planet.isStar)
                StatTile(label: l.moons, value: t.moons(planet)),
              StatTile(label: l.dayLength, value: t.day(planet)),
              if (planet.isMoon)
                StatTile(label: l.orbitPeriod, value: t.year(planet))
              else if (!planet.isStar)
                StatTile(label: l.yearLength, value: t.year(planet)),
              if (planet.isMoon)
                StatTile(
                  label: l.distanceFrom(parentName),
                  value: t.parentDistance(planet),
                )
              else if (!planet.isStar)
                StatTile(label: l.distance, value: t.distance(planet)),
              StatTile(label: l.pressure, value: t.pressure(planet)),
            ],
          ),
          if (moons.isNotEmpty) ...<Widget>[
            const SizedBox(height: 24),
            Text(l.majorMoons,
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w700, color: p.text)),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: <Widget>[
                for (final moon in moons)
                  ActionChip(
                    avatar: PlanetBall(planet: moon, size: 18),
                    label: Text(planetName(l, moon)),
                    labelStyle:
                        TextStyle(color: p.text, fontWeight: FontWeight.w600),
                    backgroundColor: p.surface,
                    side: BorderSide(color: p.border),
                    shape: const StadiumBorder(),
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute<void>(
                          builder: (_) => PlanetScreen(planet: moon)),
                    ),
                  ),
              ],
            ),
          ],
          const SizedBox(height: 24),
          Text(planet.isStar ? l.composition : l.atmosphere,
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w700, color: p.text)),
          const SizedBox(height: 12),
          if (planet.atmosphere.isEmpty)
            Text(l.noAtmosphere,
                style: TextStyle(fontSize: 14, color: p.muted, height: 1.4))
          else
            AtmosphereBar(
              planet: planet,
              labelFor: (share) =>
                  '${gasName(l, share.gas)} (${share.gas.formula}) '
                  '${formatPercent(context, share.percent)}',
            ),
          if (planet.thinAtmosphere && planet.atmosphere.isNotEmpty) ...<Widget>[
            const SizedBox(height: 12),
            Text(l.thinAtmosphere,
                style: TextStyle(fontSize: 13, color: p.muted, height: 1.4)),
          ],
          const SizedBox(height: 16),
          _LifeCard(planet: planet),
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

/// "Could humans live here?" with a 0 to 10 score and the reason for it.
class _LifeCard extends StatelessWidget {
  const _LifeCard({required this.planet});

  final Planet planet;

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = Palette.of(context);
    final t = PlanetText(context);
    final score = lifeScore(planet);
    final total = score.total;
    final color = total >= 8 ? p.good : (total >= 3 ? p.accentText : p.bad);

    String label(LifeFactor f) {
      switch (f) {
        case LifeFactor.temperature:
          return l.avgTemp;
        case LifeFactor.pressure:
          return l.pressure;
        case LifeFactor.oxygen:
          return l.oxygen;
        case LifeFactor.water:
          return l.water;
        case LifeFactor.surface:
          return l.surface;
        case LifeFactor.gravity:
          return l.gravity;
      }
    }

    String value(LifeFactor f) {
      switch (f) {
        case LifeFactor.temperature:
          return t.temperature(planet);
        case LifeFactor.pressure:
          return t.pressure(planet);
        case LifeFactor.oxygen:
          return planet.thinAtmosphere
              ? formatPercent(context, 0)
              : t.oxygen(planet);
        case LifeFactor.water:
          return waterName(l, planet.water);
        case LifeFactor.surface:
          return planet.hasSurface ? l.solidSurface : l.noSurface;
        case LifeFactor.gravity:
          return t.relativeGravity(planet);
      }
    }

    return SurfaceCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(l.lifeTitle,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w700, color: p.text)),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '${formatNumber(context, total)}/${formatNumber(context, LifeScore.maxTotal)}',
                style: TextStyle(
                    fontSize: 34, fontWeight: FontWeight.w700, color: color),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Text(lifeVerdict(l, total),
                    style: TextStyle(
                        fontSize: 14, color: p.text, height: 1.3)),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: LinearProgressIndicator(
              value: total / LifeScore.maxTotal,
              minHeight: 8,
              color: color,
              backgroundColor: p.background,
            ),
          ),
          const SizedBox(height: 12),
          for (final f in score.factors)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: <Widget>[
                  Icon(
                    f.full
                        ? Icons.check_circle
                        : (f.none ? Icons.cancel : Icons.remove_circle),
                    size: 18,
                    color: f.full ? p.good : (f.none ? p.bad : p.accentText),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(label(f.factor),
                        style: TextStyle(fontSize: 13, color: p.muted)),
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Text(value(f.factor),
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: p.text)),
                  ),
                ],
              ),
            ),
          const SizedBox(height: 6),
          Text(l.lifeNote,
              style: TextStyle(fontSize: 12, color: p.muted, height: 1.4)),
        ],
      ),
    );
  }
}
