import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../Utils/colors.dart';
import '../../components/my_drawer.dart';
import 'customer_model.dart';

class CustomerSessionScreen extends StatefulWidget {
  const CustomerSessionScreen({Key? key}) : super(key: key);

  @override
  State<CustomerSessionScreen> createState() => _CustomerSessionScreenState();
}

class _CustomerSessionScreenState extends State<CustomerSessionScreen> {
  Color _getColorForText(String text) {
    if (text == 'Payed') {
      return const Color(0xff22C55E);
    } else if (text == 'Pending') {
      return const Color(0xffF59E0B);
    } else if (text == 'Cancelled') {
      return const Color(0xffEF4444);
    } else {
      // Default color if the text doesn't match any of the conditions
      return Colors.grey; // Change this to your desired default color
    }
  }

  List<SessionDataItem> sessionDataItems = List.generate(
    20,
    (index) => SessionDataItem(
      date: '00.000.000-0',
      service: 'Joao Pedro Silva',
      price: 'joaopedro@gmail.com',
      paymentStatus: 'Payed',
      modality: 'Sao Paulo',
    ),
  );
  bool isCalendarSelected = true;
  bool checkBoxValue = false;
  bool showSession = true;
  bool showInformation = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blurContainerColor,
      body: Row(
        children: [
           Flexible(flex: 1, child: MyDrawer(index: 1,)),
          const SizedBox(width: 5,),
          Flexible(
            flex: 5,
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 5),
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
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 24,
                                    fontFamily: AppFonts.font,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.2,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isCalendarSelected = true;
                                        showSession = true;
                                        showInformation = false;
                                      });
                                    },
                                    child: SizedBox(
                                      width: 120,
                                      height: 23,
                                      child: Text(
                                        AppLocalizations.of(context)!.session,
                                        textAlign: TextAlign.center,
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
                                        showSession = false;
                                      });
                                    },
                                    child: SizedBox(
                                      width: 120,
                                      height: 23,
                                      child: Text(
                                        AppLocalizations.of(context)!.information,
                                        textAlign: TextAlign.center,
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
                              const SizedBox(
                                height: 5,
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
                                      width: 110,
                                      height: 3,
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
                                      width: 110,
                                      height: 3,
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
                      visible: showSession,
                      child: Padding(
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
                                left: 35.0, top: 10, ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      shape: const CircleBorder(),
                                      value: checkBoxValue,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          checkBoxValue = newValue!;
                                        });
                                      },
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.sizeOf(context).height * 0.3,
                                      child:  Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          AppLocalizations.of(context)!.date,
                                          style: TextStyle(
                                            color: AppColors.blackColor,
                                            fontSize: 18,
                                            fontFamily: AppFonts.font,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.19,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.sizeOf(context).height * 0.3,
                                      child:  Row(
                                        children: [
                                          Text(
                                            AppLocalizations.of(context)!.service,
                                            style: TextStyle(
                                              color: AppColors.blackColor,
                                              fontSize: 18,
                                              fontFamily: AppFonts.font,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.19,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.arrow_upward,
                                            size: 18,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.sizeOf(context).height * 0.3,
                                      child:  Text(
                                        AppLocalizations.of(context)!.price,
                                        style: const TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 18,
                                          fontFamily: AppFonts.font,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.19,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.sizeOf(context).height * 0.35,
                                      child:  Text(
                                        AppLocalizations.of(context)!.payment,
                                        style: TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 18,
                                          fontFamily: AppFonts.font,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.19,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.sizeOf(context).height * 0.3,
                                      child:  Text(
                                        AppLocalizations.of(context)!.modality,
                                        style: TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 18,
                                          fontFamily: AppFonts.font,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.19,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: sessionDataItems.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          Row(
                                            children: [
                                              Checkbox(
                                                shape: const CircleBorder(),
                                                value: checkBoxValue,
                                                onChanged: (bool? newValue) {
                                                  setState(() {
                                                    checkBoxValue = newValue!;
                                                  });
                                                },
                                              ),
                                              const SizedBox(
                                                width: 30,
                                              ),
                                              SizedBox(
                                                width: MediaQuery.sizeOf(context)
                                                        .height *
                                                    0.3,
                                                child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    sessionDataItems[index].date,
                                                    style: const TextStyle(
                                                      color: AppColors.blackColor,
                                                      fontSize: 16,
                                                      fontFamily: AppFonts.font,
                                                      fontWeight: FontWeight.w400,
                                                      letterSpacing: 0.19,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.sizeOf(context)
                                                        .height *
                                                    0.3,
                                                child: Text(
                                                    sessionDataItems[index].service,
                                                  style: const TextStyle(
                                                    color: AppColors.blackColor,
                                                    fontSize: 16,
                                                    fontFamily: AppFonts.font,
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 0.19,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.sizeOf(context)
                                                        .height *
                                                    0.3,
                                                child: Text(
                                      sessionDataItems[index].price,
                                                  style: const TextStyle(
                                                    color: AppColors.blackColor,
                                                    fontSize: 16,
                                                    fontFamily: AppFonts.font,
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 0.19,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.sizeOf(context)
                                                        .height *
                                                    0.35,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 100,
                                                      height: 30,
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 12,
                                                          vertical: 2),
                                                      decoration: ShapeDecoration(
                                                        color: _getColorForText(
                                                          sessionDataItems[index].paymentStatus,), // Change 'Cancelled' to your text
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(100),
                                                        ),
                                                      ),
                                                      child:  Center(
                                                        child: Text(
                                      sessionDataItems[index].paymentStatus, // Change this text to the one you want to use
                                                          style: const TextStyle(
                                                            color: AppColors
                                                                .whiteColor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                AppFonts.font,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.sizeOf(context)
                                                        .height *
                                                    0.3,
                                                child: Text(
                                      sessionDataItems[index].modality,
                                                  style: const TextStyle(
                                                    color: AppColors.blackColor,
                                                    fontSize: 16,
                                                    fontFamily: AppFonts.font,
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 0.19,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Divider(),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: !showSession,
                      child: Padding(
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
                              left: 50.0, top: 30,right: 50 ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SvgPicture.asset("assets/svg/doc.svg"),
                                     Text(
                                      AppLocalizations.of(context)!.editInformation,
                                      style: const TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 18,
                                        fontFamily: AppFonts.font,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),



                                 Text(
                                  AppLocalizations.of(context)!.name,
                                  style: const TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 18,
                                    fontFamily: AppFonts.font,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  width: 364,
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
                                const SizedBox(height: 15,),


                                 Text(
                                  AppLocalizations.of(context)!.email,
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 18,
                                    fontFamily: AppFonts.font,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  width: 364,
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
                                const SizedBox(height: 15,),


                                 Text(
                                  AppLocalizations.of(context)!.phone,
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 18,
                                    fontFamily: AppFonts.font,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  width: 364,
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
                                const SizedBox(height: 15,),


                                 Text(
                                  AppLocalizations.of(context)!.nameSurname,
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 18,
                                    fontFamily: AppFonts.font,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  width: 364,
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
                                const SizedBox(height: 15,),
                              ],
                            ),
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

