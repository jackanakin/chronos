import 'package:flutter/material.dart';

class ColorUtilities {
  // Private constructor prevents direct instantiation from outside the class.
  ColorUtilities._();

  // Static instance variable to hold the single instance of the class.
  static final ColorUtilities _instance = ColorUtilities._();
  static late BuildContext _instanceContext;

  // Factory constructor to provide access to the single instance.
  factory ColorUtilities(BuildContext context) {
    _instanceContext = context;

    return _instance;
  }

  /// Darken a color by [percent] amount (100 = black)
  // ........................................................
  Color darken(Color c, [int percent = 10]) {
      assert(1 <= percent && percent <= 100);
      var f = 1 - percent / 100;
      return Color.fromARGB(
          c.alpha,
          (c.red * f).round(),
          (c.green  * f).round(),
          (c.blue * f).round()
      );
  }

  /// Lighten a color by [percent] amount (100 = white)
  // ........................................................
  Color lighten(Color c, [int percent = 10]) {
      assert(1 <= percent && percent <= 100);
      var p = percent / 100;
      return Color.fromARGB(
          c.alpha,
          c.red + ((255 - c.red) * p).round(),
          c.green + ((255 - c.green) * p).round(),
          c.blue + ((255 - c.blue) * p).round()
      );
  }

  Color get primaryColor => Theme.of(_instanceContext).primaryColor;

  Color get primaryColorDark => Theme.of(_instanceContext).primaryColorDark;

  Color get primaryColorLight => Theme.of(_instanceContext).primaryColorLight;

  Color get primary => Theme.of(_instanceContext).colorScheme.primary;

  Color get onPrimary => Theme.of(_instanceContext).colorScheme.onPrimary;

  Color get onPrimaryContainer => Theme.of(_instanceContext).colorScheme.onPrimaryContainer;

  Color get secondary => Theme.of(_instanceContext).colorScheme.secondary;

  Color get onSecondary => Theme.of(_instanceContext).colorScheme.onSecondary;

  Color get cardColor => Theme.of(_instanceContext).cardColor;

  Color get errorColor => Theme.of(_instanceContext).colorScheme.error;

  Color get background => Theme.of(_instanceContext).colorScheme.background;

  Color get onBackground => Theme.of(_instanceContext).colorScheme.onBackground;

  Color get tertiary => Theme.of(_instanceContext).colorScheme.tertiary;

  Color get tertiaryContainer => Theme.of(_instanceContext).colorScheme.tertiaryContainer;
}
