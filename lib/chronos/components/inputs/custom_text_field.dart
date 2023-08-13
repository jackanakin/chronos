import 'package:chronos/_cmn/components/inputs/adaptive_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAdaptiveTextFormField extends AdaptiveTextFormField {
  const CustomAdaptiveTextFormField({
    super.key,
    String labelText = '',
    String hintText = '',
    Icon? prefixIcon,
    TextInputType? keyboardType,
    List<TextInputFormatter>? inputFormatters,
    Function(String)? onChanged,
    Function(String)? onSaved,
  }) : super(
          labelText: labelText,
          hintText: hintText,
          prefixIcon: prefixIcon,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          onChanged: onChanged,
          onSaved: onSaved,
        );

  @override
  Widget build(BuildContext context) {
    return CustomAdaptiveTextFormFieldBuilder(context, this).build();
  }
}

class CustomAdaptiveTextFormFieldBuilder extends AdaptiveTextFormFieldBuilder {
  CustomAdaptiveTextFormFieldBuilder(super.context, super.widget);

  @override
  TextFormField build() {
    widget.hintText;
    return super.build();
  }
}
