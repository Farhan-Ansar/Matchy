import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../Utils/Routes/routesNames.dart';
import '../../Utils/colors.dart';
import '../../components/blue_button.dart';
import '../../components/matchy_container.dart';
import '../../components/my_text_form_field.dart';



class EmailCheck extends StatefulWidget {
  const EmailCheck({Key? key}) : super(key: key);

  @override
  State<EmailCheck> createState() => _EmailCheckState();
}

class _EmailCheckState extends State<EmailCheck> {
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
                        AppLocalizations.of(context)!.emailVerification,
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
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.verifyEmailAccount,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.hintColor,
                                    fontSize: 13,
                                    fontFamily: AppFonts.font,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
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
                              AppLocalizations.of(context)!.code,
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),

                          InkWell(
                              onTap:(){
                                Navigator.pushNamed(context, RoutesName.verifiedEmailScreen);
                              } ,
                              child: LoginButton(AppLocalizations.of(context)!.verifyAccount)),
                          const SizedBox(height: 16,),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.didNotReceiveEmail,
                                style: TextStyle(
                                  color: AppColors.hintColor,
                                  fontSize: 13,
                                  fontFamily: AppFonts.font,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                AppLocalizations.of(context)!.clickResend,
                                style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 13,
                                  fontFamily: AppFonts.font,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height:MediaQuery.sizeOf(context).height * 0.3,),

                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/svg/backIcon.svg"),
                               Text(
                                AppLocalizations.of(context)!.back,
                                style: TextStyle(
                                  color:AppColors.blueTextColor,
                                  fontSize: 24,
                                  fontFamily: AppFonts.font,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),

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
