import 'dart:async';

import 'package:flutter/material.dart';

class AppScreens {
  /// class for all app pages
  static const int redScreen = 0;
  static const int greenScreen = 1;
  static const int blueScreen = 2;
}

class AppStateManager extends ChangeNotifier {
  ///app states
  bool _initialized = false;
  int _currentScreen = AppScreens.redScreen;

  ///

  bool get isInitialized => _initialized;
  int get getCurrentScreen => _currentScreen;

  ///working out wich state appStateManeger will have
  void initializeApp() {
    Timer(const Duration(milliseconds: 2000), () {
      _initialized = true;
      notifyListeners();
    });
  }

  void goToRedScreen() {
    _currentScreen = AppScreens.redScreen;
    notifyListeners();
  }

  void goToGreenScreen() {
    _currentScreen = AppScreens.greenScreen;
    notifyListeners();
  }

  void goToBlueScreen() {
    _currentScreen = AppScreens.blueScreen;
    notifyListeners();
  }
}
