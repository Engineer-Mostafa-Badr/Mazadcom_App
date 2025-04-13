import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mzadcom/Constants/constants_colors.dart';

class BidderAuctionsScreen extends StatelessWidget {
  const BidderAuctionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
        double screenWidth = MediaQuery.of(context).size.width;
            double screenHeight = MediaQuery.of(context).size.width;


    return Scaffold(
      
      body: SingleChildScrollView(
        
        child: Column(
          children: [
            const SizedBox(height: 10),
            Center(
              child: Column(
                children:
                    List.generate(6, (index) => _buildAuctionCard(context)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAuctionCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(45, 158, 158, 158),
        ),
        height: 100,
        width: 360,
        child: Row(
          children: [
            _buildAuctionImage(),
            _buildAuctionDetails(context),
            // _buildAuctionImage(),
          ],
        ),
      ),
    );
  }

  Widget _buildAuctionDetails(BuildContext context) {
    return Container(
      width: 240,
      child: Column(
        children: [
          Container(
            height: 75,
            child: Row(
              children: [
                 _buildAuctionInfo(),
                _buildBidInfo(),
               
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 25,
              decoration: BoxDecoration(
                color: color2,
                borderRadius: BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   SvgPicture.asset(
                    "assetss/auctions.svg",
                    height: 13,
                    width: 13,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    "Wallet.start_bidding_now".tr(),
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                 
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBidInfo() {
    return Container(
      padding: const EdgeInsetsDirectional.only(end: 5),
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 5, start: 7),
            child: CircleAvatar(
              child: const Text(
                "3",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              radius: 9,
              backgroundColor: color1,
            ),
          ),
          Text(
            "Auctions.current_amount".tr(),
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
          const Text(
            "1,000 OMR",
            style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 130,
              height: 22,
              decoration: BoxDecoration(
                color: color1,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Wallet.more_details".tr(),
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.priority_high_rounded,
                    color: Colors.white,
                    size: 9,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAuctionInfo() {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 7, top: 3),
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "خردة متنوعة",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "MZAD2523",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.key, size: 10),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "1h 30m 31s",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 245, 19, 3),
                ),
              ),
              Icon(
                Icons.lock_clock,
                color: Color.fromARGB(255, 245, 19, 3),
                size: 10,
              ),
            ],
          ),
          Row(
            spacing: 3,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    "assetss/numbidd.svg",
                    height: 15,
                    width: 15,
                    color: Colors.black,
                  ),
                  Text(
                    "30",
                    style: TextStyle(
                      fontSize: 7.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SvgPicture.asset(
                "assetss/auto.svg",
                width: 15,
                height: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAuctionImage() {
    return Container(
      width: 120,
      decoration: const BoxDecoration(
        borderRadius: BorderRadiusDirectional.only(
          bottomStart: Radius.circular(10),
          topStart: Radius.circular(10),
        ),
        color: Color.fromARGB(45, 158, 158, 158),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadiusDirectional.only(
              topStart: Radius.circular(10),
              bottomStart: Radius.circular(10),
            ),
            child: Image.asset(
              "assetss/ss.jpg",
              width: 120,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: -7,
            left: 3,
            child: Image.asset(
              "assetss/wlogos.png",
              height: 35,
              width: 35,
            ),
          ),
          Positioned(
            bottom: 1,
            right: 2,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image.asset(
                  "assetss/com-logo.png",
                  height: 20,
                  width: 20,
                ),
              ),
            ),
          ),
          Positioned(
            right: 2,
            top: 2,
            child: Card(
              color: Colors.green,
              child: Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 4),
                child: Text(
                  'Home.active'.tr(),
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
