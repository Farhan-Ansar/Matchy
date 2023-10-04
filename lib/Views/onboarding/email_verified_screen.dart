import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../Utils/Routes/routesNames.dart';
import '../../Utils/colors.dart';
import '../../components/blue_button.dart';
import '../../components/matchy_container.dart';
import '../../components/my_text_form_field.dart';



class EmailVerifiedScreen extends StatefulWidget {
  const EmailVerifiedScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerifiedScreen> createState() => _EmailVerifiedScreenState();
}

class _EmailVerifiedScreenState extends State<EmailVerifiedScreen> {
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

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/svg/success.svg"),
                           Text(
                            AppLocalizations.of(context)!.success,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 50,
                              fontFamily:AppFonts.font,
                              fontWeight: FontWeight.w400,
                            ),
                          ),

                          Text(
                            AppLocalizations.of(context)!.successDesc,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.hintColor,
                              fontSize: 15,
                              fontFamily:AppFonts.font,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(height: 50,),
                          InkWell(
                              onTap:(){
                                Navigator.pushNamed(context, RoutesName.calendarScreen);
                              } ,
                              child: LoginButton(AppLocalizations.of(context)!.goToAccount,)),


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
