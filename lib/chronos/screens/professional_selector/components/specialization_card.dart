import 'package:chronos/_cmn/components/misc/lazy_text.dart';
import 'package:chronos/_cmn/extensions/build_context/cmn_module.dart';
import 'package:chronos/chronos/models/professional.dart';
import 'package:flutter/material.dart';

class SpecializationCard extends StatelessWidget {
  const SpecializationCard({
    super.key,
    required this.specialization,
  });

  final ProfessionalSpecialization? specialization;

  @override
  Widget build(BuildContext context) {
    return SpecializationCardBuilder(context, this).build();
  }
}

class SpecializationCardBuilder {
  SpecializationCardBuilder(this.context, this.widget);

  final BuildContext context;

  final SpecializationCard widget;

  get textStyle => TextStyle(
        fontFamily: 'ArchivoBlack',
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: context.cmn.colors.onPrimaryContainer,
      );

  Widget build() {
    return Column(
      children: [
        CircleAvatar(
          radius: 36,
          backgroundImage: widget.specialization != null
              ? NetworkImage(widget.specialization!.image)
              : null,
          backgroundColor: context.cmn.colors.tertiaryContainer,
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 90,
          height: 25,
          child: LazyText(
            lines: 1,
            textStyle: textStyle,
            text: widget.specialization?.name,
          ),
        )
      ],
    );
  }
}
