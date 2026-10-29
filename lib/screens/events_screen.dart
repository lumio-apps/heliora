import 'package:flutter/material.dart';

import '../core/events.dart';
import '../data/online_service.dart';
import '../data/planets.dart';
import '../l10n/event_text.dart';
import '../l10n/names.dart';
import '../state/app_state.dart';
import '../theme.dart';
import '../widgets/common.dart';
import '../widgets/event_tile.dart';
import 'reminder_actions.dart';

/// Space events for the next 12 months, each with an optional reminder.
/// With online features on, upcoming rocket launches are listed too.
class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

/// When to remind about a launch: an hour before when the time is known,
/// otherwise like other events. Null when too late.
DateTime? launchReminderTime(Launch launch, DateTime now) {
  final soon = now.add(const Duration(minutes: 1));
  if (launch.timeKnown) {
    final at = launch.net.toLocal().subtract(const Duration(hours: 1));
    return at.isAfter(soon) ? at : null;
  }
  return reminderTime(
    SpaceEvent(kind: SpaceEventKind.fullMoon, time: launch.net),
    now,
  );
}

class _EventsScreenState extends State<EventsScreen> {
  final List<SpaceEvent> _events = upcomingEvents();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!mounted) {
        return;
      }
      final state = AppScope.read(context);
      await state.pruneReminders(
          isEventReminder, <String>{for (final e in _events) e.id});
      if (state.settings.onlineFeatures) {
        await state.online.refreshLaunches();
        if (mounted) {
          await _resyncLaunchReminders();
        }
      }
    });
  }

  /// A launch can move. Sets the reminders of launches again for their
  /// newest time, and forgets those whose launch left the list.
  Future<void> _resyncLaunchReminders() async {
    final state = AppScope.read(context);
    final l = context.l10n;
    final launches = state.online.launches;
    final now = DateTime.now();
    await state.pruneReminders(
      (id) => id.startsWith('launch:'),
      <String>{for (final launch in launches) launch.reminderId},
    );
    for (final launch in launches) {
      if (!state.hasReminder(launch.reminderId)) {
        continue;
      }
      final at = launchReminderTime(launch, now);
      if (at == null) {
        await state.bridge.cancelReminder(launch.reminderId);
        await state.setReminder(launch.reminderId, false);
        continue;
      }
      await state.bridge.scheduleReminder(
        id: launch.reminderId,
        at: at,
        title: launch.name,
        body: launch.timeKnown ? l.launchReminderBody : l.reminderTomorrow,
        channel: l.eventsTitle,
      );
    }
  }

  Future<void> _toggleEvent(SpaceEvent event) {
    final l = context.l10n;
    final at = reminderTime(event, DateTime.now());
    final day = event.localDay;
    final sameDay = at != null &&
        at.year == day.year &&
        at.month == day.month &&
        at.day == day.day;
    return toggleReminder(
      context,
      id: event.id,
      at: at,
      title: eventTitle(l, event),
      body: sameDay ? l.reminderToday : l.reminderTomorrow,
    );
  }

  Future<void> _toggleLaunch(Launch launch) {
    final l = context.l10n;
    final now = DateTime.now();
    final at = launchReminderTime(launch, now);
    return toggleReminder(
      context,
      id: launch.reminderId,
      at: at,
      title: launch.name,
      body: launch.timeKnown ? l.launchReminderBody : l.reminderTomorrow,
    );
  }

  Future<void> _turnOnOnline() async {
    final state = AppScope.read(context);
    await state.setOnlineFeatures(true);
    await state.online.refreshLaunches(force: true);
    if (mounted) {
      await _resyncLaunchReminders();
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = Palette.of(context);
    final loc = MaterialLocalizations.of(context);
    final state = AppScope.of(context);
    final online = state.online;
    final now = DateTime.now();

    return ListenableBuilder(
      listenable: online,
      builder: (context, _) {
        final showLaunches = state.settings.onlineFeatures;
        final items = <(DateTime, Object)>[
          for (final e in _events) (e.time, e),
          if (showLaunches)
            for (final launch in online.launches)
              if (launch.net.isAfter(now.subtract(const Duration(hours: 3))) &&
                  launch.net.isBefore(now.add(const Duration(days: 366))))
                (launch.net, launch),
        ]..sort((a, b) => a.$1.compareTo(b.$1));

        final children = <Widget>[
          Text(l.eventsSubtitle,
              style: TextStyle(fontSize: 14, color: p.muted, height: 1.4)),
          const SizedBox(height: 16),
        ];

        if (!showLaunches) {
          children
            ..add(SurfaceCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.rocket_launch_outlined, color: p.accentText),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(l.launchesNeedOnline,
                            style: TextStyle(
                                fontSize: 14, color: p.text, height: 1.4)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  FilledButton(
                    onPressed: _turnOnOnline,
                    child: Text(l.turnOnOnline),
                  ),
                ],
              ),
            ))
            ..add(const SizedBox(height: 16));
        } else if (online.loadingLaunches) {
          children
            ..add(const LinearProgressIndicator())
            ..add(const SizedBox(height: 12));
        } else if (online.launchesFailed) {
          children
            ..add(Text(l.launchesFailed,
                style: TextStyle(fontSize: 13, color: p.bad)))
            ..add(const SizedBox(height: 12));
        }

        var month = '';
        for (final (time, item) in items) {
          final day = time.toLocal();
          final label = loc.formatMonthYear(day);
          if (label != month) {
            month = label;
            children.add(Padding(
              padding: EdgeInsets.only(top: children.length > 3 ? 12 : 0),
              child: SectionLabel(label),
            ));
          }
          if (item is SpaceEvent) {
            children.add(EventTile(
              icon: _eventIcon(item, p),
              title: eventTitle(l, item),
              when:
                  '${loc.formatMediumDate(item.localDay)} · ${eventWhen(context, l, daysUntil(item, now))}',
              description: eventDescription(context, l, item),
              reminderOn: state.hasReminder(item.id),
              tooltip: l.remindMe,
              onToggle: () => _toggleEvent(item),
            ));
          } else if (item is Launch) {
            final local = item.net.toLocal();
            final date = DateTime(local.year, local.month, local.day);
            final days = DateTime.utc(date.year, date.month, date.day)
                .difference(DateTime.utc(now.year, now.month, now.day))
                .inDays;
            final clock = item.timeKnown
                ? ' ${loc.formatTimeOfDay(TimeOfDay.fromDateTime(local))}'
                : '';
            children.add(EventTile(
              icon: Icon(Icons.rocket_launch_outlined,
                  size: 28, color: p.bad),
              title: item.name,
              when:
                  '${loc.formatMediumDate(date)}$clock · ${eventWhen(context, l, days)}',
              description: <String>[
                if (!item.timeKnown) l.launchTimeTbd,
                if (item.details.isNotEmpty) item.details,
              ].join('\n'),
              reminderOn: state.hasReminder(item.reminderId),
              tooltip: l.remindMe,
              onToggle: () => _toggleLaunch(item),
            ));
          }
          children.add(const SizedBox(height: 8));
        }

        children
          ..add(const SizedBox(height: 8))
          ..add(Text(l.eventsNote,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: p.muted)));
        if (showLaunches) {
          children
            ..add(const SizedBox(height: 6))
            ..add(Text(l.launchesNote,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: p.muted)));
        }

        return Scaffold(
          appBar: AppBar(
            title: Text(l.eventsTitle,
                style: const TextStyle(fontWeight: FontWeight.w700)),
          ),
          body: ListView(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
            children: children,
          ),
        );
      },
    );
  }

  Widget _eventIcon(SpaceEvent event, Palette p) {
    switch (event.kind) {
      case SpaceEventKind.fullMoon:
        return Icon(Icons.circle, size: 28, color: p.text);
      case SpaceEventKind.newMoon:
        return Icon(Icons.circle_outlined, size: 28, color: p.muted);
      case SpaceEventKind.marchEquinox:
      case SpaceEventKind.juneSolstice:
      case SpaceEventKind.septemberEquinox:
      case SpaceEventKind.decemberSolstice:
        return Icon(Icons.wb_sunny_outlined, size: 28, color: p.accentText);
      case SpaceEventKind.meteorShower:
        return Icon(Icons.auto_awesome, size: 28, color: p.orbit);
      case SpaceEventKind.lunarEclipse:
        return Icon(Icons.nightlight_round, size: 28, color: p.bad);
      case SpaceEventKind.solarEclipse:
        return Icon(Icons.brightness_medium, size: 28, color: p.bad);
      case SpaceEventKind.opposition:
      case SpaceEventKind.eveningElongation:
      case SpaceEventKind.morningElongation:
      case SpaceEventKind.conjunction:
        return PlanetBall(planet: planetById(event.bodies[0]), size: 26);
    }
  }
}
