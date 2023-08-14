import 'package:chronos/_cmn/themes/default.dart';
import 'package:chronos/_cmn/utilities/platform_utilities.dart';
import 'package:chronos/chronos/screens/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    PlatformUtilities().setThemeMode = ThemeMode.light;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: PlatformUtilities().getThemeMode,
      home: const HomeScreen(),
    );
  }
}
