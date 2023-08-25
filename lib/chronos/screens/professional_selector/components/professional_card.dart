import 'package:chronos/_cmn/extensions/build_context/cmn_module.dart';
import 'package:chronos/_cmn/patterns/mediator_interface.dart';
import 'package:chronos/chronos/models/professional.dart';
import 'package:flutter/material.dart';

class ProfessionalCard extends StatefulWidget {
  const ProfessionalCard(
      {super.key, required this.professional, required this.mediator});

  final Mediator mediator;
  final Professional professional;

  @override
  State<StatefulWidget> createState() {
    return _ProfessionalCardBuilder();
  }
}

class _ProfessionalCardBuilder extends State<ProfessionalCard>
    implements MediatorItem<Professional> {
  
  bool _selected = false;

  @override
  Professional get getValue => widget.professional;

  @override
  get isSelected => _selected;

  @override
  void onNotify(MediatorItem sender) {
    if (_selected) {
      setState(() {
        _selected = false;
      });
    }
  }

  void onTap() {
    setState(() {
      _selected = !_selected;
    });
    widget.mediator.notifyOthers(this);
  }

  @override
  Widget build(BuildContext context) {
    widget.mediator.register(this);

    final borderRadius = BorderRadius.circular(10);

    final professional = widget.professional;

    return GestureDetector(
        onTap: onTap,
        child: Column(children: [
          Container(
            padding: const EdgeInsets.all(4), // Border width
            decoration: BoxDecoration(
                color: _selected
                    ? context.cmn.colors.primary
                    : context.cmn.colors.tertiaryContainer,
                borderRadius: borderRadius),
            child: ClipRRect(
              borderRadius: borderRadius,
              child: SizedBox.fromSize(
                size: Size.fromRadius(_selected ? 60 : 55),
                child:
                    Image.network(professional.profileImage, fit: BoxFit.cover),
              ),
            ),
          ),
          Text(
            professional.nickname,
            style: const TextStyle(
              fontFamily: 'ArchivoBlack',
              fontSize: 13,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ]));
  }
}
