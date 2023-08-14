import 'package:chronos/_cmn/utilities/text_utilities.dart';
import 'package:flutter/material.dart';

import '../../utilities/color_utilities.dart';

class CommonModule {
  // Private constructor prevents direct instantiation from outside the class.
  CommonModule._();

  // Static instance variable to hold the single instance of the class.
  static final CommonModule _instance = CommonModule._();
  static late BuildContext instanceContext;

  // Factory constructor to provide access to the single instance.
  factory CommonModule(BuildContext context) {
    instanceContext = context;

    return _instance;
  }

  ColorUtilities get colors => ColorUtilities(instanceContext);
  TextUtilities get texts => TextUtilities(instanceContext);
}

extension BuildContextEntension<T> on BuildContext {
  CommonModule get cmn => CommonModule(this);
}
