import 'package:flutter/material.dart';

import '../../utilities/animation_utilities.dart';

class LazyNetworkImage extends StatefulWidget {
  const LazyNetworkImage({
    super.key,
    this.source,
    this.fit,
  });

  final String? source;
  final BoxFit? fit;

  @override
  State<LazyNetworkImage> createState() => _LazyNetworkImageState();
}

class _LazyNetworkImageState extends State<LazyNetworkImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationUtilities.noContext().newController(this);
  Animation<Color?>? _animation;

  box(BuildContext context) => Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: _animation!.value,
          border: Border(
            left: BorderSide(color: _animation!.value!),
            right: BorderSide(color: _animation!.value!),
            top: BorderSide(color: _animation!.value!),
            bottom: BorderSide(color: _animation!.value!),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    if (widget.source != null) {
      return Image.network(widget.source!, fit: widget.fit);
    } else {
      _animation = AnimationUtilities(context)
          .newLazyAnimation(_animationController, () => setState(() {}));

      _animationController.repeat();
      return box(context);
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
