import 'package:chronos/_cmn/components/images/adaptive_image.dart';
import 'package:chronos/_cmn/extensions/build_context/cmn_module.dart';
import 'package:chronos/_cmn/utilities/platform_utilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicCard extends StatelessWidget {
  const BasicCard(
      {super.key,
      // required
      required this.title,
      required this.imagePath,
      required this.onPressed});

  final String title;
  final String imagePath;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return BasicCardBuilder(context, this).build();
  }
}

class BasicCardBuilder {
  BasicCardBuilder(this.context, this.widget);

  final BuildContext context;
  final bool isIos = PlatformUtilities().isIos;

  static const double _size = 35;

  final BasicCard widget;

  Widget get icon => Icon(
        Icons.send,
        size: _size,
        color: isIos ? CupertinoColors.activeBlue : context.cmn.colors.primary,
      );

  Widget get iosTrailing => CupertinoButton(
        onPressed: widget.onPressed,
        padding: EdgeInsets.zero,
        child: icon,
      );

  Widget get androidTrailing =>
      IconButton(onPressed: widget.onPressed, icon: icon);

  Widget get trailing => isIos ? iosTrailing : androidTrailing;

  Widget get leading => AdaptiveImage(
        path: widget.imagePath,
        height: _size,
        width: _size,
      );

  Widget get title => Text(widget.title, style: context.cmn.texts.titleLarge);

  Widget build() {
    return Card(
        shape: isIos ? const RoundedRectangleBorder() : null,
        color: context.cmn.colors.background,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            ListTile(
                leading: leading,
                horizontalTitleGap: 25,
                title: title,
                trailing: trailing),
            const SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
