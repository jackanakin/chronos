import 'package:flutter/material.dart';

import '../../utilities/color_utilities.dart';

class CommonModule {
  // Private constructor prevents direct instantiation from outside the class.
  CommonModule._();

  // Static instance variable to hold the single instance of the class.
  static final CommonModule _instance = CommonModule._();
  static late BuildContext instanceContext;

  // Factory constructor to provide access to the single instance.
  factory CommonModule() {
    return _instance;
  }

  // Factory constructor to provide access to the single instance.
  factory CommonModule.withContext(BuildContext context) {
    instanceContext = context;

    return _instance;
  }

  ColorUtilities get colors => ColorUtilities(instanceContext);
}

extension BuildContextEntension<T> on BuildContext {
  CommonModule get cmn => CommonModule();
  CommonModule get cmnWithContext => CommonModule.withContext(this);
}
