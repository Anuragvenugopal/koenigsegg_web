// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';
//
// class BuildAnimatedText extends StatefulWidget {
//   final String text;
//   final TextStyle textStyle;
//   final Color colors;
//   final double letterSpacing;
//   final double fontSize;
//   final FontWeight fontWeight;
//
//   BuildAnimatedText({
//     required this.text,
//     required this.textStyle,
//     required this.colors,
//     this.letterSpacing = 3.0,
//     this.fontSize = 80.0,
//     this.fontWeight = FontWeight.bold,
//   });
//
//   @override
//   _BuildAnimatedTextState createState() => _BuildAnimatedTextState();
// }
//
// class _BuildAnimatedTextState extends State<BuildAnimatedText> {
//   bool _isAnimationCompleted = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return _isAnimationCompleted
//         ? Text(
//       widget.text,
//       style: widget.textStyle.copyWith(
//         letterSpacing: widget.letterSpacing,
//         fontSize: widget.fontSize,
//         fontWeight: widget.fontWeight,
//         color: widget.colors,
//       ),
//     )
//         : AnimatedTextKit(
//       animatedTexts: [
//         RotateAnimatedText(
//           widget.text,
//           textStyle: widget.textStyle.copyWith(
//             letterSpacing: widget.letterSpacing,
//             fontSize: widget.fontSize,
//             fontWeight: widget.fontWeight,
//             color: widget.colors,
//           ),
//         ),
//       ],
//       isRepeatingAnimation: false,
//       totalRepeatCount: 1,
//       pause: Duration(milliseconds: 1000),
//       onFinished: () {
//         setState(() {
//           _isAnimationCompleted = true;
//         });
//       },
//     );
//   }
// }
