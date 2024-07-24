import 'package:flutter/material.dart';
import 'package:meal_monkey/utils/Style/meal_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double fontSize;
  final Color textColor;
  final Color borderColor;
  final bool hasIcon;
  final IconData? iconData;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.textColor,
    required this.fontSize,
    required this.borderColor,
    required this.hasIcon,
    this.iconData,
  });

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            hasIcon == true?   Padding(
              padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*0.08),
              child: Icon(iconData,color: MealColors.white,),
            ):const SizedBox(),
            Text(text),
          ],
        )),
    );
  }
}
