import 'package:flutter/material.dart';

import '../Utils/colors.dart';




class LoginButton extends StatelessWidget {
  String title;
  LoginButton(@required this.title,
      {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 64),
      decoration: ShapeDecoration(
        color:AppColors.blueButtonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child:  Center(
        child: Text(
          title,
          style: const TextStyle(
            color: AppColors.whiteColor,
            fontSize: 17,
            fontFamily: AppFonts.font,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}





