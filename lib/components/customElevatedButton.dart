import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double fontSize;
  final Color textColor;
  final Color borderColor;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.textColor,
    required this.fontSize,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor,
         backgroundColor: color,
         side: BorderSide(color: borderColor),
         
        textStyle: TextStyle(fontSize: fontSize),
      ),
      child: Container(
        width:MediaQuery.of(context).size.width*0.6,
        height: MediaQuery.of(context).size.height*0.065,
        alignment: Alignment.center,
        child: Text(text)),
    );
  }
}
