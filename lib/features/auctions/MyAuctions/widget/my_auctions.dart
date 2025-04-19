import 'package:mzadcom/features/auctions/BidderAuctions/bidder_auctions_screen.dart';
import 'package:mzadcom/features/auctions/MyAuctions/widget/tab_item_my_auctions.dart';
import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:mzadcom/core/constants/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mzadcom/features/tracking/dropdown.dart';

class MyAuctionsScreen extends StatelessWidget {
  const MyAuctionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: CustomAppBar(),
        body: LayoutBuilder(
          builder: (context, constraints) {
            double containerWidth = constraints.maxWidth * 0.94;
            double tabBarWidth = constraints.maxWidth * 0.94;
            double containerHeight = constraints.maxHeight * 0.12;
            double tabBarHeight = constraints.maxHeight * 0.05;
            double iconSize = constraints.maxWidth * 0.05;
            double fontSize = constraints.maxWidth * 0.04;
            double paddingValue = constraints.maxWidth * 0.03;

            return Column(
              children: [
                SizedBox(height: constraints.maxHeight * 0.015),
                Center(
                  child: Container(
                    height: containerHeight,
                    width: containerWidth,
                    decoration: BoxDecoration(
                      color: color2,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: paddingValue,
                              vertical: paddingValue / 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                "assetss/auctions.svg",
                                height: iconSize,
                                width: iconSize,
                              ),
                              SizedBox(width: paddingValue / 2),
                              Text(
                                "Home.my_auction_list".tr(),
                                style: TextStyle(
                                  fontSize: fontSize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomDropdownButton(),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: constraints.maxHeight * 0.01),
                Container(
                  height: tabBarHeight,
                  width: tabBarWidth,
                  margin: EdgeInsets.symmetric(horizontal: paddingValue / 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: color2,
                  ),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: color1,
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                    ),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.white,
                    tabs: [
                      TabItemMyAuctions(title: 'Home.active'.tr(), count: 4),
                      TabItemMyAuctions(title: "Home.expire".tr(), count: 1),
                      TabItemMyAuctions(title: 'Home.upcoming'.tr(), count: 1),
                      TabItemMyAuctions(title: 'Home.previous'.tr(), count: 1),
                    ],
                  ),
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      BidderAuctionsScreen(),
                      Center(child: Text("صفحة المزادات المنتهية")),
                      Center(child: Text("صفحة المزادات التي تنتهي قريباً")),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
