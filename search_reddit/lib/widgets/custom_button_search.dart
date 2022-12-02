import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:search_reddit/core/core_colors.dart';

class CustomButtonSearch extends StatelessWidget {
  VoidCallback onPressed;
  IconData icon;
  CustomButtonSearch({
    Key? key,
    required this.icon,
    required this.onPressed,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.20,
        height: 55,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: CoreColors.black,
            onPrimary: CoreColors.white
          ),
          onPressed: onPressed,
          child: Icon(icon, size: 30,)
          
        ),
      ),
    );  
  }
}