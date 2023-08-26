import 'package:chronos/_cmn/extensions/build_context/cmn_module.dart';
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

  EdgeInsets get getScreenPadding => const EdgeInsets.all(20);

  BorderRadius get getBorderRadius => BorderRadius.circular(10);

  double get getIconSize => 20;

  SizedBox get getVerticalMargin => const SizedBox(
        height: 5,
      );

  TextStyle getNormalDescritpion(BuildContext context,
          {double fontSize = 13}) =>
      TextStyle(
        fontFamily: 'Roboto',
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
        color: context.cmn.colors.onPrimaryContainer,
      );

  TextStyle getBoldTitle(BuildContext context,
          {double fontSize = 12, Color? color}) =>
      TextStyle(
        fontFamily: 'ArchivoBlack',
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: color ?? context.cmn.colors.onPrimaryContainer,
      );

  TextStyle getNormalTitle(BuildContext context, {double fontSize = 20}) =>
      TextStyle(
        fontFamily: 'ArchivoBlack',
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
        color: context.cmn.colors.onPrimaryContainer,
      );

  TextStyle getNormalSubtitle(BuildContext context, {double fontSize = 15}) =>
      TextStyle(
        fontFamily: 'Roboto-Medium',
        fontSize: 15,
        fontWeight: FontWeight.normal,
        color: context.cmn.colors.onPrimaryContainer.withOpacity(0.4),
      );
}
