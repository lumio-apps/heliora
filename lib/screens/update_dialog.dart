import 'package:flutter/material.dart';

import '../data/update_service.dart';
import '../l10n/names.dart';
import '../state/app_state.dart';
import '../theme.dart';

/// Tells the user a newer version is out. "Download" opens the signed APK
/// from the GitHub release in the browser; Android then offers to install it
/// over the current app, which keeps all settings.
Future<void> showUpdateDialog(BuildContext context, UpdateInfo info) {
  final l = context.l10n;
  final p = Palette.of(context);
  return showDialog<void>(
    context: context,
    builder: (dialogContext) {
      return AlertDialog(
        title: Text(l.updateAvailable),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(l.updateReady(info.version)),
              if (info.notes.isNotEmpty) ...<Widget>[
                const SizedBox(height: 12),
                Text(info.notes,
                    style: TextStyle(fontSize: 13, color: p.muted)),
              ],
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: Text(l.later),
          ),
          FilledButton(
            onPressed: () async {
              Navigator.of(dialogContext).pop();
              final messenger = ScaffoldMessenger.maybeOf(context);
              final opened =
                  await AppScope.read(context).bridge.openUrl(info.downloadUrl);
              if (!opened) {
                messenger?.showSnackBar(SnackBar(content: Text(l.openFailed)));
              }
            },
            child: Text(l.download),
          ),
        ],
      );
    },
  );
}
