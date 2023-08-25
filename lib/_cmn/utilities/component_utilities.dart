import 'package:flutter/widgets.dart';

class ComponentUtilities {
  // Private constructor prevents direct instantiation from outside the class.
  ComponentUtilities._();

  // Static instance variable to hold the single instance of the class.
  static final ComponentUtilities _instance = ComponentUtilities._();

  // Factory constructor to provide access to the single instance.
  factory ComponentUtilities() {
    return _instance;
  }

  EdgeInsets get getPadding => const EdgeInsets.all(20);
}
