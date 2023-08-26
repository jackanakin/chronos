import 'package:flutter/material.dart';

import '../../_cmn/extensions/build_context/cmn_module.dart';
import 'color_utilities.dart';

class AnimationUtilities {
  // Private constructor prevents direct instantiation from outside the class.
  AnimationUtilities._();

  // Static instance variable to hold the single instance of the class.
  static final AnimationUtilities _instance = AnimationUtilities._();
  static late BuildContext _instanceContext;

  // Factory constructor to provide access to the single instance.
  factory AnimationUtilities(BuildContext context) {
    _instanceContext = context;

    return _instance;
  }

  factory AnimationUtilities.noContext() => _instance;

  AnimationController newController(TickerProvider widget) =>
      AnimationController(
          duration: const Duration(seconds: 1),
          reverseDuration: const Duration(seconds: 1),
          vsync: widget);

  Animation<Color?> newLazyAnimation(
          AnimationController controller, VoidCallback listener) =>
      ColorTween(
              begin: _instanceContext.cmn.colors.tertiaryContainer,
              end: ColorUtilities(_instanceContext)
                  .darken(_instanceContext.cmn.colors.tertiaryContainer, 3))
          .animate(controller)
        ..addListener(listener);
}
