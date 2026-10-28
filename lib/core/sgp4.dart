import 'dart:math' as math;

/// SGP4: the standard way to turn a satellite's two-line orbit data (TLE)
/// into its position at any time. This is the near-Earth version from
/// Spacetrack Report #3 with the WGS-72 constants, which is right for the
/// International Space Station (one orbit takes about 93 minutes).
///
/// Checked against the published SGP4 test case for satellite 00005 to
/// better than a millimetre; see test/widget_test.dart.

const double _twoPi = 2 * math.pi;
const double _mu = 398600.8;

/// Earth's equatorial radius in km (WGS-72, as SGP4 expects).
const double earthRadiusKm = 6378.135;
final double _xke = 60.0 / math.sqrt(earthRadiusKm * earthRadiusKm * earthRadiusKm / _mu);
const double _j2 = 0.001082616;
const double _j3 = -0.00000253881;
const double _j4 = -0.00000165597;
const double _j3oj2 = _j3 / _j2;
const double _x2o3 = 2.0 / 3.0;

/// Position (km) and velocity (km/s) in the TEME frame.
class Teme {
  const Teme(this.x, this.y, this.z, this.vx, this.vy, this.vz);

  final double x;
  final double y;
  final double z;
  final double vx;
  final double vy;
  final double vz;
}

/// The orbit of one satellite, ready to be asked "where is it at time t?".
class Sgp4 {
  Sgp4._(this.epoch);

  /// Reads the two lines of a TLE. Throws [FormatException] when they do
  /// not look like a TLE.
  factory Sgp4.fromTle(String line1, String line2) {
    final l1 = line1.trimRight();
    final l2 = line2.trimRight();
    if (l1.length < 63 || l2.length < 63 || !l1.startsWith('1') || !l2.startsWith('2')) {
      throw const FormatException('Not a TLE');
    }
    try {
      var year = int.parse(l1.substring(18, 20).trim());
      year += year < 57 ? 2000 : 1900;
      final days = double.parse(l1.substring(20, 32).trim());
      final epoch = DateTime.utc(year).add(
        Duration(microseconds: ((days - 1) * 86400 * 1e6).round()),
      );
      final sat = Sgp4._(epoch);

      final b = l1.substring(53, 61).trim();
      var sign = 1.0;
      var digits = b;
      if (digits.startsWith('-')) {
        sign = -1.0;
        digits = digits.substring(1);
      } else if (digits.startsWith('+')) {
        digits = digits.substring(1);
      }
      final mantissa = double.parse('0.${digits.substring(0, digits.length - 2)}');
      final exponent = int.parse(digits.substring(digits.length - 2));
      sat._bstar = sign * mantissa * math.pow(10, exponent);

      sat._inclo = double.parse(l2.substring(8, 16).trim()) * math.pi / 180;
      sat._nodeo = double.parse(l2.substring(17, 25).trim()) * math.pi / 180;
      sat._ecco = double.parse('0.${l2.substring(26, 33).trim()}');
      sat._argpo = double.parse(l2.substring(34, 42).trim()) * math.pi / 180;
      sat._mo = double.parse(l2.substring(43, 51).trim()) * math.pi / 180;
      sat._no = double.parse(l2.substring(52, 63).trim()) * _twoPi / 1440.0;
      sat._init();
      return sat;
    } on FormatException {
      throw const FormatException('Not a TLE');
    } on RangeError {
      throw const FormatException('Not a TLE');
    }
  }

  /// The moment (UTC) the orbit data is for.
  final DateTime epoch;

  double _bstar = 0, _inclo = 0, _nodeo = 0, _ecco = 0, _argpo = 0, _mo = 0, _no = 0;

  // Values worked out once by _init.
  bool _isimp = false;
  double _eta = 0, _cc1 = 0, _cc4 = 0, _cc5 = 0;
  double _mdot = 0, _argpdot = 0, _nodedot = 0, _omgcof = 0, _xmcof = 0;
  double _nodecf = 0, _t2cof = 0, _xlcof = 0, _aycof = 0, _delmo = 0, _sinmao = 0;
  double _x7thm1 = 0, _con41 = 0, _x1mth2 = 0;
  double _d2 = 0, _d3 = 0, _d4 = 0, _t3cof = 0, _t4cof = 0, _t5cof = 0;

  void _init() {
    const re = earthRadiusKm;
    final xke = _xke;
    const ss = 78.0 / re + 1.0;
    final qzms2t = math.pow((120.0 - 78.0) / re, 4).toDouble();
    final ecco = _ecco, inclo = _inclo, bstar = _bstar, argpo = _argpo, mo = _mo;
    var no = _no;

    final eccsq = ecco * ecco;
    final omeosq = 1.0 - eccsq;
    final rteosq = math.sqrt(omeosq);
    final cosio = math.cos(inclo);
    final cosio2 = cosio * cosio;
    final ak = math.pow(xke / no, _x2o3).toDouble();
    final d1 = 0.75 * _j2 * (3.0 * cosio2 - 1.0) / (rteosq * omeosq);
    var del = d1 / (ak * ak);
    final adel = ak * (1.0 - del * del - del * (1.0 / 3.0 + 134.0 * del * del / 81.0));
    del = d1 / (adel * adel);
    no = no / (1.0 + del);
    _no = no;
    final ao = math.pow(xke / no, _x2o3).toDouble();
    final sinio = math.sin(inclo);
    final po = ao * omeosq;
    final con42 = 1.0 - 5.0 * cosio2;
    _con41 = -con42 - cosio2 - cosio2;
    final posq = po * po;
    final rp = ao * (1.0 - ecco);
    _isimp = rp < (220.0 / re + 1.0);

    var sfour = ss;
    var qzms24 = qzms2t;
    final perige = (rp - 1.0) * re;
    if (perige < 156.0) {
      sfour = perige - 78.0;
      if (perige < 98.0) {
        sfour = 20.0;
      }
      qzms24 = math.pow((120.0 - sfour) / re, 4).toDouble();
      sfour = sfour / re + 1.0;
    }
    final pinvsq = 1.0 / posq;
    final tsi = 1.0 / (ao - sfour);
    _eta = ao * ecco * tsi;
    final etasq = _eta * _eta;
    final eeta = ecco * _eta;
    final psisq = (1.0 - etasq).abs();
    final coef = qzms24 * math.pow(tsi, 4).toDouble();
    final coef1 = coef / math.pow(psisq, 3.5).toDouble();
    final cc2 = coef1 *
        no *
        (ao * (1.0 + 1.5 * etasq + eeta * (4.0 + etasq)) +
            0.375 * _j2 * tsi / psisq * _con41 * (8.0 + 3.0 * etasq * (8.0 + etasq)));
    _cc1 = bstar * cc2;
    var cc3 = 0.0;
    if (ecco > 1.0e-4) {
      cc3 = -2.0 * coef * tsi * _j3oj2 * no * sinio / ecco;
    }
    _x1mth2 = 1.0 - cosio2;
    _cc4 = 2.0 *
        no *
        coef1 *
        ao *
        omeosq *
        (_eta * (2.0 + 0.5 * etasq) +
            ecco * (0.5 + 2.0 * etasq) -
            _j2 *
                tsi /
                (ao * psisq) *
                (-3.0 * _con41 * (1.0 - 2.0 * eeta + etasq * (1.5 - 0.5 * eeta)) +
                    0.75 *
                        _x1mth2 *
                        (2.0 * etasq - eeta * (1.0 + etasq)) *
                        math.cos(2.0 * argpo)));
    _cc5 = 2.0 * coef1 * ao * omeosq * (1.0 + 2.75 * (etasq + eeta) + eeta * etasq);
    final cosio4 = cosio2 * cosio2;
    final temp1 = 1.5 * _j2 * pinvsq * no;
    final temp2 = 0.5 * temp1 * _j2 * pinvsq;
    final temp3 = -0.46875 * _j4 * pinvsq * pinvsq * no;
    _mdot = no +
        0.5 * temp1 * rteosq * _con41 +
        0.0625 * temp2 * rteosq * (13.0 - 78.0 * cosio2 + 137.0 * cosio4);
    _argpdot = -0.5 * temp1 * con42 +
        0.0625 * temp2 * (7.0 - 114.0 * cosio2 + 395.0 * cosio4) +
        temp3 * (3.0 - 36.0 * cosio2 + 49.0 * cosio4);
    final xhdot1 = -temp1 * cosio;
    _nodedot = xhdot1 +
        (0.5 * temp2 * (4.0 - 19.0 * cosio2) + 2.0 * temp3 * (3.0 - 7.0 * cosio2)) * cosio;
    _omgcof = bstar * cc3 * math.cos(argpo);
    _xmcof = 0.0;
    if (ecco > 1.0e-4) {
      _xmcof = -_x2o3 * coef * bstar / eeta;
    }
    _nodecf = 3.5 * omeosq * xhdot1 * _cc1;
    _t2cof = 1.5 * _cc1;
    if ((cosio + 1.0).abs() > 1.5e-12) {
      _xlcof = -0.25 * _j3oj2 * sinio * (3.0 + 5.0 * cosio) / (1.0 + cosio);
    } else {
      _xlcof = -0.25 * _j3oj2 * sinio * (3.0 + 5.0 * cosio) / 1.5e-12;
    }
    _aycof = -0.5 * _j3oj2 * sinio;
    _delmo = math.pow(1.0 + _eta * math.cos(mo), 3).toDouble();
    _sinmao = math.sin(mo);
    _x7thm1 = 7.0 * cosio2 - 1.0;

    if (!_isimp) {
      final cc1sq = _cc1 * _cc1;
      _d2 = 4.0 * ao * tsi * cc1sq;
      final temp = _d2 * tsi * _cc1 / 3.0;
      _d3 = (17.0 * ao + sfour) * temp;
      _d4 = 0.5 * temp * ao * tsi * (221.0 * ao + 31.0 * sfour) * _cc1;
      _t3cof = _d2 + 2.0 * cc1sq;
      _t4cof = 0.25 * (3.0 * _d3 + _cc1 * (12.0 * _d2 + 10.0 * cc1sq));
      _t5cof = 0.2 * (3.0 * _d4 + 12.0 * _cc1 * _d3 + 6.0 * _d2 * _d2 + 15.0 * cc1sq * (2.0 * _d2 + cc1sq));
    }
  }

  /// Position and velocity [minutes] after the epoch. Returns null when the
  /// orbit data cannot be used that far from its epoch.
  Teme? propagate(double minutes) {
    final xke = _xke;
    final t = minutes;
    final vk = earthRadiusKm * xke / 60.0;

    final xmdf = _mo + _mdot * t;
    final argpdf = _argpo + _argpdot * t;
    final nodedf = _nodeo + _nodedot * t;
    var argpm = argpdf;
    var mm = xmdf;
    final t2 = t * t;
    var nodem = nodedf + _nodecf * t2;
    var tempa = 1.0 - _cc1 * t;
    var tempe = _bstar * _cc4 * t;
    var templ = _t2cof * t2;

    if (!_isimp) {
      final delomg = _omgcof * t;
      final delm = _xmcof * (math.pow(1.0 + _eta * math.cos(xmdf), 3).toDouble() - _delmo);
      final temp = delomg + delm;
      mm = xmdf + temp;
      argpm = argpdf - temp;
      final t3 = t2 * t;
      final t4 = t3 * t;
      tempa = tempa - _d2 * t2 - _d3 * t3 - _d4 * t4;
      tempe = tempe + _bstar * _cc5 * (math.sin(mm) - _sinmao);
      templ = templ + _t3cof * t3 + t4 * (_t4cof + t * _t5cof);
    }

    var nm = _no;
    var em = _ecco;
    final inclm = _inclo;
    final am = math.pow(xke / nm, _x2o3).toDouble() * tempa * tempa;
    nm = xke / math.pow(am, 1.5).toDouble();
    em = em - tempe;
    if (em >= 1.0 || em < -0.001 || am <= 0) {
      return null;
    }
    if (em < 1e-6) {
      em = 1e-6;
    }
    mm = mm + _no * templ;
    var xlm = mm + argpm + nodem;
    nodem = nodem % _twoPi;
    argpm = argpm % _twoPi;
    xlm = xlm % _twoPi;
    mm = (xlm - argpm - nodem) % _twoPi;

    final cosim = math.cos(inclm);
    final sinim = math.sin(inclm);
    final ep = em;
    final xincp = inclm;
    final argpp = argpm;
    final nodep = nodem;
    final mp = mm;
    final sinip = sinim;
    final cosip = cosim;

    final axnl = ep * math.cos(argpp);
    var temp = 1.0 / (am * (1.0 - ep * ep));
    final aynl = ep * math.sin(argpp) + temp * _aycof;
    final xl = mp + argpp + nodep + temp * _xlcof * axnl;

    final u = (xl - nodep) % _twoPi;
    var eo1 = u;
    var tem5 = 9999.9;
    var ktr = 1;
    var sineo1 = 0.0, coseo1 = 1.0;
    while (tem5.abs() >= 1e-12 && ktr <= 10) {
      sineo1 = math.sin(eo1);
      coseo1 = math.cos(eo1);
      tem5 = 1.0 - coseo1 * axnl - sineo1 * aynl;
      tem5 = (u - aynl * coseo1 + axnl * sineo1 - eo1) / tem5;
      if (tem5.abs() >= 0.95) {
        tem5 = tem5 > 0.0 ? 0.95 : -0.95;
      }
      eo1 = eo1 + tem5;
      ktr += 1;
    }

    final ecose = axnl * coseo1 + aynl * sineo1;
    final esine = axnl * sineo1 - aynl * coseo1;
    final el2 = axnl * axnl + aynl * aynl;
    final pl = am * (1.0 - el2);
    if (pl < 0.0) {
      return null;
    }
    final rl = am * (1.0 - ecose);
    final rdotl = math.sqrt(am) * esine / rl;
    final rvdotl = math.sqrt(pl) / rl;
    final betal = math.sqrt(1.0 - el2);
    temp = esine / (1.0 + betal);
    final sinu = am / rl * (sineo1 - aynl - axnl * temp);
    final cosu = am / rl * (coseo1 - axnl + aynl * temp);
    var su = math.atan2(sinu, cosu);
    final sin2u = (cosu + cosu) * sinu;
    final cos2u = 1.0 - 2.0 * sinu * sinu;
    temp = 1.0 / pl;
    final temp1 = 0.5 * _j2 * temp;
    final temp2 = temp1 * temp;

    final mrt = rl * (1.0 - 1.5 * temp2 * betal * _con41) + 0.5 * temp1 * _x1mth2 * cos2u;
    su = su - 0.25 * temp2 * _x7thm1 * sin2u;
    final xnode = nodep + 1.5 * temp2 * cosip * sin2u;
    final xinc = xincp + 1.5 * temp2 * cosip * sinip * cos2u;
    final mvt = rdotl - nm * temp1 * _x1mth2 * sin2u / xke;
    final rvdot = rvdotl + nm * temp1 * (_x1mth2 * cos2u + 1.5 * _con41) / xke;

    final sinsu = math.sin(su);
    final cossu = math.cos(su);
    final snod = math.sin(xnode);
    final cnod = math.cos(xnode);
    final sini = math.sin(xinc);
    final cosi = math.cos(xinc);
    final xmx = -snod * cosi;
    final xmy = cnod * cosi;
    final ux = xmx * sinsu + cnod * cossu;
    final uy = xmy * sinsu + snod * cossu;
    final uz = sini * sinsu;
    final vx = xmx * cossu - cnod * sinsu;
    final vy = xmy * cossu - snod * sinsu;
    final vz = sini * cossu;

    const re = earthRadiusKm;
    return Teme(
      mrt * re * ux,
      mrt * re * uy,
      mrt * re * uz,
      (mvt * ux + rvdot * vx) * vk,
      (mvt * uy + rvdot * vy) * vk,
      (mvt * uz + rvdot * vz) * vk,
    );
  }

  /// Position and velocity at [time].
  Teme? at(DateTime time) =>
      propagate(time.toUtc().difference(epoch).inMicroseconds / 6e7);
}
