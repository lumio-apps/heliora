import 'package:flutter/material.dart';

import '../core/facts.dart';
import '../data/planets.dart';
import '../l10n/names.dart';
import '../theme.dart';
import 'common.dart';

/// A "Did you know?" card. It shows one fact at a time from [facts] and a
/// tap on the card shows the next one.
class FactCard extends StatefulWidget {
  const FactCard({
    super.key,
    required this.facts,
    this.showName = false,
  });

  /// The facts to go through, the first one is shown first.
  final List<FactRef> facts;

  /// Shows which world the fact is about. Not needed on the world's own page.
  final bool showName;

  /// The two facts of one world.
  factory FactCard.of(String bodyId, {Key? key}) {
    return FactCard(
      key: key,
      facts: <FactRef>[
        for (var i = 0; i < factsPerBody; i++) (bodyId: bodyId, index: i),
      ],
    );
  }

  /// All facts, starting with the fact of [day].
  factory FactCard.daily(DateTime day, {Key? key}) {
    final first = factOfTheDay(day);
    final all = <FactRef>[
      for (var i = 0; i < factsPerBody; i++)
        for (final id in factBodyIds) (bodyId: id, index: i),
    ];
    final start = all.indexWhere(
        (f) => f.bodyId == first.bodyId && f.index == first.index);
    return FactCard(
      key: key,
      showName: true,
      facts: <FactRef>[...all.skip(start), ...all.take(start)],
    );
  }

  @override
  State<FactCard> createState() => _FactCardState();
}

class _FactCardState extends State<FactCard> {
  int _shown = 0;

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = Palette.of(context);
    final facts = widget.facts;
    if (facts.isEmpty) {
      return const SizedBox.shrink();
    }
    final ref = facts[_shown % facts.length];
    final list = bodyFacts(l, ref.bodyId);
    if (ref.index >= list.length) {
      return const SizedBox.shrink();
    }
    final name = widget.showName ? planetName(l, planetById(ref.bodyId)) : '';
    return Semantics(
      button: facts.length > 1,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: facts.length > 1 ? () => setState(() => _shown++) : null,
        child: SurfaceCard(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.lightbulb_outline, color: p.accentText),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name.isEmpty ? l.factTitle : '${l.factTitle} · $name',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: p.accentText),
                    ),
                    const SizedBox(height: 6),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 200),
                      child: Text(
                        list[ref.index],
                        key: ValueKey<String>('${ref.bodyId}${ref.index}'),
                        style: TextStyle(
                            fontSize: 15, height: 1.4, color: p.text),
                      ),
                    ),
                    if (facts.length > 1) ...<Widget>[
                      const SizedBox(height: 8),
                      Text(l.factTap,
                          style: TextStyle(fontSize: 12, color: p.muted)),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
