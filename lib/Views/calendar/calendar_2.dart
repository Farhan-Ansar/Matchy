import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../Utils/colors.dart';
import '../../components/my_drawer.dart';

class Calendar2 extends StatefulWidget {
  const Calendar2({Key? key}) : super(key: key);

  @override
  State<Calendar2> createState() => _Calendar2State();
}

class _Calendar2State extends State<Calendar2> {
  bool isCalendarSelected = true;
  bool? check1 = false;
  bool? check2 = false;
  bool? check3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blurContainerColor,
      body: Row(
        children: [
          Flexible(flex: 1, child: MyDrawer(index: 0,)),
          const SizedBox(width: 5,),
          Flexible(
            flex: 5,
            child: Column(

              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey, // Shadow color
                            offset: Offset(0, 4), // Shadow offset (x, y)
                            blurRadius: 6, // Blur radius
                            spreadRadius: 0, // Spread radius
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 30,
                                ),
                                SvgPicture.asset("assets/svg/backIcon.svg"),
                                const SizedBox(
                                  width: 30,
                                ),
                                 Text(
                                  AppLocalizations.of(context)!.back,
                                  style: const TextStyle(
                                    color: AppColors.blueTextColor,
                                    fontSize: 24,
                                    fontFamily: AppFonts.font,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.client,
                                      style: const TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 18,
                                        fontFamily: AppFonts.font,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 291.28,
                                          height: 43,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color: AppColors.hintColor),
                                                borderRadius:
                                                BorderRadius.circular(7)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        SvgPicture.asset("assets/svg/addIcon.svg"),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: AppLocalizations.of(context)!.createNew,
                                                style: const TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: 18,
                                                  fontFamily: AppFonts.font,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: AppLocalizations.of(context)!.client,
                                                style: const TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: 18,
                                                  fontFamily: AppFonts.font,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.service,
                                      style: const TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 18,
                                        fontFamily: AppFonts.font,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 291.28,
                                          height: 43,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color: AppColors.hintColor),
                                                borderRadius:
                                                BorderRadius.circular(7)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        SvgPicture.asset("assets/svg/addIcon.svg"),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: AppLocalizations.of(context)!.createNew,
                                                style: const TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: 18,
                                                  fontFamily: AppFonts.font,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: AppLocalizations.of(context)!.createNew,
                                                style: const TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: 18,
                                                  fontFamily: AppFonts.font,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)!.date,
                                              style: const TextStyle(
                                                color: AppColors.blackColor,
                                                fontSize: 18,
                                                fontFamily: AppFonts.font,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Container(
                                              width: 229.28,
                                              height: 43,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        color: AppColors.hintColor),
                                                    borderRadius:
                                                    BorderRadius.circular(7)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 50,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)!.time,
                                              style: const TextStyle(
                                                color: AppColors.blackColor,
                                                fontSize: 18,
                                                fontFamily: AppFonts.font,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Container(
                                              width: 229.28,
                                              height: 43,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        color: AppColors.hintColor),
                                                    borderRadius:
                                                    BorderRadius.circular(7)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.client,
                                      style: const TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 18,
                                        fontFamily: AppFonts.font,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 514.28,
                                          height: 43,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color: AppColors.hintColor),
                                                borderRadius:
                                                BorderRadius.circular(7)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Checkbox(
                                            activeColor: AppColors.blueTextColor,//only check box
                                            value: check1, //unchecked
                                            onChanged: (bool? value){
                                              //value returned when checkbox is clicked
                                              setState(() {
                                                check1 = value;
                                              });
                                            }
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!.sendSession,
                                          style: const TextStyle(
                                            color: AppColors.blackColor,
                                            fontSize: 18,
                                            fontFamily: AppFonts.font,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Checkbox(
                                            activeColor: AppColors.blueTextColor,//only check box
                                            value: check2, //unchecked
                                            onChanged: (bool? value){
                                              //value returned when checkbox is clicked
                                              setState(() {
                                                check2 = value;
                                              });
                                            }
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!.sendWhatApp,
                                          style: const TextStyle(
                                            color: AppColors.blackColor,
                                            fontSize: 18,
                                            fontFamily: AppFonts.font,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Checkbox(
                                            activeColor: AppColors.blueTextColor,//only check box
                                            value: check3, //unchecked
                                            onChanged: (bool? value){
                                              //value returned when checkbox is clicked
                                              setState(() {
                                                check3 = value;
                                              });
                                            }
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!.sendWhatApp,
                                          style: const TextStyle(
                                            color: AppColors.blackColor,
                                            fontSize: 18,
                                            fontFamily: AppFonts.font,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
