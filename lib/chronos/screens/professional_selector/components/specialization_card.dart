import 'package:chronos/chronos/models/professional.dart';
import 'package:flutter/material.dart';

class SpecializationCard extends StatelessWidget {
  const SpecializationCard({
    super.key,
    required this.specialization,
  });

  final ProfessionalSpecialization specialization;

  @override
  Widget build(BuildContext context) {
    return SpecializationCardBuilder(context, this).build();
  }
}

class SpecializationCardBuilder {
  SpecializationCardBuilder(this.context, this.widget);

  final BuildContext context;

  final SpecializationCard widget;

  Widget build() {
    return Column(
      children: [
        CircleAvatar(
          radius: 36,
          backgroundImage: NetworkImage(widget.specialization.image),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(widget.specialization.name,
            style: const TextStyle(
              fontFamily: 'ArchivoBlack',
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ],
    );
  }
}
