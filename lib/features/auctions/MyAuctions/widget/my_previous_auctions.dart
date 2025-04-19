import 'package:mzadcom/features/auctions/MyAuctions/widget/card_action_winner.dart';
import 'package:mzadcom/features/auctions/MyBids/search.dart';
import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:mzadcom/core/constants/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mzadcom/features/tracking/dropdown.dart';

class MyPreviousAuctions extends StatefulWidget {
  const MyPreviousAuctions({super.key});

  @override
  State<MyPreviousAuctions> createState() => _MyPreviousAuctionsState();
}

class _MyPreviousAuctionsState extends State<MyPreviousAuctions> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          SizedBox(height: 10),
          Center(
            child: Container(
              height: 85,
              width: 360,
              decoration: BoxDecoration(
                color: color2,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "مزاداتي السابقة",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset(
                          "assetss/auctions.svg",
                          height: 18,
                          width: 18,
                        ),
                      ],
                    ),
                  ),
                  CustomDropdownButton(),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Search(),
          SizedBox(
            height: 3,
          ),
          Expanded(
            child: CardWinnerList(),
          ),
        ],
      ),
    ));
  }
}
