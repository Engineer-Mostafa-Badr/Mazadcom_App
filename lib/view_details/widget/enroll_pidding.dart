
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mzadcom/Auctions/RegisterForAuction/register_for_auction.dart';
import 'package:mzadcom/AuctionsDetails/bidding_bottom_sheet.dart';
import 'package:mzadcom/Constants/constants_colors.dart';

class EnrollPidding extends StatelessWidget {
  const EnrollPidding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen width and height using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
             Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterForAuction(), 
              ),
            );
           
          },
          child: Container(
            height: screenHeight * 0.05, 
            width: screenWidth * 0.35,  
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: color1, 
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.03, vertical: screenHeight * 0.01),
              child: Center(
                child: Text(
                  "Home.enroll".tr(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: screenWidth * 0.03, 
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => BiddingBottomSheet(
                color2: color2,
              ),
            
            );
          },
          child: Container(
            height: screenHeight * 0.05, 
            width: screenWidth * 0.35,  
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: color2),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.03, vertical: screenHeight * 0.01),
              child: Center(
                child: Text(
                  "Auctions.pidding".tr(),
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
