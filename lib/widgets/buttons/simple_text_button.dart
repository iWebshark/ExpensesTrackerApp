import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final EdgeInsets? padding;

  SimpleTextButton({
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onPressed,
      child: Container(
        padding: padding?? const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          text,
          style: textStyle ??
              TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
        ),
      ),
    );
  }
}
