import 'package:flutter/material.dart';

import 'package:chronos/_cmn/components/buttons/primary_button.dart';
import 'package:chronos/_cmn/components/lists/horizontal_list_view.dart';
import 'package:chronos/_cmn/components/misc/lazy_text.dart';
import 'package:chronos/_cmn/extensions/build_context/cmn_module.dart';
import 'package:chronos/_cmn/patterns/mediator_interface.dart';
import 'package:chronos/chronos/utilities/component_utilities.dart';
import 'package:chronos/chronos/_dummy_data/professionals.dart';
import 'package:chronos/chronos/models/professional.dart';
import 'package:chronos/chronos/screens/professional_selector/components/professional_card.dart';
import 'package:chronos/chronos/screens/professional_selector/components/specialization_card.dart';

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

  final List<Professional> professionalList = professionals;

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
        padding: ComponentUtilities().getScreenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'The Boys Barbearia',
              style: ComponentUtilities().getBoldTitle(context, fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nº 2023, Lajeado - Rio Grande do Sul',
                  style: ComponentUtilities().getNormalSubtitle(context),
                ),
                CircleAvatar(
                  backgroundColor: context.cmn.colors.tertiaryContainer,
                  radius: ComponentUtilities().getIconSize,
                  child: Icon(Icons.map_outlined,
                      color: Colors.black,
                      size: ComponentUtilities().getIconSize),
                ),
              ],
            ),
            ComponentUtilities().getVerticalMargin,
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black),
                ),
              ),
            ),
            ComponentUtilities().getVerticalMargin,
            Text(
              'Profissionais',
              style: ComponentUtilities().getNormalTitle(context),
            ),
            HorizontalListView(
              height: 160,
              itemCount:
                  professionalList.isNotEmpty ? professionalList.length : 2,
              itemBuilder: (context, index) => Container(
                key: ValueKey(professionalList.isNotEmpty
                    ? professionalList[index].getId
                    : null),
                child: ProfessionalCard(
                  professional: professionalList.isNotEmpty
                      ? professionalList[index]
                      : null,
                  mediator: _professionalsCardMediator,
                ),
              ),
            ),
            ComponentUtilities().getVerticalMargin,
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(_selected?.fullname ?? 'Selecione um profissional',
                    style: ComponentUtilities()
                        .getBoldTitle(context, fontSize: 22)),
                SizedBox(
                  height: 116,
                  child: LazyText(
                    lines: 5,
                    text: _selected?.description,
                    textStyle:
                        ComponentUtilities().getNormalDescritpion(context),
                  ),
                ),
                ComponentUtilities().getVerticalMargin,
                Text('Especialidades',
                    style: ComponentUtilities()
                        .getBoldTitle(context, fontSize: 16)),
                ComponentUtilities().getVerticalMargin,
                HorizontalListView(
                  height: 120,
                  itemCount: _selected?.specializtions.length ?? 2,
                  itemBuilder: (context, index) => Container(
                    key: ValueKey(_selected?.specializtions[index].getId),
                    child: SpecializationCard(
                      specialization: _selected?.specializtions[index],
                    ),
                  ),
                ),
                SizedBox(
                    width: double.infinity,
                    child: PrimaryButton(
                      onPressed: () => null,
                      child: const Text('Agendar'),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
