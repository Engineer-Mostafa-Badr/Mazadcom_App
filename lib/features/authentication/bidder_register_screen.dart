import 'package:mzadcom/features/authentication/registerations/company/company_register_screen.dart';
import 'package:mzadcom/features/authentication/registerations/tab_item_register.dart';
import 'registerations/individual/individual_register_screen.dart';
import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:mzadcom/core/constants/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BidderRegister extends StatefulWidget {
  const BidderRegister({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BidderRegisterState createState() => _BidderRegisterState();
}

class _BidderRegisterState extends State<BidderRegister>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String titleText = "Authentication.as_individual".tr();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

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
                  children: const [
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
