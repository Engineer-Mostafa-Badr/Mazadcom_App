
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mzadcom/Auctions/MyAuctions/card_action_winner.dart';
import 'package:mzadcom/Auctions/MyBids/search.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';
import 'package:mzadcom/Tracking/dropdown.dart';

class FutureMyAuctions extends StatefulWidget {
  const FutureMyAuctions({super.key});

  @override
  State<FutureMyAuctions> createState() => _FutureMyAuctionsState();
}

class _FutureMyAuctionsState extends State<FutureMyAuctions> {
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "مزاداتي المستقبلية",
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
                            color: Colors.white,
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
      ),
    );
  }
}