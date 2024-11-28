import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _idPersonal = 0;
  int get idPersonal => _idPersonal;
  set idPersonal(int value) {
    _idPersonal = value;
  }

  int _idcp = 0;
  int get idcp => _idcp;
  set idcp(int value) {
    _idcp = value;
  }

  int _idce = 0;
  int get idce => _idce;
  set idce(int value) {
    _idce = value;
  }

  int _idm = 0;
  int get idm => _idm;
  set idm(int value) {
    _idm = value;
  }

  String _mostrarErrorSexo = 'false';
  String get mostrarErrorSexo => _mostrarErrorSexo;
  set mostrarErrorSexo(String value) {
    _mostrarErrorSexo = value;
  }

  String _textoFechaNacimiento = ' ';
  String get textoFechaNacimiento => _textoFechaNacimiento;
  set textoFechaNacimiento(String value) {
    _textoFechaNacimiento = value;
  }

  String _mostrarErrorCmbRol = 'false';
  String get mostrarErrorCmbRol => _mostrarErrorCmbRol;
  set mostrarErrorCmbRol(String value) {
    _mostrarErrorCmbRol = value;
  }

  int _idPlanPro = 0;
  int get idPlanPro => _idPlanPro;
  set idPlanPro(int value) {
    _idPlanPro = value;
  }

  String _respLogin = '';
  String get respLogin => _respLogin;
  set respLogin(String value) {
    _respLogin = value;
  }

  String _rolMenu = '';
  String get rolMenu => _rolMenu;
  set rolMenu(String value) {
    _rolMenu = value;
  }

  String _nombreMenu = '';
  String get nombreMenu => _nombreMenu;
  set nombreMenu(String value) {
    _nombreMenu = value;
  }
}
