import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utilities/platform_utilities.dart';

class AdaptiveImage extends StatelessWidget {
  const AdaptiveImage({
    super.key,
    this.neutral = true,
    required this.path,
    required this.width,
    required this.height,
  });

  const AdaptiveImage.themed({
    Key? key,
    required String path,
    required double width,
    required double height,
  }) : this(
          key: key,
          path: path,
          width: width,
          height: height,
          neutral: false,
        );

  final bool neutral;
  final String path;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final String themePath =
        neutral ? 'neutral' : PlatformUtilities().getThemeMode.name;

    final String fullPath = 'assets/$themePath/$path';

    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      child: Image.asset(fullPath),
    );
  }
}
