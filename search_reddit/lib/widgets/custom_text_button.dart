import 'package:flutter/material.dart';
import 'package:search_reddit/core/core_colors.dart';
import 'package:search_reddit/widgets/custom_text.dart';

class CustomTextButton extends StatelessWidget {
  String textButton;
  VoidCallback onPressed;
  double fontSize;

  CustomTextButton({
    Key? key,
    required this.textButton,
    required this.onPressed,
    required this.fontSize
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(      
      onPressed: onPressed,
      child: CustomText(text: textButton, fontSize: fontSize, color: CoreColors.black,),
    );
  }
}