import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../Utils/Routes/routesNames.dart';
import '../../Utils/colors.dart';
import '../../components/blue_button.dart';
import '../../components/matchy_container.dart';
import '../../components/my_text_form_field.dart';



class PasswordReset extends StatefulWidget {
  const PasswordReset({Key? key}) : super(key: key);

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
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
                        AppLocalizations.of(context)!.resetPassword,
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

                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                 AppLocalizations.of(context)!.weSentTheCode,
                                  style: TextStyle(
                                    color: AppColors.hintColor,
                                    fontSize: 13,
                                    fontFamily: AppFonts.font,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'name@mail.domain',
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 13,
                                    fontFamily: AppFonts.font,
                                    fontWeight: FontWeight.w400,
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
                                  color: Colors.black.withOpacity(0.4000000059604645),
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
                              Navigator.pushNamed(context, RoutesName.createNewPasswordScreen);
                            } ,
                              child: LoginButton(AppLocalizations.of(context)!.resetPassword)),
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
                                style: const TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 13,
                                  fontFamily: AppFonts.font,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height:MediaQuery.sizeOf(context).height * 0.4,),

                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/svg/backIcon.svg"),
                                 Text(
                                  AppLocalizations.of(context)!.back,
                                  style: const TextStyle(
                                    color:AppColors.blueTextColor,
                                    fontSize: 24,
                                    fontFamily: AppFonts.font,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
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
