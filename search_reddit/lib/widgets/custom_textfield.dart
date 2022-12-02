import 'package:flutter/material.dart';
import 'package:search_reddit/core/core_colors.dart';
import 'package:search_reddit/core/core_strings.dart';

class CustomTextField extends StatelessWidget {  
  TextEditingController controller;
  String hintText;

  CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: TextField(
        controller: controller,
        autofocus: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.red),
                    borderRadius: BorderRadius.circular(15),
                  ),          
          focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Colors.red),
                    borderRadius: BorderRadius.circular(15),
                  ),
          hintText: hintText
        ),
        cursorColor: CoreColors.black,
      ),
    );
  }
}
