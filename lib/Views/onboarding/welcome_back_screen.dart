import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../Utils/Routes/routesNames.dart';
import '../../Utils/colors.dart';
import '../../components/blue_button.dart';
import '../../components/matchy_container.dart';
import '../../components/my_text_form_field.dart';




class WelcomeBack extends StatefulWidget {
  const WelcomeBack({Key? key}) : super(key: key);

  @override
  State<WelcomeBack> createState() => _WelcomeBackState();
}

class _WelcomeBackState extends State<WelcomeBack> {
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
                        AppLocalizations.of(context)!.welcomeBack,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 50,
                          fontFamily: AppFonts.font,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

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
                              AppLocalizations.of(context)!.email,
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
                              AppLocalizations.of(context)!.password,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context,RoutesName.forgetPasswordScreen);
                            },
                            child:  SizedBox(
                              width: 375,

                              child: Align(
                                alignment: Alignment.topRight,
                                child: InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, RoutesName.forgetPasswordScreen);
                                  },
                                  child: Text(
                                    AppLocalizations.of(context)!.forgotPassword,
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 13,
                                      fontFamily: AppFonts.font,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          LoginButton( AppLocalizations.of(context)!.login),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.dontHaveAnAccount,
                                style: TextStyle(
                                  color: AppColors.hintColor,
                                  fontSize: 13,
                                  fontFamily: AppFonts.font,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context,RoutesName.createAccountScreen);
                                },
                                child:  Text(
                                  AppLocalizations.of(context)!.signUp,
                                  style: TextStyle(
                                    color:AppColors.blackColor,
                                    fontSize: 13,
                                    fontFamily: AppFonts.font,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30,),

                          Container(
                            width: 375,
                            height: 45,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: AppColors.blackColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 32,
                                  height: 32,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: SvgPicture.asset("assets/svg/Applelogo.svg"),
                                ),
                                const SizedBox(width: 8),
                                 Text(
                                  AppLocalizations.of(context)!.signInApple,
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: 17,
                                    fontFamily: AppFonts.font,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Container(
                            width: 375,
                            height: 45,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 32,
                                  height: 32,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: SvgPicture.asset("assets/svg/GoogleLogo.svg"),
                                ),
                                const SizedBox(width: 8),
                                 Text(
                                  AppLocalizations.of(context)!.signInGoogle,
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 17,
                                    fontFamily: AppFonts.font,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          )
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
