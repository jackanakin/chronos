import 'package:chronos/_cmn/components/images/adaptive_image.dart';
import 'package:chronos/_cmn/extensions/build_context/cmn_module.dart';
import 'package:chronos/_cmn/utilities/platform_utilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard(
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
    return ServiceCardBuilder(context, this).build();
  }
}

class ServiceCardBuilder {
  ServiceCardBuilder(this.context, this.widget);

  final BuildContext context;
  final bool isIos = PlatformUtilities().isIos;

  static const double _size = 35;

  final ServiceCard widget;

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
              leading: AdaptiveImage(
                path: widget.imagePath,
                height: _size,
                width: _size,
              ),
              horizontalTitleGap: 25,
              title: Text(widget.title, style: context.cmn.texts.titleLarge),
              trailing: trailing,
              // onTap: () => print(''),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
