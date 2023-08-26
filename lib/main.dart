import 'package:flutter/material.dart';

import 'package:chronos/_cmn/themes/default.dart';
import 'package:chronos/chronos/screens/landing/landing.dart';
import 'package:chronos/chronos/screens/professional_selector/professional_selector.dart';

import 'chronos/utilities/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Boys Barbearia',
      theme: lightTheme,
      routes: {
        AppRoutes.homeScreen: (ctx) => const LandingScreen(),
        AppRoutes.professionalSelectScreen: (ctx) =>
            const ProfessionalSelectorScreen(),
      },
    );
  }
}
