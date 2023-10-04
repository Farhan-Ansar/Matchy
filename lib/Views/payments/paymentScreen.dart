import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../Utils/colors.dart';
import '../../components/my_drawer.dart';
import '../customers/customer_model.dart';



class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blurContainerColor,
      body: Row(
        children: [
           Flexible(flex: 1, child: MyDrawer(index: 2,)),
          const SizedBox(width: 5,),
          Flexible(
            flex: 5,
            child: Container(
             // color: AppColors.blurContainerColor,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                     Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 5),
                      child: Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.myPayments,
                            style: const TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 24,
                              fontFamily: AppFonts.font,
                              fontWeight: FontWeight.w400,
                            ),
                          )

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
                            left: 35.0, top: 10, ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 200,
                                    height: 41,
                                    decoration: ShapeDecoration(
                                      color: AppColors.blurContainerColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6.92),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SvgPicture.asset("assets/svg/loading.svg"),
                                         Text(
                                          AppLocalizations.of(context)!.statusPayed,
                                          style: const TextStyle(
                                            color: AppColors.blueTextColor,
                                            fontSize: 18,
                                            fontFamily: AppFonts.font,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                       SvgPicture.asset("assets/svg/Iconarrowdown.svg"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 110,
                                    height: 41,
                                    decoration: ShapeDecoration(
                                      color: AppColors.blurContainerColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6.92),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        const SizedBox(width: 10,),
                                        SvgPicture.asset("assets/svg/pep.svg"),
                                        const SizedBox(width: 10,),
                                         Text(
                                          AppLocalizations.of(context)!.client,
                                          style: const TextStyle(
                                            color: AppColors.blueTextColor,
                                            fontSize: 18,
                                            fontFamily: AppFonts.font,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 110,
                                    height: 41,
                                    decoration: ShapeDecoration(
                                      color: AppColors.blurContainerColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6.92),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        const SizedBox(width: 10,),
                                        SvgPicture.asset("assets/svg/calendar1.svg",color: AppColors.blueTextColor,),
                                        const SizedBox(width: 10,),
                                         Text(
                                          AppLocalizations.of(context)!.dates,
                                          style: const TextStyle(
                                            color: AppColors.blueTextColor,
                                            fontSize: 18,
                                            fontFamily: AppFonts.font,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 145,
                                    height: 41,
                                    decoration: ShapeDecoration(
                                      color: AppColors.blurContainerColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6.92),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        const SizedBox(width: 10,),
                                        SvgPicture.asset("assets/svg/plus.svg"),
                                        const SizedBox(width: 10,),
                                         Text(
                                          AppLocalizations.of(context)!.addFilter,
                                          style: const TextStyle(
                                            color: AppColors.blueTextColor,
                                            fontSize: 18,
                                            fontFamily: AppFonts.font,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 337,
                                    height: 78,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      shadows: const [
                                        BoxShadow(
                                          color: Color(0x3F000000),
                                          blurRadius: 4,
                                          offset: Offset(0, 0),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child:  Center(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                '\$50,236.00',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: 20,
                                                  fontFamily:AppFonts.font,
                                                  fontWeight: FontWeight.w600,

                                                ),
                                              ),
                                              Text(
                                                AppLocalizations.of(context)!.totalBilled,
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                  color: Color(0xFF11387C),
                                                  fontSize: 12,
                                                  fontFamily: AppFonts.font,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                '\$50,236.00',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: 20,
                                                  fontFamily:AppFonts.font,
                                                  fontWeight: FontWeight.w600,

                                                ),
                                              ),
                                              Text(
                                                AppLocalizations.of(context)!.paidOut,
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                  color: Color(0xFF11387C),
                                                  fontSize: 12,
                                                  fontFamily: AppFonts.font,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 1,),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
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
                                        AppLocalizations.of(context)!.dat,
                                        style: const TextStyle(
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
                                          style: const TextStyle(
                                            color: AppColors.blackColor,
                                            fontSize: 18,
                                            fontFamily: AppFonts.font,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.19,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Icon(
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
                                    MediaQuery.sizeOf(context).height * 0.3,
                                    child:  Text(
                                      AppLocalizations.of(context)!.modality,
                                      style: const TextStyle(
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
