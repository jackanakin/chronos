import 'dart:io';

import 'package:flutter/material.dart';

class PlatformUtilities {
  // Private constructor prevents direct instantiation from outside the class.
  PlatformUtilities._();

  // Static instance variable to hold the single instance of the class.
  static final PlatformUtilities _instance = PlatformUtilities._();

  // my variables
  static ThemeMode _themeMode = ThemeMode.light;

  // Factory constructor to provide access to the single instance.
  factory PlatformUtilities() {
    return _instance;
  }

  set setThemeMode(ThemeMode newThemeMode) => _themeMode = newThemeMode;
  ThemeMode get getThemeMode => _themeMode;

  // Your methods and properties here.
  bool get isIos => Platform.isIOS;
}
