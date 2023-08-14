import 'package:flutter/widgets.dart';

class ScreenComponents {
  // Private constructor prevents direct instantiation from outside the class.
  ScreenComponents._();

  // Static instance variable to hold the single instance of the class.
  static final ScreenComponents _instance = ScreenComponents._();

  // Factory constructor to provide access to the single instance.
  factory ScreenComponents() {
    return _instance;
  }

  EdgeInsets get getPadding => const EdgeInsets.all(16);
}
