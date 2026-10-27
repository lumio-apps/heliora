import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

/// Formats [value] with the separators of the current language, keeping at
/// most [decimals] digits after the point.
String formatNumber(BuildContext context, num value, {int decimals = 0}) {
  final tag = Localizations.localeOf(context).toLanguageTag();
  return formatNumberFor(tag, value, decimals: decimals);
}

/// Same as [formatNumber] without a context, for tests.
String formatNumberFor(String localeTag, num value, {int decimals = 0}) {
  final locale = NumberFormat.localeExists(localeTag)
      ? localeTag
      : (NumberFormat.localeExists(localeTag.split('-').first)
          ? localeTag.split('-').first
          : 'en');
  final format = NumberFormat.decimalPattern(locale)
    ..minimumFractionDigits = 0
    ..maximumFractionDigits = decimals;
  return format.format(value);
}

/// A percentage with up to two decimals: 20.95%, 2.6%, 96.5%.
String formatPercent(BuildContext context, double value) {
  return '${formatNumber(context, value, decimals: 2)}%';
}
