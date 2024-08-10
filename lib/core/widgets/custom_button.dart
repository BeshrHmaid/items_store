import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.text,
      this.borderRadius,
      this.fontSize,
      this.function});
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final double? fontSize;
  final BorderRadius? borderRadius;
  VoidCallback? function;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius:
                  borderRadius ?? const BorderRadius.all(Radius.circular(12))),
          backgroundColor: backgroundColor,
        ),
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
