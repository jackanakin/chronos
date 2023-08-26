import 'package:chronos/_cmn/extensions/build_context/cmn_module.dart';
import 'package:chronos/chronos/utilities/component_utilities.dart';
import 'package:chronos/chronos/components/app/app_bar.dart';
import 'package:flutter/material.dart';

class ServiceSelectorScreen extends StatefulWidget {
  const ServiceSelectorScreen({super.key});

  @override
  State<ServiceSelectorScreen> createState() => _ServiceSelectorScreenState();
}

class _ServiceSelectorScreenState extends State<ServiceSelectorScreen> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = context.cmn.colors;

    return Scaffold(
      appBar: customAppBar,
      backgroundColor: colorScheme.background,
      body: SingleChildScrollView(
        padding: ComponentUtilities().getScreenPadding,
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}
