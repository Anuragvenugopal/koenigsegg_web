import 'package:flutter/material.dart';

class BuildTextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double? fontSize;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;
  final double?maxLines;
  final dynamic TextOverFlow;


  const BuildTextWidget(
      {super.key,
      required this.text,
      required this.color,
      this.fontSize,
      this.fontStyle,
      this.fontWeight, this.maxLines, this.TextOverFlow,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
