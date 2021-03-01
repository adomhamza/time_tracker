import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    this.borderRadius: 8.0,
    this.textColor: Colors.white,
    this.fontSize: 18.0,
    this.color,
    this.onPressed,
    this.text,
    this.height: 50.0,
  });
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;
  final double borderRadius;
  final double height;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        color: color,
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
