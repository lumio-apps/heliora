import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:heliora/core/format.dart';
import 'package:heliora/core/habitability.dart';
import 'package:heliora/core/quiz.dart';
import 'package:heliora/core/version.dart';
import 'package:heliora/data/planets.dart';
import 'package:heliora/data/settings.dart';
import 'package:heliora/data/update_service.dart';

void main() {
  group('planet data', () {
    test('eight planets in order', () {
      expect(planets.length, 8);
      for (var i = 0; i < planets.length; i++) {
        expect(planets[i].order, i + 1);
      }
    });

    test('atmospheres add up to about 100%', () {
      for (final planet in allBodies.where((b) => b.atmosphere.isNotEmpty)) {
        final total =
            planet.atmosphere.fold<double>(0, (sum, s) => sum + s.percent);
        expect(total, closeTo(100, 1.5), reason: planet.id);
      }
    });

    test('oxygen and breathing', () {
      expect(planetById('earth').oxygenPercent, 20.95);
      expect(planetById('mars').oxygenPercent, 0.16);
      expect(planetById('jupiter').oxygenPercent, 0);
      expect(planets.where((p) => p.breathable).map((p) => p.id), ['earth']);
    });

    test('weight on Mars', () {
      expect(planetById('mars').weightFor(70), closeTo(26.4, 0.1));
      expect(planetById('earth').weightFor(70), closeTo(70, 0.001));
    });

    test('unknown id falls back to Earth', () {
      expect(planetById('vulcan').id, 'earth');
    });

    test('Sun, Pluto and moons', () {
      expect(allBodies.length, 18);
      expect(allBodies.map((b) => b.id).toSet().length, 18);
      expect(planetById('sun').isStar, isTrue);
      expect(planetById('pluto').kind, BodyKind.dwarf);
      expect(moonsOf('jupiter').map((m) => m.id),
          <String>['io', 'europa', 'ganymede', 'callisto']);
      expect(moonsOf('earth').single.id, 'moon');
      for (final moon in allBodies.where((b) => b.isMoon)) {
        expect(planets.any((p) => p.id == moon.parentId), isTrue,
            reason: moon.id);
      }
    });
  });

  group('life score', () {
    test('Earth is 10 and the rest are lower', () {
      expect(lifeScore(planetById('earth')).total, 10);
      for (final body in allBodies.where((b) => b.id != 'earth')) {
        expect(lifeScore(body).total, lessThan(10), reason: body.id);
      }
    });

    test('known scores', () {
      expect(lifeScore(planetById('mars')).total, 4);
      expect(lifeScore(planetById('venus')).total, 2);
      expect(lifeScore(planetById('titan')).total, 4);
      expect(lifeScore(planetById('moon')).total, 3);
      expect(lifeScore(planetById('jupiter')).total, 0);
      expect(lifeScore(planetById('sun')).total, 0);
    });

    test('Mercury gets no oxygen points from its exosphere', () {
      final oxygen = lifeScore(planetById('mercury'))
          .factors
          .firstWhere((f) => f.factor == LifeFactor.oxygen);
      expect(oxygen.points, 0);
    });
  });

  group('quiz', () {
    test('answers come from the data', () {
      expect(answerFor(QuizKind.largest).id, 'jupiter');
      expect(answerFor(QuizKind.smallest).id, 'mercury');
      expect(answerFor(QuizKind.hottest).id, 'venus');
      expect(answerFor(QuizKind.coldest).id, 'neptune');
      expect(answerFor(QuizKind.mostMoons).id, 'saturn');
      expect(answerFor(QuizKind.breathable).id, 'earth');
      expect(answerFor(QuizKind.closest).id, 'mercury');
      expect(answerFor(QuizKind.farthest).id, 'neptune');
      expect(answerFor(QuizKind.strongestGravity).id, 'jupiter');
      expect(answerFor(QuizKind.shortestDay).id, 'jupiter');
      expect(answerFor(QuizKind.longestDay).id, 'mercury');
    });

    test('ten different questions with four options', () {
      final quiz = buildQuiz(random: Random(1));
      expect(quiz.length, 10);
      expect(quiz.map((q) => q.kind).toSet().length, 10);
      for (final q in quiz) {
        expect(q.options.length, 4);
        expect(q.options.map((p) => p.id).toSet().length, 4);
        expect(q.options.any((p) => p.id == q.answer.id), isTrue);
      }
    });
  });

  group('versions', () {
    test('newer and older', () {
      expect(isNewerVersion('v1.0.1', '1.0.0'), isTrue);
      expect(isNewerVersion('v1.10.0', '1.9.9'), isTrue);
      expect(isNewerVersion('v2.0', '1.9.9'), isTrue);
      expect(isNewerVersion('v1.0.0', '1.0.0'), isFalse);
      expect(isNewerVersion('v1.0.0', '1.0.1'), isFalse);
      expect(isNewerVersion('1.0.1+3', '1.0.1'), isFalse);
    });

    test('release json', () {
      final info = UpdateService.parse(
        '{"tag_name":"v1.0.1","html_url":"https://github.com/lumio-apps/heliora/releases/tag/v1.0.1","body":"Fixes","assets":[{"name":"Heliora-v1.0.1.apk","browser_download_url":"https://github.com/x/Heliora-v1.0.1.apk"}]}',
      );
      expect(info.version, '1.0.1');
      expect(info.apkUrl, 'https://github.com/x/Heliora-v1.0.1.apk');
      expect(info.downloadUrl, 'https://github.com/x/Heliora-v1.0.1.apk');
      expect(info.notes, 'Fixes');
    });

    test('updates download only from GitHub', () {
      expect(
          UpdateService.isTrustedDownload(
              'https://github.com/lumio-apps/heliora/releases/download/v1.2.0/Heliora-v1.2.0.apk'),
          isTrue);
      expect(UpdateService.isTrustedDownload('http://github.com/x.apk'),
          isFalse);
      expect(UpdateService.isTrustedDownload('https://evil.example/x.apk'),
          isFalse);
      expect(UpdateService.isTrustedDownload('not a link'), isFalse);
    });

    test('release without apk opens the release page', () {
      final info = UpdateService.parse('{"tag_name":"v1.2.0","assets":[]}');
      expect(info.apkUrl, isNull);
      expect(info.downloadUrl, UpdateService.releasesPage);
    });
  });

  group('settings', () {
    test('round trip', () {
      const s = HelioraSettings(
        themeMode: ThemeMode.dark,
        localeCode: 'hy',
        viewMode: ViewMode.globe,
        autoUpdateCheck: false,
        lastUpdateCheckMs: 42,
        bestQuizScore: 7,
      );
      final back = HelioraSettings.fromJson(s.toJson());
      expect(back.themeMode, ThemeMode.dark);
      expect(back.localeCode, 'hy');
      expect(back.viewMode, ViewMode.globe);
      expect(back.autoUpdateCheck, isFalse);
      expect(back.lastUpdateCheckMs, 42);
      expect(back.bestQuizScore, 7);
    });

    test('broken values fall back to defaults', () {
      final s = HelioraSettings.fromJson(<String, dynamic>{
        'theme': 'purple',
        'view': 42,
        'locale': null,
        'bestQuizScore': 'x',
      });
      expect(s.themeMode, ThemeMode.system);
      expect(s.viewMode, ViewMode.flat);
      expect(s.localeCode, '');
      expect(s.bestQuizScore, 0);
    });
  });

  test('numbers use the language format', () {
    expect(formatNumberFor('en', 1234.5, decimals: 1), '1,234.5');
    expect(formatNumberFor('en', 20.95, decimals: 2), '20.95');
    expect(formatNumberFor('en', 2.0, decimals: 2), '2');
    expect(formatNumberFor('zz', 5), '5');
  });
}
