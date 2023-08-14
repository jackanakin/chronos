import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../extensions/build_context/cmn_module.dart';
import '../../utilities/platform_utilities.dart';

class AdaptiveTextFormField extends StatelessWidget {
  const AdaptiveTextFormField({
    super.key,
    this.labelText = '',
    this.hintText = '',
    this.prefixIcon,
    this.keyboardType,
    this.inputFormatters,
    this.onChanged,
    this.onSaved,
  });

  final String labelText;
  final String hintText;
  final Icon? prefixIcon;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;
  final Function(String)? onSaved;

  @override
  Widget build(BuildContext context) {
    return AdaptiveTextFormFieldBuilder(context, this).build();
  }
}

class AdaptiveTextFormFieldBuilder {
  AdaptiveTextFormFieldBuilder(this.context, this.widget);

  final BuildContext context;
  final bool isIos = PlatformUtilities().isIos;

  final AdaptiveTextFormField widget;

  InputDecoration get androidDecoration {
    return InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon);
  }

  InputDecoration get iosDecoration {
    final colors = context.cmn.colors;

    final border = OutlineInputBorder(
      borderSide: BorderSide(color: colors.onBackground),
    );

    return InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        // ios
        border: border,
        enabledBorder: border,
        focusedBorder: border,
        filled: true,
        fillColor: colors.background,
        contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        labelStyle: TextStyle(color: context.cmn.colors.onBackground));
  }

  TextFormField build() {
    final decoration = isIos ? iosDecoration : androidDecoration;

    return TextFormField(
      onChanged: widget.onChanged,
      decoration: decoration,
      enableSuggestions: false,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.inputFormatters,
    );
  }
}
