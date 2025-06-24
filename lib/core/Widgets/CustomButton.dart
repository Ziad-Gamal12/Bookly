import 'package:bookly/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.borderRadius,
      required this.buttonText,
      required this.textColor,
      required this.fontSize,
      this.onPressed});
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final String buttonText;
  final Color textColor;
  final double fontSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 51,
        child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(borderRadius: borderRadius)),
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: Styles.textStyle18
                  .copyWith(fontWeight: FontWeight.bold, color: textColor),
            )));
  }
}
