import 'package:flutter/material.dart';

import '../l10n/names.dart';
import '../state/app_state.dart';
import '../theme.dart';

/// A star that adds or removes [favoriteKey] (see favorites.dart) from the
/// favourites.
class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key, required this.favoriteKey});

  final String favoriteKey;

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = Palette.of(context);
    final state = AppScope.of(context);
    final on = state.isFavorite(favoriteKey);
    return IconButton(
      tooltip: on ? l.favoriteRemove : l.favoriteAdd,
      onPressed: () => AppScope.read(context).toggleFavorite(favoriteKey),
      icon: Icon(
        on ? Icons.star : Icons.star_border,
        color: on ? p.accentText : p.muted,
      ),
    );
  }
}
