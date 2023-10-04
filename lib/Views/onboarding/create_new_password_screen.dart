import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../Utils/Routes/routesNames.dart';
import '../../Utils/colors.dart';
import '../../components/blue_button.dart';
import '../../components/matchy_container.dart';
import '../../components/my_text_form_field.dart';



class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(
            flex: 2,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.createNewPassword,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 50,
                          fontFamily: AppFonts.font,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                           Text(
                            AppLocalizations.of(context)!.insertNewPassword,
                            style: const TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 15,
                              fontFamily: AppFonts.font,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            width: 375,
                            height: 45,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  color: AppColors.hintColor,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: MyTextFromField(
                              AppLocalizations.of(context)!.newPassword,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 375,
                            height: 45,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  color: AppColors.hintColor,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: MyTextFromField(
                                AppLocalizations.of(context)!.repeatNewPassword,
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),

                          InkWell(
                              onTap:(){
                                Navigator.pushNamed(context, RoutesName.checkEmailScreen);
                              } ,
                              child: LoginButton(AppLocalizations.of(context)!.resetPassword)),

                          SizedBox(height:MediaQuery.sizeOf(context).height * 0.3,),


                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Flexible(
            flex: 2,
            child: MainContainer(),
          )
        ],
      ),
    );
  }
}
