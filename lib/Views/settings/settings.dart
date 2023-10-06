import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../Utils/colors.dart';
import '../../components/my_drawer.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  // bool isCalendarSelected = true;
  bool checkBoxValue = false;
  bool showSession = true;
  bool showSession2 = false;
  bool showSession3 = false;
  bool showInformation = false;
  bool showValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.blurContainerColor,
      body: Row(
        children: [
          Flexible(
              flex: 1,
              child: MyDrawer(
                index: 4,
              )),
          const SizedBox(width: 5,),
          Flexible(
            flex: 5,
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                     Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                      child: Row(
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: AppLocalizations.of(context)!.myClients,
                                  style: const TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 24,
                                    fontFamily: AppFonts.font,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: AppLocalizations.of(context)!.joaoPedro,
                                  style: const TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 24,
                                    fontFamily: AppFonts.font,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: MediaQuery.sizeOf(context).height * 0.9,
                        width: MediaQuery.sizeOf(context).width * 0.9,
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
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 35.0,
                            top: 30,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.3,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                // isCalendarSelected = true;
                                                showSession = true;
                                                showSession2 = false;
                                                showSession3 = false;
                                                //showInformation = false;
                                              });
                                            },
                                            child: SizedBox(
                                              width: 243,
                                              height: 23,
                                              child: Text(
                                                AppLocalizations.of(context)!.personalLink,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: showSession
                                                      ? AppColors.blueTextColor
                                                      : AppColors.hintColor,
                                                  fontSize: 18,
                                                  fontFamily: AppFonts.font,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                //isCalendarSelected = false;
                                                showSession = false;
                                                showSession2 = true;
                                                showSession3 = false;
                                              });
                                            },
                                            child: SizedBox(
                                              width: 243,
                                              height: 23,
                                              child: Text(
                                                AppLocalizations.of(context)!.availability,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: showSession2
                                                      ? AppColors.blueTextColor
                                                      : AppColors.hintColor,
                                                  fontSize: 18,
                                                  fontFamily: AppFonts.font,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                //isCalendarSelected = false;
                                                showSession = false;
                                                showSession2 = false;
                                                showSession3 = true;
                                              });
                                            },
                                            child: SizedBox(
                                              width: 243,
                                              height: 23,
                                              child: Text(
                                                AppLocalizations.of(context)!.preferences,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: showSession3
                                                      ? AppColors.blueTextColor
                                                      : AppColors.hintColor,
                                                  fontSize: 18,
                                                  fontFamily: AppFonts.font,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                showSession = false;
                                              });
                                            },
                                            child: Container(
                                              width: 210,
                                              height: 3,
                                              color: showSession
                                                  ? AppColors.blueTextColor
                                                  : AppColors.hintColor,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                showSession3 = false;
                                              });
                                            },
                                            child: Container(
                                              width: 210,
                                              height: 3,
                                              color: showSession2
                                                  ? AppColors.blueTextColor
                                                  : AppColors.hintColor,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                showSession2 = false;
                                              });
                                            },
                                            child: Container(
                                              width: 210,
                                              height: 3,
                                              color: showSession3
                                                  ? AppColors.blueTextColor
                                                  : AppColors.hintColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Visibility(
                                visible: showSession,
                                child: SizedBox(
                                  width: 800,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 60,
                                      ),
                                       Text(
                                        AppLocalizations.of(context)!.myPersonalLink,
                                        style: const TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 44,
                                          fontFamily: AppFonts.font,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                       SizedBox(
                                        width: 558,
                                        height: 69,
                                        child: Text(
                                          AppLocalizations.of(context)!.personalText,
                                          style: const TextStyle(
                                            color: AppColors.blackColor,
                                            fontSize: 15,
                                            fontFamily: AppFonts.font,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            'www.matchy.com/',
                                            style: TextStyle(
                                              color: AppColors.blackColor,
                                              fontSize: 19,
                                              fontFamily: AppFonts.font,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 262,
                                                height: 47,
                                                decoration: ShapeDecoration(
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: AppColors
                                                              .hintColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                ),
                                                child: const Row(
                                                  children: [
                                                    Text(
                                                      'pedrogomezxavier',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF252525),
                                                        fontSize: 20,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                      "assets/svg/Icongreen.svg"),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    AppLocalizations.of(context)!.available,
                                                    textAlign: TextAlign.center,
                                                    style: const TextStyle(
                                                      color: Color(0xFF17983B),
                                                      fontSize: 14,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 60,
                                      ),
                                      Container(
                                        width: 176,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFF11387C),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            AppLocalizations.of(context)!.available,
                                            style: const TextStyle(
                                              color: AppColors.whiteColor,
                                              fontSize: 18,
                                              fontFamily: AppFonts.font,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: showSession2,
                                child: SizedBox(
                                  width: 900,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 50,
                                      ),
                                       Text(
                                        AppLocalizations.of(context)!.workingHours,
                                        style: const TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 22,
                                          fontFamily: AppFonts.font,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                       Row(
                                        children: [
                                          Text(
                                            AppLocalizations.of(context)!.activeOn,
                                            style: const TextStyle(
                                              color: Color(0xFF383838),
                                              fontSize: 14,
                                              fontFamily: AppFonts.font,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 50,
                                          ),
                                          Text(
                                            AppLocalizations.of(context)!.timeZone,
                                            style: const TextStyle(
                                              color: Color(0xFF383838),
                                              fontSize: 14,
                                              fontFamily: AppFonts.font,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: 797,
                                        decoration: const ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              width: 0.88,
                                              strokeAlign:
                                                  BorderSide.strokeAlignCenter,
                                              color: Color(0xFFCECECE),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:  const EdgeInsets.all(12.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Row(
                                                  children: [
                                                     Text(
                                                      AppLocalizations.of(context)!.typeEvents,
                                                      style: const TextStyle(
                                                        color: AppColors
                                                            .blueTextColor,
                                                        fontSize: 13,
                                                        fontFamily:
                                                            AppFonts.font,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    SvgPicture.asset(
                                                        "assets/svg/Iconarrowdown.svg"),
                                                    const SizedBox(
                                                      width: 30,
                                                    ),
                                                     Text(
                                                      AppLocalizations.of(context)!.easternCanada,
                                                      style: const TextStyle(
                                                        color: AppColors
                                                            .blueTextColor,
                                                        fontSize: 13,
                                                        fontFamily:
                                                            AppFonts.font,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    SvgPicture.asset(
                                                        "assets/svg/Iconarrowdown.svg"),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                 Text(
                                                  AppLocalizations.of(context)!.setYourWeeklyHours,
                                                  style: const TextStyle(
                                                    color: AppColors.blackColor,
                                                    fontSize: 14,
                                                    fontFamily: AppFonts.font,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Row(
                                                        children: [

                                                          Checkbox(
                                                            value: showValue,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                showValue = value!;
                                                              });
                                                            },
                                                          ),
                                                          const SizedBox(
                                                            width: 5,
                                                          ),
                                                          Container(
                                                              width:30,
                                                            child: Text(
                                                              AppLocalizations.of(context)!.sun,
                                                              style: const TextStyle(
                                                                color: AppColors
                                                                    .blackColor,
                                                                fontSize: 12,
                                                                fontFamily:
                                                                AppFonts.font,
                                                                fontWeight:
                                                                FontWeight.w400,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 15,
                                                          ),
                                                          Container(
                                                              width:190,
                                                            child: Text(
                                                              AppLocalizations.of(context)!.unavailable,
                                                              style: const TextStyle(
                                                                color:
                                                                Color(0xFF383838),
                                                                fontSize: 12,
                                                                fontFamily:
                                                                AppFonts.font,
                                                                fontWeight:
                                                                FontWeight.w400,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 90,
                                                          ),
                                                        ],
                                                    ),
                                                    Row(
                                                       
                                                        children:[
                                                          Align(
                                                              alignment:
                                                              Alignment.topRight,
                                                              child: SvgPicture.asset(
                                                                  "assets/svg/add12.svg")),
                                                          const SizedBox(
                                                            width: 15,
                                                          ),
                                                          Align(
                                                              alignment:
                                                              Alignment.topRight,
                                                              child: SvgPicture.asset(
                                                                  "assets/svg/copy.svg"))
                                                        ]
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  width: 418,
                                                  decoration:
                                                      const ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 0.88,
                                                        strokeAlign: BorderSide
                                                            .strokeAlignCenter,
                                                        color:
                                                            Color(0xFF969696),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      value: showValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          showValue = value!;
                                                        });
                                                      },
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                     Text(
                                                      AppLocalizations.of(context)!.mon,
                                                      style: const TextStyle(
                                                        color: AppColors
                                                            .blackColor,
                                                        fontSize: 12,
                                                        fontFamily:
                                                            AppFonts.font,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    Container(
                                                      width: 50.14,
                                                      height: 21.99,
                                                      decoration:
                                                          ShapeDecoration(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side: const BorderSide(
                                                              width: 0.88,
                                                              color: AppColors
                                                                  .blueTextColor),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.28),
                                                        ),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          '9:00',
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .blueTextColor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Text(
                                                      '-',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF11387C),
                                                        fontSize: 13.19,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 0,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      width: 50.14,
                                                      height: 21.99,
                                                      decoration:
                                                          ShapeDecoration(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side: const BorderSide(
                                                              width: 0.88,
                                                              color: AppColors
                                                                  .blueTextColor),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.28),
                                                        ),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          '9:00',
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .blueTextColor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 30,
                                                    ),
                                                    SvgPicture.asset("assets/svg/deleteIcon.svg"),
                                                    const SizedBox(
                                                      width: 115,
                                                    ),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: SvgPicture.asset(
                                                            "assets/svg/add12.svg")),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: SvgPicture.asset(
                                                            "assets/svg/copy.svg"))
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: 418,
                                                  decoration:
                                                      const ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 0.88,
                                                        strokeAlign: BorderSide
                                                            .strokeAlignCenter,
                                                        color:
                                                            Color(0xFF969696),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      value: showValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          showValue = value!;
                                                        });
                                                      },
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                     Text(
                                                      AppLocalizations.of(context)!.mon,
                                                      style: const TextStyle(
                                                        color: AppColors
                                                            .blackColor,
                                                        fontSize: 12,
                                                        fontFamily:
                                                            AppFonts.font,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    Container(
                                                      width: 50.14,
                                                      height: 21.99,
                                                      decoration:
                                                          ShapeDecoration(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side: const BorderSide(
                                                              width: 0.88,
                                                              color: AppColors
                                                                  .blueTextColor),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.28),
                                                        ),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          '9:00',
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .blueTextColor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Text(
                                                      '-',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF11387C),
                                                        fontSize: 13.19,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 0,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      width: 50.14,
                                                      height: 21.99,
                                                      decoration:
                                                          ShapeDecoration(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side: const BorderSide(
                                                              width: 0.88,
                                                              color: AppColors
                                                                  .blueTextColor),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.28),
                                                        ),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          '9:00',
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .blueTextColor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 30,
                                                    ),
                                                    SvgPicture.asset("assets/svg/deleteIcon.svg"),
                                                    const SizedBox(
                                                      width: 115,
                                                    ),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: SvgPicture.asset(
                                                            "assets/svg/add12.svg")),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: SvgPicture.asset(
                                                            "assets/svg/copy.svg"))
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: 418,
                                                  decoration:
                                                      const ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 0.88,
                                                        strokeAlign: BorderSide
                                                            .strokeAlignCenter,
                                                        color:
                                                            Color(0xFF969696),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      value: showValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          showValue = value!;
                                                        });
                                                      },
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                     Text(
                                                      AppLocalizations.of(context)!.mon,
                                                      style: const TextStyle(
                                                        color: AppColors
                                                            .blackColor,
                                                        fontSize: 12,
                                                        fontFamily:
                                                            AppFonts.font,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    Container(
                                                      width: 50.14,
                                                      height: 21.99,
                                                      decoration:
                                                          ShapeDecoration(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side: const BorderSide(
                                                              width: 0.88,
                                                              color: AppColors
                                                                  .blueTextColor),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.28),
                                                        ),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          '9:00',
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .blueTextColor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Text(
                                                      '-',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF11387C),
                                                        fontSize: 13.19,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 0,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      width: 50.14,
                                                      height: 21.99,
                                                      decoration:
                                                          ShapeDecoration(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side: const BorderSide(
                                                              width: 0.88,
                                                              color: AppColors
                                                                  .blueTextColor),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.28),
                                                        ),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          '9:00',
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .blueTextColor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 30,
                                                    ),
                                                    SvgPicture.asset("assets/svg/deleteIcon.svg"),
                                                    const SizedBox(
                                                      width: 115,
                                                    ),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: SvgPicture.asset(
                                                            "assets/svg/add12.svg")),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: SvgPicture.asset(
                                                            "assets/svg/copy.svg"))
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: 418,
                                                  decoration:
                                                      const ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 0.88,
                                                        strokeAlign: BorderSide
                                                            .strokeAlignCenter,
                                                        color:
                                                            Color(0xFF969696),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      value: showValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          showValue = value!;
                                                        });
                                                      },
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                     Text(
                                                       AppLocalizations.of(context)!.mon,
                                                      style: const TextStyle(
                                                        color: AppColors
                                                            .blackColor,
                                                        fontSize: 12,
                                                        fontFamily:
                                                            AppFonts.font,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    Container(
                                                      width: 50.14,
                                                      height: 21.99,
                                                      decoration:
                                                          ShapeDecoration(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side: const BorderSide(
                                                              width: 0.88,
                                                              color: AppColors
                                                                  .blueTextColor),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.28),
                                                        ),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          '9:00',
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .blueTextColor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Text(
                                                      '-',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF11387C),
                                                        fontSize: 13.19,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 0,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      width: 50.14,
                                                      height: 21.99,
                                                      decoration:
                                                          ShapeDecoration(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side: const BorderSide(
                                                              width: 0.88,
                                                              color: AppColors
                                                                  .blueTextColor),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.28),
                                                        ),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          '9:00',
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .blueTextColor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 30,
                                                    ),
                                                    SvgPicture.asset("assets/svg/deleteIcon.svg"),
                                                    const SizedBox(
                                                      width: 115,
                                                    ),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: SvgPicture.asset(
                                                            "assets/svg/add12.svg")),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: SvgPicture.asset(
                                                            "assets/svg/copy.svg"))
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: 418,
                                                  decoration:
                                                      const ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 0.88,
                                                        strokeAlign: BorderSide
                                                            .strokeAlignCenter,
                                                        color:
                                                            Color(0xFF969696),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      value: showValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          showValue = value!;
                                                        });
                                                      },
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      AppLocalizations.of(context)!.mon,
                                                      style: const TextStyle(
                                                        color: AppColors
                                                            .blackColor,
                                                        fontSize: 12,
                                                        fontFamily:
                                                            AppFonts.font,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    Container(
                                                      width: 50.14,
                                                      height: 21.99,
                                                      decoration:
                                                          ShapeDecoration(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side: const BorderSide(
                                                              width: 0.88,
                                                              color: AppColors
                                                                  .blueTextColor),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.28),
                                                        ),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          '9:00',
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .blueTextColor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Text(
                                                      '-',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF11387C),
                                                        fontSize: 13.19,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 0,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      width: 50.14,
                                                      height: 21.99,
                                                      decoration:
                                                          ShapeDecoration(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side: const BorderSide(
                                                              width: 0.88,
                                                              color: AppColors
                                                                  .blueTextColor),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.28),
                                                        ),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          '9:00',
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .blueTextColor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 30,
                                                    ),
                                                    SvgPicture.asset("assets/svg/deleteIcon.svg"),
                                                    const SizedBox(
                                                      width: 115,
                                                    ),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: SvgPicture.asset(
                                                            "assets/svg/add12.svg")),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: SvgPicture.asset(
                                                            "assets/svg/copy.svg"))
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: 418,
                                                  decoration:
                                                      const ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 0.88,
                                                        strokeAlign: BorderSide
                                                            .strokeAlignCenter,
                                                        color:
                                                            Color(0xFF969696),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Checkbox(
                                                      value: showValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          showValue = value!;
                                                        });
                                                      },
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                     Text(
                                                      AppLocalizations.of(context)!.mon,
                                                      style: const TextStyle(
                                                        color: AppColors
                                                            .blackColor,
                                                        fontSize: 12,
                                                        fontFamily:
                                                            AppFonts.font,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    Container(
                                                      width: 50.14,
                                                      height: 21.99,
                                                      decoration:
                                                          ShapeDecoration(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side: const BorderSide(
                                                              width: 0.88,
                                                              color: AppColors
                                                                  .blueTextColor),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.28),
                                                        ),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          '9:00',
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .blueTextColor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Text(
                                                      '-',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF11387C),
                                                        fontSize: 13.19,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 0,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      width: 50.14,
                                                      height: 21.99,
                                                      decoration:
                                                          ShapeDecoration(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side: const BorderSide(
                                                              width: 0.88,
                                                              color: AppColors
                                                                  .blueTextColor),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.28),
                                                        ),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          '9:00',
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .blueTextColor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 30,
                                                    ),
                                                    SvgPicture.asset("assets/svg/deleteIcon.svg"),
                                                    const SizedBox(
                                                      width: 115,
                                                    ),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: SvgPicture.asset(
                                                            "assets/svg/add12.svg")),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: SvgPicture.asset(
                                                            "assets/svg/copy.svg"))
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                height: 464,
                                                decoration:
                                                    const ShapeDecoration(
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      width: 1,
                                                      strokeAlign: BorderSide
                                                          .strokeAlignCenter,
                                                      color: Color(0xFFCECECE),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 30.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 355,
                                                  height: 54,
                                                  decoration: ShapeDecoration(
                                                    color:
                                                        AppColors.blueTextColor,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.32),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Container(
                                                        width: 135.51,
                                                        height: 33.88,
                                                        decoration:
                                                            ShapeDecoration(
                                                          color: Colors.white,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.32),
                                                          ),
                                                          shadows: const [
                                                            BoxShadow(
                                                              color: Color(
                                                                  0x3F000000),
                                                              blurRadius: 3.08,
                                                              offset:
                                                                  Offset(0, 0),
                                                              spreadRadius: 0,
                                                            )
                                                          ],
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            SvgPicture.asset(
                                                                "assets/svg/list.svg"),
                                                             Text(
                                                              AppLocalizations.of(context)!.listView,
                                                              style: const TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 15.40,
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 153.51,
                                                        height: 33.88,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            SvgPicture.asset(
                                                                "assets/svg/whitecal.svg"),
                                                             Text(
                                                              AppLocalizations.of(context)!.calendarView,
                                                              style: const TextStyle(
                                                                color: AppColors
                                                                    .whiteColor,
                                                                fontSize: 15.40,
                                                                fontFamily:
                                                                    AppFonts
                                                                        .font,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 30,
                                                ),
                                                 Text(
                                                 AppLocalizations.of(context)!.dateOverride,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                SizedBox(
                                                  width: 328,
                                                  height: 39,
                                                  child: Text(
                                                    AppLocalizations.of(context)!.dateOverrideAvailability,
                                                    style: const TextStyle(
                                                      color: Color(0xFF969696),
                                                      fontSize: 15,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                Container(
                                                  width: 250,
                                                  height: 44,
                                                  decoration: ShapeDecoration(
                                                    color:
                                                        const Color(0xFF11387C),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8)),
                                                  ),
                                                  child:  Center(
                                                    child: Text(
                                                      AppLocalizations.of(context)!.dateOverrides,
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 17,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: showSession3,
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: SizedBox(
                                    width: 580,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                         Text(
                                          AppLocalizations.of(context)!.language,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: AppFonts.font,
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        Container(
                                          width: 580,
                                          height: 43,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 1,
                                                  color: AppColors
                                                      .blurBackGroundColor),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                 Text(
                                                  AppLocalizations.of(context)!.english,
                                                  style: const TextStyle(
                                                    color: Color(0xFF6C6C6C),
                                                    fontSize: 18,
                                                    fontFamily: AppFonts.font,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                SvgPicture.asset(
                                                    "assets/svg/Iconarrowdown.svg")
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 35,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                 Text(
                                                  AppLocalizations.of(context)!.dateFormat,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontFamily: AppFonts.font,
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Container(
                                                  width: 240,
                                                  height: 43,
                                                  decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: const BorderSide(
                                                          width: 1,
                                                          color: AppColors
                                                              .blurBackGroundColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        const Text(
                                                          'DD/MM/YYYY',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF6C6C6C),
                                                            fontSize: 18,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                        SvgPicture.asset(
                                                            "assets/svg/Iconarrowdown.svg")
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 30,
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                 Text(
                                                  AppLocalizations.of(context)!.timeFormat,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontFamily:AppFonts.font,
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Container(
                                                  width: 240,
                                                  height: 43,
                                                  decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: const BorderSide(
                                                          width: 1,
                                                          color: AppColors
                                                              .blurBackGroundColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        const Text(
                                                          '24h',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF6C6C6C),
                                                            fontSize: 18,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                        SvgPicture.asset(
                                                            "assets/svg/Iconarrowdown.svg")
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 30,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                         Text(
                                          AppLocalizations.of(context)!.country,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          width: 580,
                                          height: 43,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 1,
                                                  color: AppColors
                                                      .blurBackGroundColor),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                 Text(
                                                  AppLocalizations.of(context)!.chlie,
                                                  style: const TextStyle(
                                                    color: Color(0xFF6C6C6C),
                                                    fontSize: 18,
                                                    fontFamily:AppFonts.font,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                SvgPicture.asset(
                                                    "assets/svg/Iconarrowdown.svg")
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                         Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)!.timeZone,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontFamily: AppFonts.font,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              AppLocalizations.of(context)!.currentTime,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontFamily: AppFonts.font,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          width: 580,
                                          height: 43,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 1,
                                                  color: AppColors
                                                      .blurBackGroundColor),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                 Text(
                                                  AppLocalizations.of(context)!.english,
                                                  style: const TextStyle(
                                                    color: Color(0xFF6C6C6C),
                                                    fontSize: 18,
                                                    fontFamily:AppFonts.font,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                SvgPicture.asset(
                                                    "assets/svg/Iconarrowdown.svg")
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 60,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 150.83,
                                              height: 46.47,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFF11387C),
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      width: 0.76,
                                                      color: Color(0xFF7E56D8)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.12),
                                                ),
                                                shadows: const [
                                                  BoxShadow(
                                                    color: Color(0x0C101828),
                                                    blurRadius: 1.53,
                                                    offset: Offset(0, 0.76),
                                                    spreadRadius: 0,
                                                  )
                                                ],
                                              ),
                                              child:  Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    AppLocalizations.of(context)!.saveChanges,
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontFamily: AppFonts.font,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: 89.83,
                                              height: 46.47,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      width: 0.76,
                                                      color: Color(0xFF11387C)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.12),
                                                ),
                                                shadows: const [
                                                  BoxShadow(
                                                    color: Color(0x0C101828),
                                                    blurRadius: 1.53,
                                                    offset: Offset(0, 0.76),
                                                    spreadRadius: 0,
                                                  )
                                                ],
                                              ),
                                              child:  Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    AppLocalizations.of(context)!.cancel,
                                                    style: const TextStyle(
                                                      color: Color(0xFF6C6C6C),
                                                      fontSize: 13.77,
                                                      fontFamily: AppFonts.font,
                                                      fontWeight:
                                                          FontWeight.w600,

                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 178,
                                            ),
                                            Container(
                                              width: 145.83,
                                              height: 46.47,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFFB94E4A),
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      width: 0.76,
                                                      color: Color(0xFF7E56D8)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.12),
                                                ),
                                                shadows: const [
                                                  BoxShadow(
                                                    color: Color(0x0C101828),
                                                    blurRadius: 1.53,
                                                    offset: Offset(0, 0.76),
                                                    spreadRadius: 0,
                                                  )
                                                ],
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                  AppLocalizations.of(context)!.delete,
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontFamily:AppFonts.font,
                                                      fontWeight:
                                                          FontWeight.w600,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
