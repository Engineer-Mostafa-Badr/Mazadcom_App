import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/view_details/view_details_screen.dart';
// listViiew for all card
class CardWinnerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return CardForGroup();
      },
    );
  }
}
// ui for card
class CardForGroup extends StatelessWidget {
  CardForGroup({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: width * 0.04,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(45, 158, 158, 158),
        ),
        height: height * 0.11,
        width: width * 0.9,
        child: Row(
          children: [
            // first section
            Container(
              width: width * 0.6,
              child: Column(
                children: [
                  Container(
                    height: height * 0.08,
                    child: Row(
                      children: [
                        // information of auction
                        Container(
                          padding: EdgeInsets.all(width * 0.02),
                          width: width * 0.25,
                          child: Column(
                            children: [
                              Text(
                                "Auctions.current_amount".tr(),
                                style: TextStyle(
                                  fontSize: width * 0.025,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "1,000 ",
                                    style: TextStyle(
                                      fontSize: width * 0.02,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Wallet.omr".tr(),
                                    style: TextStyle(
                                      fontSize: width * 0.018,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        "assetss/numbidd.svg",
                                        height: width * 0.04,
                                        width: width * 0.04,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        "30",
                                        style: TextStyle(
                                          fontSize: width * 0.018,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: width * 0.02),
                                  Container(
                                    width: width * 0.03,
                                    height: width * 0.03,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.red, width: 0.5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '4',
                                        style: TextStyle(
                                          fontSize: width * 0.018,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // details of auctions screen
                        Container(
                          padding: EdgeInsetsDirectional.only(
                            end: width * 0.02,
                            top: height * 0.005,
                          ),
                          width: width * 0.35,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "خردة متنوعة",
                                style: TextStyle(
                                  fontSize: width * 0.035,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "MZAD2523",
                                    style: TextStyle(
                                      fontSize: width * 0.025,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.key,
                                    size: width * 0.025,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "1h 30m 31s",
                                    style: TextStyle(
                                      fontSize: width * 0.025,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          const Color.fromARGB(255, 245, 19, 3),
                                    ),
                                  ),
                                  Icon(
                                    Icons.lock_clock,
                                    size: width * 0.025,
                                    color:
                                        const Color.fromARGB(255, 245, 19, 3),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewDetailsScreen()),
                      );
                    },
                    child: Container(
                      height: height * 0.03,
                      decoration: BoxDecoration(
                        color: color1,
                        borderRadius: BorderRadiusDirectional.only(
                          bottomStart: Radius.circular(8),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assetss/auctions.svg",
                            height: width * 0.025,
                            width: width * 0.025,
                            color: Colors.white,
                          ),
                          SizedBox(width: width * 0.01),
                          Text(
                            "Wallet.more_details".tr(),
                            style: TextStyle(
                              fontSize: width * 0.03,
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
            ),
            // image Section
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViewDetailsScreen()),
                );
              },
              child: Container(
                width: width * 0.32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    bottomEnd: Radius.circular(10),
                    topEnd: Radius.circular(10),
                  ),
                  color: const Color.fromARGB(45, 158, 158, 158),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(10),
                        topEnd: Radius.circular(10),
                      ),
                      child: Image.asset(
                        "assetss/ss.jpg",
                        width: width * 0.35,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: -7,
                      left: 3,
                      child: Image.asset(
                        "assetss/wlogos.png",
                        height: width * 0.08,
                        width: width * 0.08,
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
                            height: width * 0.05,
                            width: width * 0.05,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 2,
                      top: 2,
                      child: Card(
                        color: color1,
                        child: Padding(
                          padding: EdgeInsetsDirectional.symmetric(
                            horizontal: width * 0.01,
                          ),
                          child: Text(
                            "مفرد",
                            style: TextStyle(
                              fontSize: width * 0.02,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
