import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildIconWidget extends StatelessWidget {
  final Icon? icon;
  final Size? size;
  final Color? color;
  final SvgPicture? svgPicture;

  const BuildIconWidget({
    super.key,
    this.icon,
    this.size,
    this.color,
    this.svgPicture,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: svgPicture ??
          icon ??
          const Icon(Icons.drag_handle_sharp, color: Colors.white, size: 30),
      onPressed: () {},
    );
  }
}
