import 'package:chronos/_cmn/components/lists/horizontal_list_view.dart';
import 'package:chronos/_cmn/components/misc/lazy_description_text.dart';
import 'package:chronos/_cmn/extensions/build_context/cmn_module.dart';
import 'package:chronos/_cmn/patterns/mediator_interface.dart';
import 'package:chronos/_cmn/utilities/component_utilities.dart';
import 'package:chronos/chronos/_dummy_data/professionals.dart';
import 'package:chronos/chronos/components/buttons/custom_primary_button.dart';
import 'package:chronos/chronos/models/professional.dart';
import 'package:chronos/chronos/screens/professional_selector/components/professional_card.dart';
import 'package:chronos/chronos/screens/professional_selector/components/specialization_card.dart';
import 'package:flutter/material.dart';

class ProfessionalSelectorScreen extends StatefulWidget {
  const ProfessionalSelectorScreen({super.key});

  @override
  State<ProfessionalSelectorScreen> createState() =>
      _ProfessionalSelectorScreenState();
}

class _ProfessionalSelectorScreenState extends State<ProfessionalSelectorScreen>
    implements MediatorInterface<Professional> {
  late final Mediator<Professional> _professionalsCardMediator = Mediator(this);
  Professional? _selected;

  @override
  void onNotify(MediatorItem<Professional> sender) {
    setState(() {
      _selected = sender.isSelected ? sender.getValue : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.cmn.colors;

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: Container(
        padding: ComponentUtilities().getPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'The Boys Barbearia',
              style: TextStyle(
                fontFamily: 'ArchivoBlack',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Nº 2023, Lajeado - Rio Grande do Sul',
                  style: TextStyle(
                    fontFamily: 'Roboto-Medium',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black45,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: context.cmn.colors.tertiaryContainer,
                  radius: 20,
                  child: const Icon(Icons.map_outlined,
                      color: Colors.black, size: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Profissionais',
              style: TextStyle(
                fontFamily: 'ArchivoBlack',
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            HorizontalListView(
              height: 150,
              itemCount: professionals.length,
              itemBuilder: (context, index) => Container(
                key: ValueKey(professionals[index].getId),
                child: ProfessionalCard(
                  professional: professionals[index],
                  mediator: _professionalsCardMediator,
                ),
              ),
            ),
            Container(
              // alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(_selected?.fullname ?? 'Selecione um profissional',
                      style: const TextStyle(
                        fontFamily: 'ArchivoBlack',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  LazyDescriptionText(
                    lines: 5,
                    height: 115,
                    text: _selected?.description,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Specialidades',
                      style: const TextStyle(
                        fontFamily: 'ArchivoBlack',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  _selected != null
                      ? HorizontalListView(
                          height: 120,
                          itemCount: _selected!.specializtions.length,
                          itemBuilder: (context, index) => Container(
                            key: ValueKey(
                                _selected!.specializtions[index].getId),
                            child: SpecializationCard(
                              specialization: _selected!.specializtions[index],
                            ),
                          ),
                        )
                      : Container(),
                  SizedBox(
                      width: double.infinity,
                      child: PrimaryButton(
                        onPressed: () => null,
                        child: const Text('Agendar'),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
