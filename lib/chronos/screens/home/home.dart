import 'package:chronos/_cmn/components/images/box_fit_image.dart';
import 'package:chronos/_cmn/components/padding/screen_padding.dart';
import 'package:chronos/_cmn/extensions/build_context/cmn_module.dart';
import 'package:flutter/material.dart';

import 'components/service_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = context.cmn.colors;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFFebe6e7),
          titleSpacing: 0,
          toolbarHeight: 140,
          // toolbarHeight: 50,
          title: const BoxFitImage(path: 'images/home.png', fit: BoxFit.cover)),
      backgroundColor: colorScheme.background,
      body: SingleChildScrollView(
        padding: ScreenComponents().getPadding,
        child: Column(
          children: [
            ServiceCard(
              title: 'Cabelo',
              imagePath: 'images/haircut.png',
              onPressed: () {},
            ),
            ServiceCard(
              title: 'Barba',
              imagePath: 'images/beard.png',
              onPressed: () {},
            ),
            ServiceCard(
              title: 'Cabelo + Barba',
              imagePath: 'images/hair_beard.png',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
