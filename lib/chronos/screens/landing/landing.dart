import 'package:chronos/_cmn/components/buttons/primary_button.dart';
import 'package:chronos/chronos/utilities/app_routes.dart';
import 'package:chronos/chronos/utilities/component_utilities.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingState();
}

class _LandingState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: ComponentUtilities().getScreenPadding,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/neutral/images/landing.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Image.asset("assets/neutral/images/scissors.png"),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'The Boys App',
                  style: ComponentUtilities()
                      .getBoldTitle(context, fontSize: 28, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 320,
            ),
            Text(
              'Bem vindo',
              style: ComponentUtilities()
                  .getBoldTitle(context, fontSize: 24, color: Colors.white70),
            ),
            Text(
              'The Boys',
              style: ComponentUtilities()
                  .getBoldTitle(context, fontSize: 38, color: Colors.white),
            ),
            Text(
              'Barber Shop',
              style: ComponentUtilities()
                  .getBoldTitle(context, fontSize: 38, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: double.infinity,
                child: PrimaryButton(
                  onPressed: () => Navigator.pushNamed(
                      context, AppRoutes.professionalSelectScreen),
                  child: const Text('Agendar'),
                )),
          ],
        ) /* add child content here */,
      ),
    );
  }
}
