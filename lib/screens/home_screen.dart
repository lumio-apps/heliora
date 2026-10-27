import 'package:flutter/material.dart';

import '../core/format.dart';
import '../data/planets.dart';
import '../data/settings.dart';
import '../l10n/names.dart';
import '../state/app_state.dart';
import '../theme.dart';
import '../widgets/common.dart';
import '../widgets/globe_view.dart';
import '../widgets/orbit_view.dart';
import 'compare_screen.dart';
import 'planet_screen.dart';
import 'quiz_screen.dart';
import 'settings_screen.dart';
import 'update_dialog.dart';
import 'weight_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _tab = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _autoUpdate());
  }

  Future<void> _autoUpdate() async {
    final state = AppScope.read(context);
    await state.autoCheckForUpdate();
    final info = state.availableUpdate;
    if (info != null && mounted) {
      state.dismissAvailableUpdate();
      await showUpdateDialog(context, info);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: IndexedStack(
          index: _tab,
          children: <Widget>[
            ExploreTab(active: _tab == 0),
            const CompareScreen(),
            const WeightScreen(),
            const QuizScreen(),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _tab,
        onDestinationSelected: (i) => setState(() => _tab = i),
        destinations: <NavigationDestination>[
          NavigationDestination(
            icon: const Icon(Icons.public_outlined),
            selectedIcon: const Icon(Icons.public),
            label: l.navExplore,
          ),
          NavigationDestination(
            icon: const Icon(Icons.bar_chart_outlined),
            selectedIcon: const Icon(Icons.bar_chart),
            label: l.navCompare,
          ),
          NavigationDestination(
            icon: const Icon(Icons.monitor_weight_outlined),
            selectedIcon: const Icon(Icons.monitor_weight),
            label: l.navWeight,
          ),
          NavigationDestination(
            icon: const Icon(Icons.quiz_outlined),
            selectedIcon: const Icon(Icons.quiz),
            label: l.navQuiz,
          ),
        ],
      ),
    );
  }
}

/// The main tab: the Solar System in 2D or 3D, and the list of planets.
class ExploreTab extends StatefulWidget {
  const ExploreTab({super.key, required this.active});

  /// False while another tab is shown, so the animation can stop.
  final bool active;

  @override
  State<ExploreTab> createState() => _ExploreTabState();
}

class _ExploreTabState extends State<ExploreTab> {
  String _selectedId = 'earth';

  void _openPlanet(Planet planet) {
    setState(() => _selectedId = planet.id);
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => PlanetScreen(planet: planet)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = Palette.of(context);
    final state = AppScope.of(context);
    final mode = state.settings.viewMode;
    final selected = planetById(_selectedId);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
          child: Row(
            children: <Widget>[
              const HelioraLogo(size: 32),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  l.appTitle,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: p.text,
                  ),
                ),
              ),
              IconButton.filledTonal(
                tooltip: l.settings,
                style: IconButton.styleFrom(
                  backgroundColor: p.surface,
                  foregroundColor: p.text,
                ),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute<void>(
                      builder: (_) => const SettingsScreen()),
                ),
                icon: const Icon(Icons.settings_outlined),
              ),
              const SizedBox(width: 8),
              _ViewToggle(
                mode: mode,
                onChanged: (m) => state.setViewMode(m),
              ),
            ],
          ),
        ),
        Expanded(
          child: !widget.active
              ? const SizedBox.shrink()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: mode == ViewMode.flat
                      ? OrbitView(
                          selectedId: _selectedId,
                          onPlanetTap: _openPlanet,
                          nameOf: (planet) => planetName(l, planet),
                        )
                      : GlobeView(planet: selected),
                ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Text(
            mode == ViewMode.flat ? l.notToScale : l.dragToRotate,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: p.muted),
          ),
        ),
        if (mode == ViewMode.flat)
          _PlanetCards(selectedId: _selectedId, onTap: _openPlanet)
        else ...<Widget>[
          _PlanetChips(
            selectedId: _selectedId,
            onSelect: (planet) => setState(() => _selectedId = planet.id),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
            child: _GlobeInfoCard(
              planet: selected,
              onOpen: () => _openPlanet(selected),
            ),
          ),
        ],
      ],
    );
  }
}

class _ViewToggle extends StatelessWidget {
  const _ViewToggle({required this.mode, required this.onChanged});

  final ViewMode mode;
  final ValueChanged<ViewMode> onChanged;

  @override
  Widget build(BuildContext context) {
    final p = Palette.of(context);
    final light = Theme.of(context).brightness == Brightness.light;
    Widget option(String label, ViewMode value) {
      final on = mode == value;
      return Semantics(
        selected: on,
        button: true,
        child: InkWell(
          borderRadius: BorderRadius.circular(999),
          onTap: () => onChanged(value),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            constraints: const BoxConstraints(minWidth: 48, minHeight: 40),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: on ? (light ? p.text : p.accent) : Colors.transparent,
              borderRadius: BorderRadius.circular(999),
            ),
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: on ? (light ? Colors.white : p.onAccent) : p.muted,
              ),
            ),
          ),
        ),
      );
    }

    return Semantics(
      label: context.l10n.viewMode,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: p.surface,
          borderRadius: BorderRadius.circular(999),
          border: light ? Border.all(color: p.border) : null,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            option('2D', ViewMode.flat),
            option('3D', ViewMode.globe),
          ],
        ),
      ),
    );
  }
}

class _PlanetCards extends StatelessWidget {
  const _PlanetCards({required this.selectedId, required this.onTap});

  final String selectedId;
  final ValueChanged<Planet> onTap;

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = Palette.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 10),
          child: Text(
            l.planetsTitle,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, color: p.text),
          ),
        ),
        SizedBox(
          height: 128,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            itemCount: planets.length,
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final planet = planets[index];
              final on = planet.id == selectedId;
              return SizedBox(
                width: 128,
                child: Material(
                  color: on ? p.surfaceHigh : p.surface,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: on
                        ? BorderSide(color: p.accentText, width: 1.5)
                        : (Theme.of(context).brightness == Brightness.light
                            ? BorderSide(color: p.border)
                            : BorderSide.none),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () => onTap(planet),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          PlanetBall(planet: planet, size: 30),
                          Text(
                            planetName(l, planet),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: p.text),
                          ),
                          Text(
                            '${Gas.o2.formula} ${formatPercent(context, planet.oxygenPercent)}',
                            style: TextStyle(fontSize: 12, color: p.muted),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _PlanetChips extends StatelessWidget {
  const _PlanetChips({required this.selectedId, required this.onSelect});

  final String selectedId;
  final ValueChanged<Planet> onSelect;

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = Palette.of(context);
    return SizedBox(
      height: 44,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: planets.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final planet = planets[index];
          final on = planet.id == selectedId;
          return ChoiceChip(
            selected: on,
            showCheckmark: false,
            onSelected: (_) => onSelect(planet),
            avatar: CircleAvatar(backgroundColor: planet.color, radius: 6),
            label: Text(planetName(l, planet)),
            labelStyle: TextStyle(
              color: on ? p.onAccent : p.text,
              fontWeight: on ? FontWeight.w600 : FontWeight.w500,
            ),
            selectedColor: p.accent,
            backgroundColor: p.surface,
            side: BorderSide(color: on ? p.accent : p.border),
            shape: const StadiumBorder(),
          );
        },
      ),
    );
  }
}

class _GlobeInfoCard extends StatelessWidget {
  const _GlobeInfoCard({required this.planet, required this.onOpen});

  final Planet planet;
  final VoidCallback onOpen;

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = Palette.of(context);
    Widget stat(String label, String value) {
      return Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12, color: p.muted)),
            const SizedBox(height: 2),
            Text(value,
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w600, color: p.text)),
          ],
        ),
      );
    }

    return SurfaceCard(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  planetName(l, planet),
                  style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w700, color: p.text),
                ),
              ),
              Flexible(
                child: Text(
                  l.planetOrder(planet.order),
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 13, color: p.muted),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: <Widget>[
              stat(l.oxygen, formatPercent(context, planet.oxygenPercent)),
              stat(l.avgTempShort,
                  '${formatNumber(context, planet.meanTempC)} °C'),
              stat(l.moonsShort, formatNumber(context, planet.moons)),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: <Widget>[
              Icon(
                planet.breathable ? Icons.check : Icons.close,
                size: 18,
                color: planet.breathable ? p.good : p.bad,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  planet.breathable ? l.breathable : l.notBreathable,
                  style: TextStyle(
                      fontSize: 13,
                      color: planet.breathable ? p.good : p.bad),
                ),
              ),
              TextButton(onPressed: onOpen, child: Text(l.openDetails)),
            ],
          ),
        ],
      ),
    );
  }
}
