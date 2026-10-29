/// Favourites are kept as a list of keys in the settings. A planet or moon
/// uses its own id; missions and spacecraft get a prefix so ids never clash.
String missionKey(String id) => 'mission:$id';
String craftKey(String id) => 'craft:$id';

/// Most favourites that are kept.
const int maxFavorites = 60;

/// The list with [key] added (at the end) or, when it is already there,
/// removed. The list that was passed in is not changed.
List<String> toggledFavorite(List<String> list, String key) {
  if (list.contains(key)) {
    return <String>[
      for (final k in list)
        if (k != key) k,
    ];
  }
  final next = <String>[...list, key];
  if (next.length > maxFavorites) {
    return next.sublist(next.length - maxFavorites);
  }
  return next;
}

/// Lower-cases [text] and replaces common accented letters, so that "Zemlja"
/// and "terre" are found whatever the keyboard produced.
String foldText(String text) {
  const from = 'àáâãäåāçćčèéêëēìíîïīñńòóôõöøōšùúûüūýÿž';
  const to = 'aaaaaaaccceeeeeiiiiinnooooooosuuuuuyyz';
  final buffer = StringBuffer();
  for (final unit in text.toLowerCase().trim().runes) {
    if (unit == 0x0451) {
      // Russian "ё" is searched as "е".
      buffer.write('\u0435');
      continue;
    }
    final ch = String.fromCharCode(unit);
    final i = from.indexOf(ch);
    buffer.write(i < 0 ? ch : to[i]);
  }
  return buffer.toString();
}

/// True when the search [query] is found in one of the [names]. An empty
/// query matches nothing.
bool matchesQuery(String query, Iterable<String> names) {
  final q = foldText(query);
  if (q.isEmpty) {
    return false;
  }
  for (final name in names) {
    if (foldText(name).contains(q)) {
      return true;
    }
  }
  return false;
}
