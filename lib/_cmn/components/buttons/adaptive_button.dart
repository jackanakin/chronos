import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../extensions/build_context/cmn_module.dart';
import '../../utilities/platform_utilities.dart';

enum AdaptiveButtonType { filled }

class AdaptiveButton extends StatelessWidget {
  const AdaptiveButton({
    super.key,
    // required
    required this.child,
    required this.onPressed,
    // not required
    this.constraints,
    // type
    required this.type,
  });

  const AdaptiveButton.filled({
    key,
    // required
    child,
    onPressed,
    // not required
    constraints,
  }) : this(
          key: key,
          child: child,
          onPressed: onPressed,
          constraints: constraints,
          type: AdaptiveButtonType.filled,
        );

  final Widget child;
  final Function() onPressed;
  final AdaptiveButtonType type;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AdaptiveButtonType.filled:
        return AdaptiveFilledButtonBuilder(context, this).build();
    }
  }
}

class AdaptiveFilledButtonBuilder {
  AdaptiveFilledButtonBuilder(this.context, this.widget);

  final BuildContext context;
  final bool isIos = PlatformUtilities().isIos;

  final AdaptiveButton widget;

  CupertinoButton get buildIos {
    return CupertinoButton.filled(
      onPressed: widget.onPressed,
      child: widget.child,
    );
  }

  Widget get buildAndroid {
    return FloatingActionButton.extended(
        foregroundColor: context.cmnWithContext.colors.background,
        backgroundColor: context.cmnWithContext.colors.primary,
        onPressed: widget.onPressed,
        label: widget.child);
  }

  Widget build() {
    return ConstrainedBox(
        constraints: widget.constraints ??
            const BoxConstraints.tightFor(width: 200, height: 50),
        child: isIos ? buildIos : buildAndroid);
  }
}
