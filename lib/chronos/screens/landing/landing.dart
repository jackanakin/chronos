import 'package:chronos/_cmn/utilities/component_utilities.dart';
import 'package:chronos/chronos/components/buttons/custom_primary_button.dart';
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
        padding: ComponentUtilities().getPadding,
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
                const Text(
                  'The Boys App',
                  style: TextStyle(
                    fontFamily: 'ArchivoBlack',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 320,
            ),
            const Text(
              'Bem vindo',
              style: TextStyle(
                fontFamily: 'ArchivoBlack',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
            const Text(
              'The Boys',
              style: TextStyle(
                fontFamily: 'ArchivoBlack',
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              'Barber Shop',
              style: TextStyle(
                fontFamily: 'ArchivoBlack',
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: double.infinity,
                child: PrimaryButton(
                  onPressed: () => null,
                  child: const Text('Agendar'),
                )),
          ],
        ) /* add child content here */,
      ),
    );
  }
}
