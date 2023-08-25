import 'package:chronos/_cmn/components/buttons/adaptive_button.dart';
import 'package:chronos/_cmn/components/images/adaptive_image.dart';
import 'package:chronos/_cmn/components/inputs/adaptive_text_form_field.dart';
import 'package:chronos/_cmn/formatters/phone_formatter.dart';
import 'package:chronos/_cmn/utilities/component_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInState();
}

class _SignInState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final phoneFormatter = PhoneFormatter();

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: SingleChildScrollView(
        padding: ComponentUtilities().getPadding,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const AdaptiveImage.themed(
              path: 'images/logo.png',
              height: 125,
              width: 100,
            ),
            const SizedBox(
              height: 100,
            ),
            Form(
              child: Column(children: [
                AdaptiveTextFormField(
                  // onChanged: (p0) => "hell",
                  labelText: "Telefone",
                  hintText: "(DD) XXXXXXXXX",
                  keyboardType: TextInputType.phone,
                  prefixIcon: Icon(
                    FontAwesomeIcons.whatsapp,
                    color: colorScheme.onBackground,
                  ),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(11),
                    phoneFormatter,
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                AdaptiveButton.filled(
                  onPressed: () {},
                  child: const Text('Entrar'),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
