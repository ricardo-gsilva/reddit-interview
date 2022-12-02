import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:search_reddit/core/core_colors.dart';
import 'package:search_reddit/core/core_strings.dart';
import 'package:search_reddit/util/rotes.dart';
import 'package:search_reddit/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  String textButton;
  VoidCallback onPressed;
  String? image;
  double width;
  Color primary;
  Color onPrimary;

  CustomButton({
    Key? key,
    required this.textButton,
    required this.onPressed,
    this.image,
    required this.width,
    required this.primary,
    required this.onPrimary
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: width,
        height: 40,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: primary,
            onPrimary: onPrimary
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: textButton,
                fontSize: 20,
              ),
              Visibility(
                visible: image == null? false : true,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 4, left: 8),
                  child: Image.asset(image?? ''),
                ),
              )
            ],
          ),
          
        ),
      ),
    );
  }
}
