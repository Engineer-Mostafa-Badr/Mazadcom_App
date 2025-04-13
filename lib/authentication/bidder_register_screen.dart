import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';
import 'package:mzadcom/authentication/registerations/company/company_register_screen.dart';
import 'package:mzadcom/authentication/registerations/tab_item_register.dart';
import 'registerations/individual/individual_register_screen.dart';

class BidderRegister extends StatefulWidget {
  const BidderRegister({super.key});

  @override
  _BidderRegisterState createState() => _BidderRegisterState();
}

class _BidderRegisterState extends State<BidderRegister>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String titleText =
      "Authentication.as_individual".tr(); 

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    // تحديث النص عند تغيير التبويب
    _tabController.addListener(() {
      setState(() {
        titleText = _tabController.index == 1
            ? "Authentication.as_company".tr()
            : "Authentication.as_individual".tr();
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(),
          body: Column(
            children: [
              Container(
                width: screenWidth * 0.9, 
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(15),
                    topEnd: Radius.circular(15),
                  ),
                  color: const Color.fromARGB(30, 158, 158, 158),
                ),
                child: Column(
                  children: [
                    // شريط العنوان مع الأيقونة
                    Container(
                      height: screenHeight * 0.05, 
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: color2, 
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                end: 8, start: 16, top: 8, bottom: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Colors.white),
                              ),
                              child: const Icon(
                                Icons.login,
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            titleText,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.009),

                    // type of registr text
                    Text(
                      "Authentication.registration_type".tr(),
                      style: TextStyle(
                        fontSize: 12,
                        color: color2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: screenHeight * 0.009),
                    Container(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.85,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: color2,
                      ),
                      child: TabBar(
                        controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          color: color1,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.white,
                        tabs: [
                          TabItemRegister(
                            typeregister: "Authentication.individual".tr(),
                            icontyperegister: Icon(Icons.person),
                          ),
                          TabItemRegister(
                            typeregister: "Authentication.company".tr(),
                            icontyperegister: Icon(Icons.apartment),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    IndividualRegister(),
                    CompanyRegister(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
