import 'package:flutter/material.dart';

import '../core/format.dart';
import '../core/sky.dart';
import '../data/cities.dart';
import '../data/planets.dart';
import '../l10n/gen/app_localizations.dart';
import '../l10n/names.dart';
import '../state/app_state.dart';
import '../theme.dart';
import '../widgets/common.dart';
import '../widgets/moon_view.dart';

/// "Tonight's sky": the Moon's phase and which planets can be seen tonight
/// from the chosen city, with rise and set times.
class SkyScreen extends StatefulWidget {
  const SkyScreen({super.key});

  @override
  State<SkyScreen> createState() => _SkyScreenState();
}

class _SkyScreenState extends State<SkyScreen> {
  SkyTonight? _sky;
  String _skyKey = '';

  ({double age, double lit})? _phase;
  DateTime? _nextFull;
  DateTime? _nextNew;

  /// Works the sky out once per city and day, not on every rebuild.
  void _compute(City city) {
    final now = DateTime.now();
    final key = '${city.id}-${now.year}-${now.month}-${now.day}';
    if (key == _skyKey) {
      return;
    }
    _skyKey = key;
    _sky = skyTonight(now, city.lat, city.lon);
    _phase = moonPhase(now);
    _nextFull = nextPhase(now, 180).toLocal();
    _nextNew = nextPhase(now, 0).toLocal();
  }

  Future<void> _pickCity() async {
    final state = AppScope.read(context);
    final picked = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (_) => const _CitySheet(),
    );
    if (picked != null) {
      await state.setCity(picked);
    }
  }

  String _time(DateTime? t) {
    if (t == null) {
      return '–';
    }
    return MaterialLocalizations.of(context)
        .formatTimeOfDay(TimeOfDay.fromDateTime(t.toLocal()));
  }

  String _date(DateTime? t) => t == null
      ? '–'
      : MaterialLocalizations.of(context).formatMediumDate(t.toLocal());

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = Palette.of(context);
    final city = cityById(AppScope.of(context).settings.cityId);

    final header = Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(l.skyTitle,
                style: TextStyle(
                    fontSize: 26, fontWeight: FontWeight.w700, color: p.text)),
          ),
          if (city != null)
            ActionChip(
              avatar: Icon(Icons.place_outlined, size: 18, color: p.accentText),
              label: Text(city.name),
              labelStyle:
                  TextStyle(color: p.text, fontWeight: FontWeight.w600),
              backgroundColor: p.surface,
              side: BorderSide(color: p.border),
              shape: const StadiumBorder(),
              onPressed: _pickCity,
            ),
        ],
      ),
    );

    if (city == null) {
      return ListView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
        children: <Widget>[
          header,
          SurfaceCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Icon(Icons.nights_stay_outlined, size: 48, color: p.accentText),
                const SizedBox(height: 12),
                Text(l.chooseCityHint,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: p.text, height: 1.4)),
                const SizedBox(height: 16),
                FilledButton.icon(
                  style: FilledButton.styleFrom(
                      minimumSize: const Size.fromHeight(48)),
                  onPressed: _pickCity,
                  icon: const Icon(Icons.place_outlined),
                  label: Text(l.chooseCity),
                ),
              ],
            ),
          ),
        ],
      );
    }

    _compute(city);
    final sky = _sky!;
    final phase = _phase!;

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      children: <Widget>[
        header,
        // The Moon tonight.
        SurfaceCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  MoonView(
                    age: phase.age,
                    lit: phase.lit,
                    size: 88,
                    southern: city.lat < 0,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(_phaseName(l, phaseIndex(phase.age)),
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: p.text)),
                        const SizedBox(height: 4),
                        Text(
                          l.illuminated(
                              formatNumber(context, (phase.lit * 100).round())),
                          style: TextStyle(fontSize: 14, color: p.muted),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              _InfoRow(
                  icon: Icons.north_east,
                  label: l.moonrise,
                  value: _time(sky.moon.rise)),
              _InfoRow(
                  icon: Icons.south_east,
                  label: l.moonset,
                  value: _time(sky.moon.set)),
              _InfoRow(
                  icon: Icons.circle,
                  label: l.nextFull,
                  value: _date(_nextFull)),
              _InfoRow(
                  icon: Icons.circle_outlined,
                  label: l.nextNew,
                  value: _date(_nextNew)),
            ],
          ),
        ),
        const SizedBox(height: 12),
        SurfaceCard(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: <Widget>[
              _InfoRow(
                  icon: Icons.wb_twilight,
                  label: l.sunset,
                  value: _time(sky.sunset)),
              _InfoRow(
                  icon: Icons.wb_sunny_outlined,
                  label: l.sunrise,
                  value: _time(sky.sunrise)),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Text(l.planetsTonight,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, color: p.text)),
        const SizedBox(height: 12),
        for (final night in sky.planets) ...<Widget>[
          _PlanetNightCard(night: night, time: _time),
          const SizedBox(height: 8),
        ],
        const SizedBox(height: 8),
        Text(l.cityNote,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: p.muted)),
      ],
    );
  }
}

String _phaseName(AppLocalizations l, int index) {
  switch (index) {
    case 0:
      return l.phaseNew;
    case 1:
      return l.phaseWaxingCrescent;
    case 2:
      return l.phaseFirstQuarter;
    case 3:
      return l.phaseWaxingGibbous;
    case 4:
      return l.phaseFull;
    case 5:
      return l.phaseWaningGibbous;
    case 6:
      return l.phaseLastQuarter;
    default:
      return l.phaseWaningCrescent;
  }
}

String _direction(AppLocalizations l, int index) {
  switch (index) {
    case 0:
      return l.dirN;
    case 1:
      return l.dirNE;
    case 2:
      return l.dirE;
    case 3:
      return l.dirSE;
    case 4:
      return l.dirS;
    case 5:
      return l.dirSW;
    case 6:
      return l.dirW;
    default:
      return l.dirNW;
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final p = Palette.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: <Widget>[
          Icon(icon, size: 18, color: p.muted),
          const SizedBox(width: 12),
          Expanded(
            child:
                Text(label, style: TextStyle(fontSize: 14, color: p.muted)),
          ),
          Text(value,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w600, color: p.text)),
        ],
      ),
    );
  }
}

class _PlanetNightCard extends StatelessWidget {
  const _PlanetNightCard({required this.night, required this.time});

  final BodyNight night;
  final String Function(DateTime? t) time;

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = Palette.of(context);
    final planet = planetById(night.id);
    final telescope = night.id == 'uranus' || night.id == 'neptune';

    final String status;
    final Color statusColor;
    switch (night.visibility) {
      case SkyVisibility.allNight:
        status = l.statusVisible;
        statusColor = p.good;
      case SkyVisibility.evening:
        status = l.statusEvening;
        statusColor = p.good;
      case SkyVisibility.morning:
        status = l.statusMorning;
        statusColor = p.good;
      case SkyVisibility.notVisible:
        status = l.statusNotVisible;
        statusColor = p.muted;
    }

    final best = night.bestTime;
    return SurfaceCard(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: PlanetBall(planet: planet, size: 30),
          ),
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
                const SizedBox(height: 2),
                Text(status,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: statusColor)),
                if (best != null) ...<Widget>[
                  const SizedBox(height: 4),
                  Text(
                    '${l.bestAt(time(best))} · '
                    '${l.altitudeDir(_direction(l, compassIndex(night.bestAzimuth)), formatNumber(context, night.bestAltitude.round()))}',
                    style: TextStyle(fontSize: 13, color: p.text),
                  ),
                ],
                const SizedBox(height: 4),
                Text(l.riseSet(time(night.rise), time(night.set)),
                    style: TextStyle(fontSize: 12, color: p.muted)),
                if (telescope && best != null) ...<Widget>[
                  const SizedBox(height: 4),
                  Text(l.needsTelescope,
                      style: TextStyle(fontSize: 12, color: p.accentText)),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CitySheet extends StatefulWidget {
  const _CitySheet();

  @override
  State<_CitySheet> createState() => _CitySheetState();
}

class _CitySheetState extends State<_CitySheet> {
  String _query = '';

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = Palette.of(context);
    final q = _query.trim().toLowerCase();
    final list = q.isEmpty
        ? cities
        : cities
            .where((c) =>
                c.name.toLowerCase().contains(q) ||
                c.country.toLowerCase().contains(q))
            .toList();

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.8,
      maxChildSize: 0.95,
      builder: (context, controller) => Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: TextField(
              autofocus: false,
              onChanged: (v) => setState(() => _query = v),
              decoration: InputDecoration(
                hintText: l.searchCity,
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: p.surfaceHigh,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: list.isEmpty
                ? Center(
                    child: Text(l.noCityFound,
                        style: TextStyle(color: p.muted)))
                : ListView.builder(
                    controller: controller,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      final city = list[index];
                      return ListTile(
                        title:
                            Text(city.name, style: TextStyle(color: p.text)),
                        subtitle: Text(city.country,
                            style: TextStyle(color: p.muted)),
                        onTap: () => Navigator.of(context).pop(city.id),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
