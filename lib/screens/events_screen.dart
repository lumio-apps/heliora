import 'package:flutter/material.dart';

import '../core/events.dart';
import '../data/planets.dart';
import '../l10n/event_text.dart';
import '../l10n/names.dart';
import '../state/app_state.dart';
import '../theme.dart';
import '../widgets/common.dart';

/// Space events for the next 12 months, each with an optional reminder.
class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  final List<SpaceEvent> _events = upcomingEvents();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        AppScope.read(context)
            .keepReminders(<String>{for (final e in _events) e.id});
      }
    });
  }

  Future<void> _toggle(SpaceEvent event) async {
    final state = AppScope.read(context);
    final l = context.l10n;
    final loc = MaterialLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    void say(String text) {
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(text)));
    }

    if (state.hasReminder(event.id)) {
      await state.bridge.cancelReminder(event.id);
      await state.setReminder(event.id, false);
      say(l.reminderOff);
      return;
    }

    final at = reminderTime(event, DateTime.now());
    if (at == null) {
      say(l.reminderTooLate);
      return;
    }
    final day = event.localDay;
    final sameDay = at.year == day.year && at.month == day.month && at.day == day.day;
    final title = eventTitle(l, event);
    final body = sameDay ? l.reminderToday : l.reminderTomorrow;
    final channel = l.eventsTitle;
    final date = loc.formatMediumDate(at);

    final allowed = await state.bridge.requestNotifications();
    if (!allowed) {
      say(l.notificationsOff);
      return;
    }
    final ok = await state.bridge.scheduleReminder(
      id: event.id,
      at: at,
      title: title,
      body: body,
      channel: channel,
    );
    if (!ok) {
      say(l.reminderTooLate);
      return;
    }
    await state.setReminder(event.id, true);
    say(l.reminderSet(date));
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = Palette.of(context);
    final loc = MaterialLocalizations.of(context);
    final state = AppScope.of(context);
    final now = DateTime.now();

    final children = <Widget>[
      Text(l.eventsSubtitle,
          style: TextStyle(fontSize: 14, color: p.muted, height: 1.4)),
      const SizedBox(height: 16),
    ];
    var month = '';
    for (final event in _events) {
      final label = loc.formatMonthYear(event.localDay);
      if (label != month) {
        month = label;
        children.add(Padding(
          padding: EdgeInsets.only(top: children.length > 2 ? 12 : 0),
          child: SectionLabel(label),
        ));
      }
      final on = state.hasReminder(event.id);
      children
        ..add(_EventCard(
          event: event,
          title: eventTitle(l, event),
          when:
              '${loc.formatMediumDate(event.localDay)} · ${eventWhen(context, l, daysUntil(event, now))}',
          description: eventDescription(context, l, event),
          reminderOn: on,
          tooltip: l.remindMe,
          onToggle: () => _toggle(event),
        ))
        ..add(const SizedBox(height: 8));
    }
    children
      ..add(const SizedBox(height: 8))
      ..add(Text(l.eventsNote,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12, color: p.muted)));

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
  }
}

class _EventCard extends StatelessWidget {
  const _EventCard({
    required this.event,
    required this.title,
    required this.when,
    required this.description,
    required this.reminderOn,
    required this.tooltip,
    required this.onToggle,
  });

  final SpaceEvent event;
  final String title;
  final String when;
  final String description;
  final bool reminderOn;
  final String tooltip;
  final VoidCallback onToggle;

  Widget _leading(Palette p) {
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
      case SpaceEventKind.opposition:
      case SpaceEventKind.eveningElongation:
      case SpaceEventKind.morningElongation:
      case SpaceEventKind.conjunction:
        return PlanetBall(planet: planetById(event.bodies[0]), size: 26);
    }
  }

  @override
  Widget build(BuildContext context) {
    final p = Palette.of(context);
    return SurfaceCard(
      padding: const EdgeInsets.fromLTRB(16, 12, 4, 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 40,
            height: 40,
            child: Center(child: _leading(p)),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: p.text)),
                const SizedBox(height: 2),
                Text(when,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: p.accentText)),
                const SizedBox(height: 4),
                Text(description,
                    style: TextStyle(fontSize: 13, color: p.muted, height: 1.35)),
              ],
            ),
          ),
          IconButton(
            tooltip: tooltip,
            onPressed: onToggle,
            icon: Icon(
              reminderOn
                  ? Icons.notifications_active
                  : Icons.notifications_none,
              color: reminderOn ? p.accentText : p.muted,
            ),
          ),
        ],
      ),
    );
  }
}
