import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../Utils/colors.dart';
import '../../components/my_drawer.dart';



class PublicProfileScreen extends StatefulWidget {
  const PublicProfileScreen({Key? key}) : super(key: key);

  @override
  State<PublicProfileScreen> createState() => _PublicProfileScreenState();
}

class _PublicProfileScreenState extends State<PublicProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.blurContainerColor,
      body: Row(
        children: [
            Flexible(flex: 1, child: MyDrawer(index: 3,)),
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
                          Text(
                            AppLocalizations.of(context)!.myProfile,
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
                    SingleChildScrollView(
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
                          child:  Padding(
                            padding: const EdgeInsets.only(
                              left: 35.0, top: 30,right: 35 ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SvgPicture.asset("assets/svg/doc.svg"),
                                    Text(
                                      AppLocalizations.of(context)!.editInformation,
                                      style: const TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 16,
                                        fontFamily: AppFonts.font,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 388,
                                      height: 543,
                                      decoration: ShapeDecoration(
                                        color: const Color(0x0F11387C),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                      child:  Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [

                                            ListTile(
                                          leading: Image.asset("assets/images/image9.png"),
                                              /*leading:SvgPicture.asset("assets/svg/imagecircle.svg")*/
                                              title:  Text(
                                                AppLocalizations.of(context)!.susanPicart,
                                                style: const TextStyle(
                                                  color: AppColors.blueTextColor,
                                                  fontSize: 30,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w700,

                                                ),
                                              ),
                                              subtitle:  Text(
                                                AppLocalizations.of(context)!.heShe,
                                                style: const TextStyle(
                                                  color: Color(0xFF4A4A4A),
                                                  fontSize: 12,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 30,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight.w400,

                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
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
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight.w400,
                                                        ),
                                                      ),

                                                    ],
                                                  ),
                                                ),
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
                                                          fontFamily: 'Roboto',
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
                                            style: TextStyle(
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
                                            style: TextStyle(
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
                                            style: TextStyle(
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
                                            style: TextStyle(
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
                                            style: TextStyle(
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
                                            style: TextStyle(
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
                                            style: TextStyle(
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
                                            style: TextStyle(
                                              color:AppColors.blackColor,
                                              fontSize: 14,
                                              fontFamily: AppFonts.font,
                                              fontWeight: FontWeight.w400,
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
