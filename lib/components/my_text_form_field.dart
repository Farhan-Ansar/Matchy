import 'package:flutter/material.dart';

import '../Utils/colors.dart';

class MyTextFromField extends StatefulWidget {
  String text;
  MyTextFromField(@required this.text, {Key? key})
      : super(key: key);

  @override
  State<MyTextFromField> createState() => _MyTextFromFieldState();
}

class _MyTextFromFieldState extends State<MyTextFromField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: widget.text,
        hintStyle: TextStyle(
          color: AppColors.hintColor,
          fontSize: 17,
          fontFamily: AppFonts.font,
          fontWeight: FontWeight.w400,
        ),
        border: InputBorder.none,
      ),
    );
  }
}
