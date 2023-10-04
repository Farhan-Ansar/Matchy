import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../Utils/colors.dart';




class MainContainer extends StatelessWidget {
  const MainContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: double.infinity,
        decoration: ShapeDecoration(
          gradient: const RadialGradient(
            center: Alignment(1.16, 0.81),
            radius: 0.60,
            colors: [Color(0xFF1974F9), Color(0xFF1659C4), Color(0xFF133780)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child:  Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.yourClients,
                    style: const TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 45,
                      fontFamily: AppFonts.font,
                      fontWeight: FontWeight.w300,
                      height: 0
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      AppLocalizations.of(context)!.descClients,
                      style: const TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 24,
                        fontFamily: AppFonts.font,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset("assets/images/matchy.png")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
