import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../Utils/Routes/routesNames.dart';
import '../../Utils/colors.dart';
import '../../components/my_drawer.dart';



class PerFil extends StatefulWidget {
  const PerFil({Key? key}) : super(key: key);

  @override
  State<PerFil> createState() => _PerFilState();
}

class _PerFilState extends State<PerFil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.blurContainerColor,
      body: Row(
        children: [
          Flexible(
              flex: 1, 
              child: Container(
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
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap:(){
                              Navigator.pop(context);
                            },
                              child: SvgPicture.asset("assets/svg/drawer.svg")),
                          SizedBox(width:MediaQuery.sizeOf(context).width*0.03),
                          SvgPicture.asset("assets/svg/Group2.svg"),
                          const SizedBox(width: 10,),
                          SvgPicture.asset("assets/svg/Group1.svg"),
                        ],
                      ),
                    
                    ],
                  ),
                ),
              ),),
          SizedBox(width: 5,),
          Flexible(
            flex: 5,
            child: Container(
              
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 35.0, top: 30,right: 35 ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 521,
                                        height: 200,
                                        decoration: ShapeDecoration(
                                          color: const Color(0x0F11387C),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Image.asset("assets/images/image9.png"),
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                               Text(
                                              AppLocalizations.of(context)!.susanPicart,
                                              style: const TextStyle(
                                                color: AppColors.blueTextColor,
                                                fontSize: 30,
                                                fontFamily: AppFonts.font,
                                                fontWeight: FontWeight.w700,

                                              ),
                                            ),
                                                 Text(
                                                  AppLocalizations.of(context)!.heShe,
                                                  style: const TextStyle(
                                                    color: Color(0xFF4A4A4A),
                                                    fontSize: 12,
                                                    fontFamily:AppFonts.font,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                const SizedBox(height: 30,),
                                                Row(
                                                  children: [

                                                    Container(
                                                      width: 112,
                                                      height: 28,
                                                      decoration: ShapeDecoration(
                                                        color: const Color(0xFFD0EDFF),
                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          SvgPicture.asset("assets/svg/dollor.svg"),
                                                           Text(
                                                             AppLocalizations.of(context)!.session120,
                                                            style: const TextStyle(
                                                              color: Color(0xFF4A4A4A),
                                                              fontSize: 11,
                                                              fontFamily:AppFonts.font,
                                                              fontWeight: FontWeight.w400,
                                                            ),
                                                          ),

                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(width: 15,),

                                                    Container(
                                                      width: 91,
                                                      height: 28,
                                                      decoration: ShapeDecoration(
                                                        color: const Color(0xFFD0EDFF),
                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          SvgPicture.asset("assets/svg/tv1.svg"),
                                                           Text(
                                                             AppLocalizations.of(context)!.virtual,
                                                            style: const TextStyle(
                                                              color: Color(0xFF4A4A4A),
                                                              fontSize: 11,
                                                              fontFamily: AppFonts.font,
                                                              fontWeight: FontWeight.w400,
                                                            ),
                                                          ),

                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 10,),
                                                Row(
                                                  children: [
                                                  Container(
                                                    width: 72,
                                                    height: 28,
                                                    decoration: ShapeDecoration(
                                                      color: const Color(0xFFD0EDFF),
                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                        SvgPicture.asset("assets/svg/briefcase.svg."),
                                                         Text(
                                                          AppLocalizations.of(context)!.lCSW,
                                                          style: const TextStyle(
                                                            color: Color(0xFF4A4A4A),
                                                            fontSize: 11,
                                                            fontFamily:AppFonts.font,
                                                            fontWeight: FontWeight.w400,

                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                    const SizedBox(width: 15,),
                                                    Container(
                                                      width: 150,
                                                      height: 28,
                                                      decoration: ShapeDecoration(
                                                        color: const Color(0xFFD0EDFF),
                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          SvgPicture.asset("assets/svg/briefcase.svg."),
                                                           Text(
                                                            AppLocalizations.of(context)!.yearsOfExperience24,
                                                            style: const TextStyle(
                                                              color: Color(0xFF4A4A4A),
                                                              fontSize: 11,
                                                              fontFamily:AppFonts.font,
                                                              fontWeight: FontWeight.w400,

                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                ],)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 20,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 15,),
                                          SizedBox(
                                            width: 511,
                                            height: 24,
                                            child: Text(
                                              AppLocalizations.of(context)!.profDesc,
                                              style: const TextStyle(
                                                color:AppColors.blackColor,
                                                fontSize: 14,
                                                fontFamily: AppFonts.font,
                                                fontWeight: FontWeight.w400,

                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 511,
                                            height: 24,
                                            child: Text(
                                              AppLocalizations.of(context)!.profDesc,
                                              style: const TextStyle(
                                                color:AppColors.blackColor,
                                                fontSize: 14,
                                                fontFamily: AppFonts.font,
                                                fontWeight: FontWeight.w400,

                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 511,
                                            height: 24,
                                            child: Text(
                                              AppLocalizations.of(context)!.profDesc,
                                              style: const TextStyle(
                                                color:AppColors.blackColor,
                                                fontSize: 14,
                                                fontFamily: AppFonts.font,
                                                fontWeight: FontWeight.w400,

                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 511,
                                            height: 24,
                                            child: Text(
                                              AppLocalizations.of(context)!.profDesc,
                                              style: const TextStyle(
                                                color:AppColors.blackColor,
                                                fontSize: 14,
                                                fontFamily: AppFonts.font,
                                                fontWeight: FontWeight.w400,

                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 511,
                                            height: 24,
                                            child: Text(
                                              AppLocalizations.of(context)!.profDesc,
                                              style: const TextStyle(
                                                color:AppColors.blackColor,
                                                fontSize: 14,
                                                fontFamily: AppFonts.font,
                                                fontWeight: FontWeight.w400,

                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 511,
                                            height: 24,
                                            child: Text(
                                              AppLocalizations.of(context)!.profDesc,
                                              style: const TextStyle(
                                                color:AppColors.blackColor,
                                                fontSize: 14,
                                                fontFamily: AppFonts.font,
                                                fontWeight: FontWeight.w400,

                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 511,
                                            height: 24,
                                            child: Text(
                                              AppLocalizations.of(context)!.profDesc,
                                              style: const TextStyle(
                                                color:AppColors.blackColor,
                                                fontSize: 14,
                                                fontFamily: AppFonts.font,
                                                fontWeight: FontWeight.w400,

                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 511,
                                            height: 24,
                                            child: Text(
                                              AppLocalizations.of(context)!.profDesc,
                                              style: const TextStyle(
                                                color:AppColors.blackColor,
                                                fontSize: 14,
                                                fontFamily: AppFonts.font,
                                                fontWeight: FontWeight.w400,

                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 511,
                                            height: 24,
                                            child: Text(
                                              AppLocalizations.of(context)!.profDesc,
                                              style: const TextStyle(
                                                color:AppColors.blackColor,
                                                fontSize: 14,
                                                fontFamily: AppFonts.font,
                                                fontWeight: FontWeight.w400,

                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 511,
                                            height: 24,
                                            child: Text(
                                              AppLocalizations.of(context)!.profDesc,
                                              style: const TextStyle(
                                                color:AppColors.blackColor,
                                                fontSize: 14,
                                                fontFamily: AppFonts.font,
                                                fontWeight: FontWeight.w400,

                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                      const SizedBox(height: 20,),
                                      Container(
                                        width: 517,
                                        height: 319,
                                        decoration: ShapeDecoration(
                                          color: const Color(0x0F11387C),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                               Text(
                                                AppLocalizations.of(context)!.specialties,
                                                style: const TextStyle(
                                                  color: Color(0xFF4A4A4A),
                                                  fontSize: 12,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              const SizedBox(height: 10,),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 72,
                                                    height: 28,
                                                    decoration: ShapeDecoration(
                                                      color: const Color(0xFFD0EDFF),
                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                        SvgPicture.asset("assets/svg/briefcase.svg."),
                                                         Text(
                                                          AppLocalizations.of(context)!.lCSW,
                                                          style: const TextStyle(
                                                            color: Color(0xFF4A4A4A),
                                                            fontSize: 11,
                                                            fontFamily:AppFonts.font,
                                                            fontWeight: FontWeight.w400,

                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 15,),
                                                  Container(
                                                    width: 150,
                                                    height: 28,
                                                    decoration: ShapeDecoration(
                                                      color: const Color(0xFFD0EDFF),
                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                        SvgPicture.asset("assets/svg/briefcase.svg."),
                                                       Text(
                                                          AppLocalizations.of(context)!.yearsOfExperience24,
                                                          style: const TextStyle(
                                                            color: Color(0xFF4A4A4A),
                                                            fontSize: 11,
                                                            fontFamily:AppFonts.font,
                                                            fontWeight: FontWeight.w400,

                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],),

                                              const SizedBox(height: 15,),

                                               Text(
                                                AppLocalizations.of(context)!.ageGroups,
                                                style: const TextStyle(
                                                  color: Color(0xFF4A4A4A),
                                                  fontSize: 12,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              const SizedBox(height: 10,),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 72,
                                                    height: 28,
                                                    decoration: ShapeDecoration(
                                                      color: const Color(0xFFD0EDFF),
                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                        SvgPicture.asset("assets/svg/briefcase.svg."),
                                                         Text(
                                                          AppLocalizations.of(context)!.lCSW,
                                                          style: const TextStyle(
                                                            color: Color(0xFF4A4A4A),
                                                            fontSize: 11,
                                                            fontFamily:AppFonts.font,
                                                            fontWeight: FontWeight.w400,

                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 15,),
                                                  Container(
                                                    width: 150,
                                                    height: 28,
                                                    decoration: ShapeDecoration(
                                                      color: const Color(0xFFD0EDFF),
                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                        SvgPicture.asset("assets/svg/briefcase.svg."),
                                                         Text(
                                                            AppLocalizations.of(context)!.yearsOfExperience24,
                                                          style: const TextStyle(
                                                            color: Color(0xFF4A4A4A),
                                                            fontSize: 11,
                                                            fontFamily:AppFonts.font,
                                                            fontWeight: FontWeight.w400,

                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],),


                                              const SizedBox(height: 15,),

                                               Text(
                                                  AppLocalizations.of(context)!.ageGroups,
                                                style: const TextStyle(
                                                  color: Color(0xFF4A4A4A),
                                                  fontSize: 12,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              const SizedBox(height: 10,),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 72,
                                                    height: 28,
                                                    decoration: ShapeDecoration(
                                                      color: const Color(0xFFD0EDFF),
                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                        SvgPicture.asset("assets/svg/briefcase.svg."),
                                                         Text(
                                                            AppLocalizations.of(context)!.lCSW,
                                                          style: const TextStyle(
                                                            color: Color(0xFF4A4A4A),
                                                            fontSize: 11,
                                                            fontFamily:AppFonts.font,
                                                            fontWeight: FontWeight.w400,

                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 15,),
                                                  Container(
                                                    width: 150,
                                                    height: 28,
                                                    decoration: ShapeDecoration(
                                                      color: const Color(0xFFD0EDFF),
                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                        SvgPicture.asset("assets/svg/briefcase.svg."),
                                                        Text(
                                                          AppLocalizations.of(context)!.yearsOfExperience24,
                                                          style: const TextStyle(
                                                            color: Color(0xFF4A4A4A),
                                                            fontSize: 11,
                                                            fontFamily:AppFonts.font,
                                                            fontWeight: FontWeight.w400,

                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],),

                                              const SizedBox(height: 15,),
                                              Container(
                                                width: 323,
                                                decoration: const ShapeDecoration(
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      width: 1,
                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                      color: Color(0xFFB0CDFF),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 15,),


                                              Text(
                                                AppLocalizations.of(context)!.appointments,
                                                style: const TextStyle(
                                                  color: Color(0xFF4A4A4A),
                                                  fontSize: 14,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              const SizedBox(height: 10,),
                                              Text(
                                                  AppLocalizations.of(context)!.virtual,
                                                style: const TextStyle(
                                                  color: Color(0xFF4A4A4A),
                                                  fontSize: 14,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 437,
                                        height: 620,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                          shadows: const [
                                            BoxShadow(
                                              color: Color(0x3F000000),
                                              blurRadius: 2,
                                              offset: Offset(0, 0),
                                              spreadRadius: 0,
                                            )
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(35.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                               Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    AppLocalizations.of(context)!.bookSession,
                                                    style: const TextStyle(
                                                      color: AppColors.blackColor,
                                                      fontSize: 22,
                                                      fontFamily: AppFonts.font,
                                                      fontWeight: FontWeight.w600,

                                                    ),
                                                  ),
                                                  const Text(
                                                    'GMT-4 Timezone',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const SizedBox(height: 5,),
                                              Container(
                                                width: 363,
                                                decoration: const ShapeDecoration(
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      width: 1,
                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                      color: Color(0xFF969696),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 15,),
                                              Text(
                                                AppLocalizations.of(context)!.insuranceType,
                                                style: const TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: 14,
                                                  fontFamily:AppFonts.font,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              const SizedBox(height: 5,),
                                              Container(
                                                width: 104,
                                                height: 28,
                                                decoration: ShapeDecoration(
                                                  color: const Color(0xFFE4F4FF),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                                ),
                                                child: const Row(
                                                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Text(
                                                      'Cash',
                                                      style: TextStyle(
                                                        color: AppColors.blackColor,
                                                        fontSize: 11,
                                                        fontFamily: AppFonts.font,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),
                                                    Icon(Icons.arrow_drop_down),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 10,),
                                              const Padding(
                                                padding: EdgeInsets.only(left: 30.0),
                                                child: Text(
                                                  'Virtual',
                                                  style: TextStyle(
                                                    color: AppColors.blackColor,
                                                    fontSize: 11,
                                                    fontFamily: AppFonts.font,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 15,),
                                              const Text(
                                                'Thu, Aug 17',
                                                style: TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: 12,
                                                  fontFamily: AppFonts.font,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              const SizedBox(height: 10,),
                                              Container(
                                                width: 90,
                                                height: 25,
                                                decoration: ShapeDecoration(
                                                  shape: RoundedRectangleBorder(
                                                    side: const BorderSide(width: 1, color: AppColors.blueTextColor),
                                                    borderRadius: BorderRadius.circular(70),
                                                  ),
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    '10:00 AM',
                                                    style: TextStyle(
                                                      color: AppColors.blueTextColor,
                                                      fontSize: 11,
                                                      fontFamily: 'Roboto',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 25,),
                                              const Text(
                                                'Thu, Aug 17',
                                                style: TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: 12,
                                                  fontFamily: AppFonts.font,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              const SizedBox(height: 10,),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 90,
                                                    height: 25,
                                                    decoration: ShapeDecoration(
                                                      shape: RoundedRectangleBorder(
                                                        side: const BorderSide(width: 1, color: AppColors.blueTextColor),
                                                        borderRadius: BorderRadius.circular(70),
                                                      ),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        '10:00 AM',
                                                        style: TextStyle(
                                                          color: AppColors.blueTextColor,
                                                          fontSize: 11,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10,),
                                                  Container(
                                                    width: 90,
                                                    height: 25,
                                                    decoration: ShapeDecoration(
                                                      shape: RoundedRectangleBorder(
                                                        side: const BorderSide(width: 1, color: AppColors.blueTextColor),
                                                        borderRadius: BorderRadius.circular(70),
                                                      ),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        '10:00 AM',
                                                        style: TextStyle(
                                                          color: AppColors.blueTextColor,
                                                          fontSize: 11,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              const SizedBox(height: 25,),
                                              const Text(
                                                'Thu, Aug 17',
                                                style: TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: 12,
                                                  fontFamily: AppFonts.font,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              const SizedBox(height: 10,),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 90,
                                                    height: 25,
                                                    decoration: ShapeDecoration(
                                                      shape: RoundedRectangleBorder(
                                                        side: const BorderSide(width: 1, color: AppColors.blueTextColor),
                                                        borderRadius: BorderRadius.circular(70),
                                                      ),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        '10:00 AM',
                                                        style: TextStyle(
                                                          color: AppColors.blueTextColor,
                                                          fontSize: 11,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10,),
                                                  Container(
                                                    width: 90,
                                                    height: 25,
                                                    decoration: ShapeDecoration(
                                                      shape: RoundedRectangleBorder(
                                                        side: const BorderSide(width: 1, color: AppColors.blueTextColor),
                                                        borderRadius: BorderRadius.circular(70),
                                                      ),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        '10:00 AM',
                                                        style: TextStyle(
                                                          color: AppColors.blueTextColor,
                                                          fontSize: 11,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10,),
                                                  Container(
                                                    width: 90,
                                                    height: 25,
                                                    decoration: ShapeDecoration(
                                                      shape: RoundedRectangleBorder(
                                                        side: const BorderSide(width: 1, color: AppColors.blueTextColor),
                                                        borderRadius: BorderRadius.circular(70),
                                                      ),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        '10:00 AM',
                                                        style: TextStyle(
                                                          color: AppColors.blueTextColor,
                                                          fontSize: 11,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 20,),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 90,
                                                    height: 25,
                                                    decoration: ShapeDecoration(
                                                      shape: RoundedRectangleBorder(
                                                        side: const BorderSide(width: 1, color: AppColors.blueTextColor),
                                                        borderRadius: BorderRadius.circular(70),
                                                      ),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        '10:00 AM',
                                                        style: TextStyle(
                                                          color: AppColors.blueTextColor,
                                                          fontSize: 11,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10,),
                                                  Container(
                                                    width: 90,
                                                    height: 25,
                                                    decoration: ShapeDecoration(
                                                      shape: RoundedRectangleBorder(
                                                        side: const BorderSide(width: 1, color: AppColors.blueTextColor),
                                                        borderRadius: BorderRadius.circular(70),
                                                      ),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        '10:00 AM',
                                                        style: TextStyle(
                                                          color: AppColors.blueTextColor,
                                                          fontSize: 11,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10,),
                                                  Container(
                                                    width: 90,
                                                    height: 25,
                                                    decoration: ShapeDecoration(
                                                      shape: RoundedRectangleBorder(
                                                        side: const BorderSide(width: 1, color: AppColors.blueTextColor),
                                                        borderRadius: BorderRadius.circular(70),
                                                      ),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        '10:00 AM',
                                                        style: TextStyle(
                                                          color: AppColors.blueTextColor,
                                                          fontSize: 11,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 20,),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 90,
                                                    height: 25,
                                                    decoration: ShapeDecoration(
                                                      shape: RoundedRectangleBorder(
                                                        side: const BorderSide(width: 1, color: AppColors.blueTextColor),
                                                        borderRadius: BorderRadius.circular(70),
                                                      ),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        '10:00 AM',
                                                        style: TextStyle(
                                                          color: AppColors.blueTextColor,
                                                          fontSize: 11,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10,),
                                                  Container(
                                                    width: 90,
                                                    height: 25,
                                                    decoration: ShapeDecoration(
                                                      shape: RoundedRectangleBorder(
                                                        side: const BorderSide(width: 1, color: AppColors.blueTextColor),
                                                        borderRadius: BorderRadius.circular(70),
                                                      ),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        '10:00 AM',
                                                        style: TextStyle(
                                                          color: AppColors.blueTextColor,
                                                          fontSize: 11,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10,),
                                                  Container(
                                                    width: 90,
                                                    height: 25,
                                                    decoration: ShapeDecoration(
                                                      shape: RoundedRectangleBorder(
                                                        side: const BorderSide(width: 1, color: AppColors.blueTextColor),
                                                        borderRadius: BorderRadius.circular(70),
                                                      ),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        '10:00 AM',
                                                        style: TextStyle(
                                                          color: AppColors.blueTextColor,
                                                          fontSize: 11,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              const SizedBox(height: 30,),

                                              Container(
                                                width: 360,
                                                decoration: const ShapeDecoration(
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      width: 1,
                                                      strokeAlign: BorderSide.strokeAlignCenter,
                                                      color: Color(0xFF969696),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 30,),
                                              InkWell(
                                                onTap:(){
                                                  Navigator.pushNamed(context, RoutesName.publicProfileScreen);
                                                } ,
                                                child: Container(
                                                  width: 367,
                                                  height: 42,
                                                  decoration: ShapeDecoration(
                                                    color: AppColors.blueTextColor,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(70),
                                                    ),
                                                  ),
                                                  child:  Center(
                                                    child: Text(
                                                      AppLocalizations.of(context)!.bookSession,
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontFamily: 'Roboto',
                                                        fontWeight: FontWeight.w400,

                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )

                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
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
    );
  }
}
