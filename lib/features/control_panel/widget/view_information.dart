import 'package:mzadcom/features/editProfile/edit_profile_screen.dart';
import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ViewInformations extends StatelessWidget {
  const ViewInformations({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      height: screenHeight * 0.32,
      width: screenWidth * 0.9,
      child: Column(
        children: [
          SizedBox(height: screenHeight * 0.01),
          SizedBox(
            width: screenWidth * 0.7,
            height: screenHeight * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: screenWidth * 0.08,
                  child: SvgPicture.asset(
                    "assetss/personcp.svg",
                    height: screenWidth * 0.15,
                    width: screenWidth * 0.15,
                  ),
                ),
                SizedBox(width: screenWidth * 0.02),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      "اسم الشركة",
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "email.company@gmail.com",
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.bold,
                        color: color2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.015),
          _buildInfoBox(context, "Wallet.phone_number".tr(), "91912991"),
          SizedBox(height: screenHeight * 0.01),
          _buildInfoBox(context, "Wallet.bidder_number".tr(), "B0280"),
          SizedBox(height: screenHeight * 0.005),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfile()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: color2,
              // ignore: deprecated_member_use
              shadowColor: Colors.grey.withOpacity(0.2),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              minimumSize: Size(screenWidth * 0.7, screenHeight * 0.05),
            ),
            child: Text(
              "Home.edit_profile".tr(),
              style: TextStyle(
                fontSize: screenWidth * 0.035,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoBox(BuildContext context, String value, String label) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
          ),
        ],
        borderRadius: BorderRadius.circular(7),
        color: Colors.white,
      ),
      height: screenHeight * 0.05,
      width: screenWidth * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: screenWidth * 0.035,
              fontWeight: FontWeight.bold,
              color: color2,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: screenWidth * 0.035,
              fontWeight: FontWeight.bold,
              color: color2,
            ),
          ),
        ],
      ),
    );
  }
}
