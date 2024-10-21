import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _tamaoempresa = prefs.getString('ff_tamaoempresa') ?? _tamaoempresa;
    });
    _safeInit(() {
      _nombreempresa = prefs.getString('ff_nombreempresa') ?? _nombreempresa;
    });
    _safeInit(() {
      _sectorempresa = prefs.getString('ff_sectorempresa') ?? _sectorempresa;
    });
    _safeInit(() {
      _objetivoprincipal =
          prefs.getString('ff_objetivoprincipal') ?? _objetivoprincipal;
    });
    _safeInit(() {
      _tipodeusario = prefs.getString('ff_tipodeusario') ?? _tipodeusario;
    });
    _safeInit(() {
      _funcionalidades =
          prefs.getString('ff_funcionalidades') ?? _funcionalidades;
    });
    _safeInit(() {
      _tecnologia = prefs.getString('ff_tecnologia') ?? _tecnologia;
    });
    _safeInit(() {
      _plataforma = prefs.getString('ff_plataforma') ?? _plataforma;
    });
    _safeInit(() {
      _presupuesto = prefs.getString('ff_presupuesto') ?? _presupuesto;
    });
    _safeInit(() {
      _entregasoft = prefs.getString('ff_entregasoft') ?? _entregasoft;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _clip = '';
  String get clip => _clip;
  set clip(String value) {
    _clip = value;
  }

  String _tamaoempresa = '';
  String get tamaoempresa => _tamaoempresa;
  set tamaoempresa(String value) {
    _tamaoempresa = value;
    prefs.setString('ff_tamaoempresa', value);
  }

  String _nombreempresa = '';
  String get nombreempresa => _nombreempresa;
  set nombreempresa(String value) {
    _nombreempresa = value;
    prefs.setString('ff_nombreempresa', value);
  }

  String _sectorempresa = '';
  String get sectorempresa => _sectorempresa;
  set sectorempresa(String value) {
    _sectorempresa = value;
    prefs.setString('ff_sectorempresa', value);
  }

  String _objetivoprincipal = '';
  String get objetivoprincipal => _objetivoprincipal;
  set objetivoprincipal(String value) {
    _objetivoprincipal = value;
    prefs.setString('ff_objetivoprincipal', value);
  }

  String _tipodeusario = '';
  String get tipodeusario => _tipodeusario;
  set tipodeusario(String value) {
    _tipodeusario = value;
    prefs.setString('ff_tipodeusario', value);
  }

  String _funcionalidades = '';
  String get funcionalidades => _funcionalidades;
  set funcionalidades(String value) {
    _funcionalidades = value;
    prefs.setString('ff_funcionalidades', value);
  }

  String _tecnologia = '';
  String get tecnologia => _tecnologia;
  set tecnologia(String value) {
    _tecnologia = value;
    prefs.setString('ff_tecnologia', value);
  }

  String _plataforma = '';
  String get plataforma => _plataforma;
  set plataforma(String value) {
    _plataforma = value;
    prefs.setString('ff_plataforma', value);
  }

  String _presupuesto = '';
  String get presupuesto => _presupuesto;
  set presupuesto(String value) {
    _presupuesto = value;
    prefs.setString('ff_presupuesto', value);
  }

  String _entregasoft = '';
  String get entregasoft => _entregasoft;
  set entregasoft(String value) {
    _entregasoft = value;
    prefs.setString('ff_entregasoft', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
