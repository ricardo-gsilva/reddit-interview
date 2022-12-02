// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:search_reddit/core/core_colors.dart';

class CustomText extends StatelessWidget {
  String text;
  double fontSize;
  Color? color = CoreColors.transparent;
  TextOverflow? textOverflow;

  CustomText({
    Key? key,
    required this.text,
    required this.fontSize,
    this.color,
    this.textOverflow
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      style: TextStyle(
        overflow: textOverflow,
        fontSize: fontSize,
        color: color
      ),
    );
  }
}