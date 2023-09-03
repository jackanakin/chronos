import 'dart:io';

import 'package:flutter/cupertino.dart';
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

  void showMessage(BuildContext context, Widget content) {
    if (PlatformUtilities().isIos) {
      showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          content: content,
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              isDestructiveAction: false,
              onPressed: () {
                Navigator.pop(context);
              },
              textStyle: const TextStyle(color: Colors.blue),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: content,
        duration: const Duration(seconds: 3),
        showCloseIcon: true,
        padding: const EdgeInsets.symmetric(
          horizontal: 4.0,
        ),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.only(bottom: 100, left: 50, right: 50),
      ));
    }
  }
}
