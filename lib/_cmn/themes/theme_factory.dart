import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData makeAppTheme(ColorScheme colorScheme) {
  final inputDecorationTheme = InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: colorScheme.secondary)),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: colorScheme.primary)),
      alignLabelWithHint: true);

  final textTheme =
      GoogleFonts.robotoTextTheme().apply(bodyColor: colorScheme.onBackground);


  return ThemeData(
      useMaterial3: true,
      inputDecorationTheme: inputDecorationTheme,
      colorScheme: colorScheme,
      textTheme: textTheme);
}