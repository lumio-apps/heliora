import 'package:flutter/widgets.dart';

import '../core/events.dart';
import '../core/format.dart';
import '../data/planets.dart';
import 'gen/app_localizations.dart';
import 'names.dart';

String _planet(AppLocalizations l, String id) => planetName(l, planetById(id));

String _showerName(AppLocalizations l, String id) {
  switch (id) {
    case 'quadrantids':
      return l.showerQuadrantids;
    case 'lyrids':
      return l.showerLyrids;
    case 'etaAquariids':
      return l.showerEtaAquariids;
    case 'perseids':
      return l.showerPerseids;
    case 'orionids':
      return l.showerOrionids;
    case 'leonids':
      return l.showerLeonids;
    case 'geminids':
      return l.showerGeminids;
    default:
      return l.showerUrsids;
  }
}

/// The name of an event, in the app's language.
String eventTitle(AppLocalizations l, SpaceEvent e) {
  switch (e.kind) {
    case SpaceEventKind.fullMoon:
      return l.eventFullMoon;
    case SpaceEventKind.newMoon:
      return l.eventNewMoon;
    case SpaceEventKind.opposition:
      return l.eventOpposition(_planet(l, e.bodies[0]));
    case SpaceEventKind.eveningElongation:
      return l.eventEveningElongation(_planet(l, e.bodies[0]));
    case SpaceEventKind.morningElongation:
      return l.eventMorningElongation(_planet(l, e.bodies[0]));
    case SpaceEventKind.conjunction:
      return l.eventConjunction(
          _planet(l, e.bodies[0]), _planet(l, e.bodies[1]));
    case SpaceEventKind.marchEquinox:
      return l.eventMarchEquinox;
    case SpaceEventKind.juneSolstice:
      return l.eventJuneSolstice;
    case SpaceEventKind.septemberEquinox:
      return l.eventSeptemberEquinox;
    case SpaceEventKind.decemberSolstice:
      return l.eventDecemberSolstice;
    case SpaceEventKind.meteorShower:
      return l.eventMeteorShower(_showerName(l, e.bodies[0]));
  }
}

/// One or two sentences about an event.
String eventDescription(BuildContext context, AppLocalizations l, SpaceEvent e) {
  switch (e.kind) {
    case SpaceEventKind.fullMoon:
      return l.eventFullMoonDesc;
    case SpaceEventKind.newMoon:
      return l.eventNewMoonDesc;
    case SpaceEventKind.opposition:
      return l.eventOppositionDesc(_planet(l, e.bodies[0]));
    case SpaceEventKind.eveningElongation:
      return l.eventEveningDesc(_planet(l, e.bodies[0]),
          formatNumber(context, e.value.round()));
    case SpaceEventKind.morningElongation:
      return l.eventMorningDesc(_planet(l, e.bodies[0]),
          formatNumber(context, e.value.round()));
    case SpaceEventKind.conjunction:
      return l.eventConjunctionDesc(
          formatNumber(context, e.value, decimals: 1));
    case SpaceEventKind.marchEquinox:
    case SpaceEventKind.septemberEquinox:
      return l.eventEquinoxDesc;
    case SpaceEventKind.juneSolstice:
      return l.eventJuneSolsticeDesc;
    case SpaceEventKind.decemberSolstice:
      return l.eventDecemberSolsticeDesc;
    case SpaceEventKind.meteorShower:
      return l.eventMeteorDesc(formatNumber(context, e.value.round()),
          formatNumber(context, (e.extra * 100).round()));
  }
}

/// "Today", "Tomorrow" or "In 5 days".
String eventWhen(BuildContext context, AppLocalizations l, int days) {
  if (days <= 0) {
    return l.eventToday;
  }
  if (days == 1) {
    return l.eventTomorrow;
  }
  return l.eventInDays(formatNumber(context, days));
}
