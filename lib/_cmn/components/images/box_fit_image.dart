import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utilities/platform_utilities.dart';

class BoxFitImage extends StatelessWidget {
  const BoxFitImage({
    super.key,
    this.neutral = true,
    required this.path,
    required this.fit,
  });

  const BoxFitImage.themed({
    Key? key,
    required String path,
    required BoxFit fit,
  }) : this(key: key, path: path, fit: fit, neutral: false);

  final bool neutral;
  final String path;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final String themePath =
        neutral ? 'neutral' : PlatformUtilities().getThemeMode.name;

    final String fullPath = 'assets/$themePath/$path';

    return Image.asset(fullPath, fit: fit);
  }
}
