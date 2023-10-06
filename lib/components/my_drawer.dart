import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../Utils/Routes/routesNames.dart';
import '../Utils/colors.dart';

class MyDrawer extends StatefulWidget {
   MyDrawer({Key? key, required this.index}) : super(key: key,);
   int index;
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white, // Background color of the container
        boxShadow: [
          BoxShadow(
            color: Colors.grey, // Shadow color
            offset: Offset(0, 20), // Offset to the bottom
            blurRadius: 6, // Blur radius
            spreadRadius: 0, // Spread radius
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/svg/drawer.svg"),
                SizedBox(width: MediaQuery.sizeOf(context).width * 0.015),
                SvgPicture.asset("assets/svg/Group2.svg"),
                const SizedBox(width: 10,),
                SvgPicture.asset("assets/svg/Group1.svg"),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.calendar2Screen);
                },
                child: Container(
                  width: 181,
                  height: 41,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      end: Alignment(3.2, 0.12),
                      begin: Alignment(-0.99, 0.12),
                      colors: [Color(0xFF12367F), Color(0xFF00CFFF)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(56),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset("assets/svg/Union.svg"),
                       Text(
                        AppLocalizations.of(context)!.newMeeting,
                        style: const TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 18,
                          fontFamily: AppFonts.font,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  widget.index = 0; // Change the index to update the appearance
                });
              },
              onExit: (_) {
                setState(() {
                  widget.index = -1; // Restore the index to its original value
                });
              },
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.calendarScreen);
                },
                child: Container(
                  width: 220,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: widget.index == 0
                        ? AppColors.blurContainerColor
                        : AppColors.whiteColor,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 8,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: widget.index == 0
                              ? AppColors.blurBackGroundColor
                              : AppColors.whiteColor,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 22,
                        width: 22,
                        child: SvgPicture.asset(
                          "assets/svg/calendar1.svg",
                          color:
                              AppColors.blackColor,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        AppLocalizations.of(context)!.calendar,
                        style: const TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 18,
                          fontFamily: AppFonts.font,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  widget.index = 1; // Change the index to update the appearance
                });
              },
              onExit: (_) {
                setState(() {
                  widget.index = -1; // Restore the index to its original value
                });
              },
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.customerScreen);
                },
                child: Container(
                  width: 220,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:  widget.index == 1
                        ? AppColors.blurContainerColor
                        : AppColors.whiteColor,),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 8,
                        height: 28,
                        decoration:  BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          color: widget.index == 1
                              ? AppColors.blurBackGroundColor
                              : AppColors.whiteColor,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          height: 22,
                          width: 22,
                          child: SvgPicture.asset("assets/svg/customers.svg",
                            color: AppColors.blackColor,)),
                      const SizedBox(
                        width: 15,
                      ),
                       Text(
                         AppLocalizations.of(context)!.customers,
                        style: const TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 18,
                          fontFamily: AppFonts.font,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  widget.index = 2; // Change the index to update the appearance
                });
              },
              onExit: (_) {
                setState(() {
                  widget.index = -1; // Restore the index to its original value
                });
              },
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.paymentScreen);
                },
                child: Container(
                  width: 220,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:  widget.index == 2
                        ? AppColors.blurContainerColor
                        : AppColors.whiteColor,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 8,
                        height: 28,
                        decoration:  BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          color: widget.index == 2
                              ? AppColors.blurBackGroundColor
                              : AppColors.whiteColor,),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          height: 22,
                          width: 22,
                          child: SvgPicture.asset("assets/svg/payment.svg",
                            color: AppColors.blackColor,)),
                      const SizedBox(
                        width: 15,
                      ),
                       Text(
                         AppLocalizations.of(context)!.payments,
                        style: const TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 18,
                          fontFamily: AppFonts.font,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  widget.index = 3; // Change the index to update the appearance
                });
              },
              onExit: (_) {
                setState(() {
                  widget.index = -1; // Restore the index to its original value
                });
              },
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.publicPerFilScreen);
                },
                child: Container(
                  width: 220,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:  widget.index == 3
                        ? AppColors.blurContainerColor
                        : AppColors.whiteColor,

                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 8,
                        height: 28,
                        decoration:  BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          color: widget.index == 3
                              ? AppColors.blurBackGroundColor
                              : AppColors.whiteColor,),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          height: 22,
                          width: 22,
                          child: SvgPicture.asset("assets/svg/people1.svg",
                            color: AppColors.blackColor,)),
                      const SizedBox(
                        width: 15,
                      ),
                       Text(
                         AppLocalizations.of(context)!.publicProfile,
                        style: const TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 18,
                          fontFamily: AppFonts.font,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  widget.index = 4; // Change the index to update the appearance
                });
              },
              onExit: (_) {
                setState(() {
                  widget.index = -1; // Restore the index to its original value
                });
              },
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.settingScreen);
                },
                child: Container(
                  width: 220,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:  widget.index == 4
                        ? AppColors.blurContainerColor
                        : AppColors.whiteColor,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 8,
                        height: 28,
                        decoration:  BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          color: widget.index == 4
                              ? AppColors.blurBackGroundColor
                              : AppColors.whiteColor,),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 22,
                          width: 22,
                          child: SvgPicture.asset("assets/svg/setting.svg",
                            color: AppColors.blackColor,)),
                      const SizedBox(
                        width: 15,
                      ),
                       Text(
                         AppLocalizations.of(context)!.settings,
                        style: const TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 18,
                          fontFamily: AppFonts.font,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  widget.index = 5; // Change the index to update the appearance
                });
              },
              onExit: (_) {
                setState(() {
                  widget.index = -1; // Restore the index to its original value
                });
              },
              child: InkWell(

                child: Container(
                  width: 220,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: widget.index == 5
                        ? AppColors.blurContainerColor
                        : AppColors.whiteColor,

                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 8,
                        height: 28,
                        decoration:  BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          color: widget.index == 5
                              ? AppColors.blurBackGroundColor
                              : AppColors.whiteColor,),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        height: 22,
                          width: 22,
                          child: SvgPicture.asset("assets/svg/logout.svg",
                            color: AppColors.blackColor,)),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        AppLocalizations.of(context)!.logout,
                        style: const TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 18,
                          fontFamily: AppFonts.font,
                          fontWeight: FontWeight.w400,
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
    );
  }
}





