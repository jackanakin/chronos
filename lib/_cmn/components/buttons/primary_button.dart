import 'package:flutter/material.dart';

import '../../extensions/build_context/cmn_module.dart';

enum Mode { primary, secondary }

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key,
      required this.child,
      required this.onPressed,
      this.mode = Mode.primary});

  final Widget child;
  final Function() onPressed;
  final Mode mode;

  @override
  Widget build(BuildContext context) {
    return PrimaryButtonBuilder(context, this).build();
  }
}

class PrimaryButtonBuilder {
  PrimaryButtonBuilder(this.context, this.widget);

  final BuildContext context;

  final PrimaryButton widget;

  Widget build() {
    Color background = widget.mode == Mode.primary
        ? context.cmn.colors.primary
        : context.cmn.colors.tertiary;

    return SizedBox(
        child: FloatingActionButton.extended(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            foregroundColor: context.cmn.colors.onPrimary,
            backgroundColor: background,
            onPressed: widget.onPressed,
            label: widget.child));
  }
}
