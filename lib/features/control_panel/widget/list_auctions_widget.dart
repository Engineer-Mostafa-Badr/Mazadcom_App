import 'package:mzadcom/features/auctions/MyAuctions/widget/my_auctions.dart';
import 'package:mzadcom/features/auctions/MyBids/my_bids_screen.dart';
import 'package:mzadcom/features/widget/auction_winner.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListAuctionsWidget extends StatelessWidget {
  const ListAuctionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth / 5.5;
    final iconSize = screenWidth * 0.08;
    final textSize = screenWidth * 0.020;

    Widget buildAuctionItem(String asset, String title, Widget screen) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: SizedBox(
          height: itemWidth,
          width: itemWidth,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => screen),
                  );
                },
                child: Container(
                  height: itemWidth * 0.7,
                  width: itemWidth * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        // ignore: deprecated_member_use
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      asset,
                      width: iconSize,
                      height: iconSize,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                title,
                style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildAuctionItem("assetss/winners.svg",
              "Dashboard.winning_auctions".tr(), AuctionWinner()),
          buildAuctionItem("assetss/list.svg", "Dashboard.my_auction_list".tr(),
              MyAuctionsScreen()),
          buildAuctionItem("assetss/numauction.svg", "Dashboard.my_bids".tr(),
              MyBidsScreen()),
        ],
      ),
    );
  }
}
