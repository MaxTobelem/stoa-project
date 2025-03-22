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

  /// First Name of the connected user
  String _FirstName = '';
  String get FirstName => _FirstName;
  set FirstName(String value) {
    _FirstName = value;
  }

  /// Last Name of the connected user
  String _LastName = '';
  String get LastName => _LastName;
  set LastName(String value) {
    _LastName = value;
  }
}
