import 'package:flutter/material.dart';
import '../../extensions/build_context/cmn_module.dart';

class LazyText extends StatefulWidget {
  const LazyText({
    super.key,
    required this.lines,
    required this.textStyle,
    this.text,
  });

  final int lines;
  final String? text;
  final TextStyle textStyle;

  @override
  State<LazyText> createState() => _LazyTextState();
}

class _LazyTextState extends State<LazyText> {
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
          textAlign: TextAlign.center, style: widget.textStyle));
    } else {
      Color color = context.cmn.colors.tertiaryContainer;

      for (int i = 0; i < widget.lines; i++) {
        children.add(line(color));
      }
    }

    return ListView(padding: EdgeInsets.zero, children: children);
  }
}
