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

  Color get primaryColor => Theme.of(_instanceContext).primaryColor;

  Color get primaryColorDark => Theme.of(_instanceContext).primaryColorDark;

  Color get primaryColorLight => Theme.of(_instanceContext).primaryColorLight;

  Color get primary => Theme.of(_instanceContext).colorScheme.primary;

  Color get onPrimary => Theme.of(_instanceContext).colorScheme.onPrimary;

  Color get secondary => Theme.of(_instanceContext).colorScheme.secondary;

  Color get onSecondary => Theme.of(_instanceContext).colorScheme.onSecondary;

  Color get cardColor => Theme.of(_instanceContext).cardColor;

  Color get errorColor => Theme.of(_instanceContext).colorScheme.error;

  Color get background => Theme.of(_instanceContext).colorScheme.background;

  Color get onBackground => Theme.of(_instanceContext).colorScheme.onBackground;

  Color get tertiary => Theme.of(_instanceContext).colorScheme.tertiary;

  Color get tertiaryContainer => Theme.of(_instanceContext).colorScheme.tertiaryContainer;
}
