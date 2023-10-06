import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../Utils/Routes/routesNames.dart';
import '../../Utils/colors.dart';
import '../../components/my_drawer.dart';
import 'customer_model.dart';

class Customer extends StatefulWidget {
  const Customer({Key? key}) : super(key: key);

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  List<DataItem> dataItems = List.generate(
    20,
    (index) => DataItem(
      id: '00.000.000-0',
      name: 'Joao Pedro Silva',
      email: 'joaopedro@gmail.com',
      telephone: '56 90000-0000',
      neighborhood: 'Sao Paulo',
    ),
  );
  int selectedRowIndex = -1;
  bool selectedRowIndex1 = false;
  bool isCalendarSelected = true;
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.blurContainerColor,
      body: Row(
        children: [
           Flexible(flex: 1, child: MyDrawer(index: 1,)),
          SizedBox(width: 5,),
          Flexible(
            flex: 5,
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                     Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          AppLocalizations.of(context)!.myClient,
                          style: const TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 24,
                            fontFamily: AppFonts.font,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
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
                              left: 35.0, top: 10, bottom: 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  const SizedBox(width: 10,),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        selectedRowIndex1 = ! selectedRowIndex1;
                                      });
                                    },
                                    child: SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: selectedRowIndex1
                                          ? SvgPicture.asset("assets/svg/Icontick.svg")
                                          : SvgPicture.asset("assets/svg/IconEmpty.svg"),),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                   SizedBox(
                                    width: MediaQuery.sizeOf(context).height * 0.3,
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        AppLocalizations.of(context)!.id,
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
                                    width: MediaQuery.sizeOf(context).height * 0.3,
                                    child:  Row(
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!.name,
                                          style: const TextStyle(
                                            color: AppColors.blackColor,
                                            fontSize: 18,
                                            fontFamily: AppFonts.font,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.19,
                                          ),
                                        ),
                                        const SizedBox(width: 10,),
                                        const Icon(Icons.arrow_upward,size: 18,),
                                      ],
                                    ),
                                  ),
                                   SizedBox(
                                    width: MediaQuery.sizeOf(context).height * 0.3,
                                    child:  Text(
                                      AppLocalizations.of(context)!.email,
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
                                    width: MediaQuery.sizeOf(context).height * 0.3,
                                    child:  Text(
                                      AppLocalizations.of(context)!.telephone,
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
                                    width: MediaQuery.sizeOf(context).height * 0.3,
                                    child: Text(
                                      AppLocalizations.of(context)!.neighborhood,
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
                              const Divider(height: 1,),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: dataItems.length,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        InkWell(
                                          onTap:(){
                                            Navigator.pushNamed(context, RoutesName.customerSessionScreen);
                                            setState(() {
                                              selectedRowIndex = index;
                                              //selectedRowIndex1 = !selectedRowIndex1 ;
                                            });
                                          } ,
                                          child: Container(
                                            height: 47,
                                            decoration:BoxDecoration(
                                                color: selectedRowIndex == index ? const Color(0x380A80BD): Colors.white,
                                                borderRadius: BorderRadius.circular(3)
                                            ),
                                            child: Row(
                                              children: [
                                                const SizedBox(width: 10,),
                                                SizedBox(
                                                  height: 18,
                                                  width: 18,
                                                  child: selectedRowIndex == index
                                                      ? SvgPicture.asset("assets/svg/Icontick.svg")
                                                      : SvgPicture.asset("assets/svg/IconEmpty.svg"),),

                                                const SizedBox(
                                                  width: 30,
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.sizeOf(context).height * 0.3,
                                                  child: Text(
                                                    dataItems[index].id,
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
                                                  width: MediaQuery.sizeOf(context).height * 0.3,
                                                  child: Text(
                                                    dataItems[index].name,
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
                                                  width: MediaQuery.sizeOf(context).height * 0.3,
                                                  child: Text(
                                                    dataItems[index].email,
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
                                                  width: MediaQuery.sizeOf(context).height * 0.3,
                                                  child: Text(
                                                    dataItems[index].telephone,
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
                                                  width: MediaQuery.sizeOf(context).height * 0.3,
                                                  child: Text(
                                                    dataItems[index].neighborhood,
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
                                          ),
                                        ),
                                        const Divider(height: 1,),
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
