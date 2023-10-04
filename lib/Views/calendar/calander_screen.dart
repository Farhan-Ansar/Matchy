import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:matchy/Utils/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../components/dayAndWeekCalendar.dart';
import '../../components/my_drawer.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  bool isCalendarSelected = true;
  bool isDaySelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blurContainerColor,
      body: Row(
        children: [
          Flexible(flex: 1, child: MyDrawer(index: 0)),
          const SizedBox(width: 5,),
          Flexible(
            flex: 5,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 138,
                          height: 35,
                          decoration: ShapeDecoration(
                            color: AppColors.blurBackGroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset("assets/svg/calblue.svg"),
                              Text(
                                AppLocalizations.of(context)!.today,
                                style: const TextStyle(
                                  color: AppColors.blueTextColor,
                                  fontSize: 18,
                                  fontFamily: AppFonts.font,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 200,
                          height: 35,
                          decoration: ShapeDecoration(
                            color: AppColors.blurBackGroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.september,
                                style: const TextStyle(
                                  color: AppColors.blueTextColor,
                                  fontSize: 18,
                                  fontFamily: AppFonts.font,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SvgPicture.asset("assets/svg/Iconarrowdown.svg"),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isDaySelected = true;
                            });
                          },
                          child: Container(
                            width: 80,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: isDaySelected
                                  ? AppColors.blueTextColor
                                  : AppColors.blurBackGroundColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                AppLocalizations.of(context)!.day,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: isDaySelected
                                      ? AppColors.whiteColor
                                      : AppColors.blueTextColor,
                                  fontSize: 18,
                                  fontFamily: AppFonts.font,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isDaySelected = false;
                            });
                          },
                          child: Container(
                            width: 80,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: isDaySelected
                                  ? AppColors.blurBackGroundColor
                                  : AppColors.blueTextColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                AppLocalizations.of(context)!.week,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: isDaySelected
                                      ? AppColors.blueTextColor
                                      : AppColors.whiteColor,
                                  fontSize: 18,
                                  fontFamily: AppFonts.font,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 200,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isCalendarSelected = true;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      AppLocalizations.of(context)!.calendar,
                                      style: TextStyle(
                                        color: isCalendarSelected
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
                                      isCalendarSelected = false;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      AppLocalizations.of(context)!.list,
                                      style: TextStyle(
                                        color: isCalendarSelected
                                            ? AppColors.hintColor
                                            : AppColors.blueTextColor,
                                        fontSize: 18,
                                        fontFamily: AppFonts.font,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isCalendarSelected = false;
                                    });
                                  },
                                  child: Container(
                                    width: 85,
                                    height: isCalendarSelected ? 7 : 3,
                                    color: isCalendarSelected
                                        ? AppColors.blueTextColor
                                        : AppColors.hintColor,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isCalendarSelected = false;
                                    });
                                  },
                                  child: Container(
                                    width: 65,
                                    height: isCalendarSelected ? 3 : 7,
                                    color: isCalendarSelected
                                        ? AppColors.hintColor
                                        : AppColors.blueTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: isCalendarSelected,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Visibility(
                            visible: isDaySelected,
                            child: Container(
                              height: 650,
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
                              child: const Padding(
                                padding: EdgeInsets.all(2.0),
                                child: CalendarAppDay(),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: !isDaySelected,
                            child: Container(
                              height: 650,
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
                              child: const Padding(
                                padding: EdgeInsets.all(2.0),
                                child: CalendarApp(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !isCalendarSelected,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 650,
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
                          padding: const EdgeInsets.all(2.0),
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: '04',
                                        style: TextStyle(
                                          color: Color(0xFF6B7280),
                                          fontSize: 24,
                                          fontFamily: AppFonts.font,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '${AppLocalizations.of(context)!.september} ${AppLocalizations.of(context)!.monday}',
                                        style: const TextStyle(
                                          color: Color(0xFF6B7280),
                                          fontSize: 16,
                                          fontFamily: AppFonts.font,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const Divider(
                                  height: 2,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 788,
                                  height: 30,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF0F1F1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 113,
                                        child: Text(
                                          '11:00 - 12:00',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: AppFonts.font,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 113,
                                        child: Text(
                                          'John Gonzalez',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 489,
                                        child: Text(
                                          'Online Session - Nutrition',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 788,
                                  height: 30,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF0F1F1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 113,
                                        child: Text(
                                          '11:00 - 12:00',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 113,
                                        child: Text(
                                          'John Gonzalez',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 489,
                                        child: Text(
                                          'Online Session - Nutrition',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 788,
                                  height: 30,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF0F1F1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 113,
                                        child: Text(
                                          '11:00 - 12:00',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 113,
                                        child: Text(
                                          'John Gonzalez',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 489,
                                        child: Text(
                                          'Online Session - Nutrition',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 788,
                                  height: 30,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF0F1F1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 113,
                                        child: Text(
                                          '11:00 - 12:00',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 113,
                                        child: Text(
                                          'John Gonzalez',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 489,
                                        child: Text(
                                          'Online Session - Nutrition',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '04',
                                        style: TextStyle(
                                          color: Color(0xFF6B7280),
                                          fontSize: 24,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '  SEPTEMBER, MONDAY',
                                        style: TextStyle(
                                          color: Color(0xFF6B7280),
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const Divider(
                                  height: 2,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 788,
                                  height: 30,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF0F1F1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 113,
                                        child: Text(
                                          '11:00 - 12:00',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 113,
                                        child: Text(
                                          'John Gonzalez',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 489,
                                        child: Text(
                                          'Online Session - Nutrition',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 788,
                                  height: 30,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF0F1F1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 113,
                                        child: Text(
                                          '11:00 - 12:00',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 113,
                                        child: Text(
                                          'John Gonzalez',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 489,
                                        child: Text(
                                          'Online Session - Nutrition',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 788,
                                  height: 30,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF0F1F1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 113,
                                        child: Text(
                                          '11:00 - 12:00',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 113,
                                        child: Text(
                                          'John Gonzalez',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 489,
                                        child: Text(
                                          'Online Session - Nutrition',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 788,
                                  height: 30,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF0F1F1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 113,
                                        child: Text(
                                          '11:00 - 12:00',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 113,
                                        child: Text(
                                          'John Gonzalez',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 489,
                                        child: Text(
                                          'Online Session - Nutrition',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.15,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
