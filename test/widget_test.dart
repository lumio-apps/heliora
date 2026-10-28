import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:heliora/core/finder.dart';
import 'package:heliora/core/format.dart';
import 'package:heliora/core/habitability.dart';
import 'package:heliora/core/orbits.dart';
import 'package:heliora/core/sky.dart';
import 'package:heliora/data/cities.dart';
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

  group('real positions', () {
    test('Earth at J2000 and at the March equinox', () {
      expect(heliocentricLongitude('earth', DateTime.utc(2000, 1, 1, 12)),
          closeTo(100.4, 0.5));
      expect(heliocentricLongitude('earth', DateTime.utc(2026, 3, 20, 15)),
          closeTo(180, 1));
    });

    test('planets line up with Earth at opposition', () {
      double gap(String id, DateTime d) {
        final diff = (heliocentricLongitude(id, d) -
                    heliocentricLongitude('earth', d))
                .abs() %
            360;
        return diff > 180 ? 360 - diff : diff;
      }

      expect(gap('mars', DateTime.utc(2025, 1, 16)), lessThan(2));
      expect(gap('jupiter', DateTime.utc(2026, 1, 10)), lessThan(2));
      expect(gap('saturn', DateTime.utc(2025, 9, 21)), lessThan(2));
    });

    test('every planet has an orbit and dates are kept in range', () {
      for (final planet in planets) {
        expect(hasOrbit(planet.id), isTrue, reason: planet.id);
      }
      expect(hasOrbit('moon'), isFalse);
      expect(clampOrbitDate(DateTime.utc(1700)), orbitMinDate);
      expect(clampOrbitDate(DateTime.utc(2100)), orbitMaxDate);
    });

    test('distance from Earth matches known dates', () {
      // Mars was closest on 12 Jan 2025, about 96 million km away.
      expect(distanceFromEarthKm('mars', DateTime.utc(2025, 1, 12)) / 1e6,
          closeTo(96, 1.5));
      // Earth is closest to the Sun in early January, about 147.1 million km.
      expect(distanceFromEarthKm('sun', DateTime.utc(2026, 1, 3)) / 1e6,
          closeTo(147.1, 0.3));
    });

    test('age on other planets', () {
      final birth = DateTime.utc(2000, 1, 1);
      final now = DateTime.utc(2020, 1, 1);
      expect(ageOn(birth, now, 365.25), closeTo(20, 0.01));
      expect(ageOn(birth, now, 88), closeTo(83, 0.1));
      final days = daysToNextBirthday(birth, now, 88);
      expect(days, greaterThan(0));
      expect(days, lessThanOrEqualTo(88));
    });
  });

  group('tonight sky', () {
    Matcher near(DateTime expected, int minutes) => predicate<DateTime>(
        (t) => t.difference(expected).inMinutes.abs() <= minutes,
        'within $minutes minutes of $expected');

    test('London sunrise and sunset on 21 June 2025', () {
      final s = sunRiseSet(DateTime.utc(2025, 6, 21), 51.5074, -0.1278);
      expect(s.rise, near(DateTime.utc(2025, 6, 21, 3, 43), 3));
      expect(s.set, near(DateTime.utc(2025, 6, 21, 20, 21), 3));
    });

    test('full and new moon dates', () {
      expect(nextPhase(DateTime.utc(2025, 10, 1), 180),
          near(DateTime.utc(2025, 10, 7, 3, 47), 30));
      expect(nextPhase(DateTime.utc(2025, 10, 10), 0),
          near(DateTime.utc(2025, 10, 21, 12, 25), 30));
      expect(nextPhase(DateTime.utc(2025, 12, 25), 180),
          near(DateTime.utc(2026, 1, 3, 10, 3), 30));
    });

    test('phase names and lit part', () {
      final full = moonPhase(DateTime.utc(2025, 10, 7, 3, 47));
      expect(phaseIndex(full.age), 4);
      expect(full.lit, greaterThan(0.98));
      final fresh = moonPhase(DateTime.utc(2025, 10, 21, 12, 25));
      expect(phaseIndex(fresh.age), 0);
      expect(fresh.lit, lessThan(0.02));
    });

    test('compass directions', () {
      expect(compassIndex(0), 0);
      expect(compassIndex(90), 2);
      expect(compassIndex(181), 4);
      expect(compassIndex(350), 0);
      expect(compassIndex(300), 7);
    });

    test('a night in Yerevan gives every planet', () {
      final city = cityById('yerevan')!;
      final sky = skyTonight(DateTime(2026, 1, 10), city.lat, city.lon);
      expect(sky.planets.length, 7);
      expect(sky.sunset, isNotNull);
      final jupiter = sky.planets.firstWhere((n) => n.id == 'jupiter');
      // Jupiter was opposite the Sun that night, up all night.
      expect(jupiter.visibility, SkyVisibility.allNight);
    });

    test('city ids are unique', () {
      expect(cities.map((c) => c.id).toSet().length, cities.length);
    });
  });

  group('compass finder', () {
    test('turn angle takes the short way round', () {
      expect(turnAngle(350, 10), closeTo(20, 1e-9));
      expect(turnAngle(10, 350), closeTo(-20, 1e-9));
      expect(turnAngle(90, 90), 0);
      expect(turnAngle(0, 180).abs(), closeTo(180, 1e-9));
    });

    test('guidance says which way to move', () {
      final g = guide(
        phoneAzimuth: 100,
        phoneAltitude: 10,
        targetAzimuth: 130,
        targetAltitude: 40,
      );
      expect(g.turn, greaterThan(0));
      expect(g.tilt, closeTo(30, 1e-9));
      expect(g.onTarget, isFalse);
      final back = guide(
        phoneAzimuth: 130,
        phoneAltitude: 60,
        targetAzimuth: 100,
        targetAltitude: 40,
      );
      expect(back.turn, lessThan(0));
      expect(back.tilt, closeTo(-20, 1e-9));
    });

    test('pointing at the target counts as found', () {
      final g = guide(
        phoneAzimuth: 200,
        phoneAltitude: 30,
        targetAzimuth: 203,
        targetAltitude: 32,
      );
      expect(g.onTarget, isTrue);
    });

    test('turns shrink near the zenith', () {
      final low = guide(
        phoneAzimuth: 0,
        phoneAltitude: 0,
        targetAzimuth: 40,
        targetAltitude: 0,
      );
      final high = guide(
        phoneAzimuth: 0,
        phoneAltitude: 80,
        targetAzimuth: 40,
        targetAltitude: 80,
      );
      expect(high.turn.abs(), lessThan(low.turn.abs() / 4));
    });

    test('smoother averages 359 and 1 degrees to north', () {
      final sm = DirectionSmoother(factor: 0.5);
      sm.add(359, 20);
      final r = sm.add(1, 20);
      final az = r.azimuth > 180 ? r.azimuth - 360 : r.azimuth;
      expect(az.abs(), lessThan(1));
      expect(r.altitude, closeTo(20, 1e-9));
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
        birthDateMs: 946728000000,
        cityId: 'yerevan',
      );
      final back = HelioraSettings.fromJson(s.toJson());
      expect(back.themeMode, ThemeMode.dark);
      expect(back.localeCode, 'hy');
      expect(back.viewMode, ViewMode.globe);
      expect(back.autoUpdateCheck, isFalse);
      expect(back.lastUpdateCheckMs, 42);
      expect(back.bestQuizScore, 7);
      expect(back.birthDateMs, 946728000000);
      expect(back.cityId, 'yerevan');
      expect(back.birthDate, isNotNull);
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
