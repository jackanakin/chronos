import 'package:flutter/material.dart';

class TextUtilities {
  // Private constructor prevents direct instantiation from outside the class.
  TextUtilities._();

  // Static instance variable to hold the single instance of the class.
  static final TextUtilities _instance = TextUtilities._();
  static late BuildContext _instanceContext;

  // Factory constructor to provide access to the single instance.
  factory TextUtilities(BuildContext context) {
    _instanceContext = context;

    return _instance;
  }

  TextStyle? get titleLarge => Theme.of(_instanceContext).textTheme.titleLarge;
}
