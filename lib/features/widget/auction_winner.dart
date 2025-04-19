import 'package:mzadcom/features/auctions/MyAuctions/widget/card_action_winner.dart';
import 'package:mzadcom/features/home/widget/search/home_search.dart';
import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:mzadcom/core/constants/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mzadcom/features/tracking/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuctionWinner extends StatelessWidget {
  const AuctionWinner({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          children: [
            SizedBox(height: screenHeight * 0.02),
            Center(
              child: Container(
                height: screenHeight * 0.12,
                width: screenWidth * 0.95,
                decoration: BoxDecoration(
                  color: color2,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.03,
                        vertical: screenHeight * 0.005,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assetss/winner.svg",
                            height: screenHeight * 0.025,
                            width: screenWidth * 0.05,
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          Text(
                            "Dashboard.winning_auctions".tr(),
                            style: TextStyle(
                              fontSize: 16,
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
            SizedBox(height: screenHeight * 0.015),
            HomeSearch(),
            SizedBox(height: screenHeight * 0.005),
            Expanded(
              child: CardWinnerList(),
            ),
          ],
        ),
      ),
    );
  }
}
