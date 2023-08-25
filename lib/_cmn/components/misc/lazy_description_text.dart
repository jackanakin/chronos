import 'package:chronos/_cmn/extensions/build_context/cmn_module.dart';
import 'package:flutter/material.dart';

class LazyDescriptionText extends StatefulWidget {
  const LazyDescriptionText(
      {super.key, required this.lines, required this.height, this.text});

  final int lines;
  final double height;
  final String? text;

  @override
  State<LazyDescriptionText> createState() => _LazyDescriptionTextState();
}

class _LazyDescriptionTextState extends State<LazyDescriptionText> {
  Container line(Color color) => Container(
        height: 19.5,
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: color,
          border: Border(
            left: BorderSide(color: color),
            right: BorderSide(color: color),
            top: BorderSide(color: color),
            bottom: BorderSide(color: color),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];

    if (widget.text != null) {
      children.add(Text(widget.text!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'Roboto',
            fontSize: 13,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          )));
    } else {
      Color color = context.cmn.colors.tertiaryContainer;

      for (int i = 0; i < widget.lines; i++) {
        children.add(line(color));
      }
    }

    return SizedBox(
        height: widget.height,
        child: ListView(padding: EdgeInsets.zero, children: children));
  }
}
