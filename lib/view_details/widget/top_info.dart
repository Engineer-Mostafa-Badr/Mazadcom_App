import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mzadcom/Constants/constants_colors.dart';

class TopInfo extends StatelessWidget {
  const TopInfo({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          height: screenHeight * 0.1, 
          decoration: BoxDecoration(
            color: const Color.fromARGB(13, 107, 105, 105),
            borderRadius: BorderRadiusDirectional.only(
              topEnd: Radius.circular(screenWidth * 0.02),
              topStart: Radius.circular(screenWidth * 0.02),
            ),
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(screenWidth * 0.02),
                width: screenWidth * 0.48, 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "خردة متنوعة",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "MZAD1232",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.005,
                        ),
                        Icon(Icons.key, size: 12),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              "assetss/numbidd.svg",
                              height: screenWidth * 0.04,
                              width: screenWidth * 0.04,
                              color: Colors.black,
                            ),
                            Builder(
                              builder: (context) {
                                int number = 70;
                                String displayText =
                                    number > 99 ? "+99" : number.toString();
                                return Text(
                                  displayText,
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.02,
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(width: screenWidth * 0.01),
                        Icon(Icons.remove_red_eye, size: 14),
                        SizedBox(
                          width: screenWidth * 0.005,
                        ),
                        Text(
                          "435",
                          style: TextStyle(fontSize: 9),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: screenWidth * 0.02),

              // Auction Info
              Container(
                padding: EdgeInsets.all(screenWidth * 0.01),
                width: screenWidth * 0.4, 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.002),
                      child: Text(
                        "50.000 OMR",
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold,
                          color: color2,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.001),
                      child: Text(
                        "Auctions.auction_begins".tr(),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.lock_clock,
                            size: screenWidth * 0.04, color: Colors.black54),
                        SizedBox(
                          width: screenWidth * 0.005,
                        ),
                        Text(
                          "20h 30m 33s",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Importent Note
        Container(
          height: screenHeight * 0.05,
          width: screenWidth * 0.95,
          decoration: BoxDecoration(
            color: const Color.fromARGB(130, 191, 196, 49),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(screenWidth * 0.02),
              bottomRight: Radius.circular(screenWidth * 0.02),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: screenWidth * 0.005,
            children: [
              Icon(
                Icons.warning_rounded,
                size: screenWidth * 0.05,
              ),
              Text(
                "Auctions.owner_approve".tr(),
                style: TextStyle(
                  fontSize: screenWidth * 0.035,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
