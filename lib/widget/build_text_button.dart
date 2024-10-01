import 'package:flutter/material.dart';

class BuildTextButton extends StatelessWidget {
  final String text;
  final Color color;
  final double? fontSize;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextOverflow? textOverflow;

  const BuildTextButton({
    super.key,
    required this.text,
    required this.color,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.maxLines,
    this.textOverflow,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
      },
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
        ),
        maxLines: maxLines,
        overflow: textOverflow,
      ),
    );
  }
}
