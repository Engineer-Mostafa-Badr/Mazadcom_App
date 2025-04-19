import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AuctionDetailsScreen extends StatelessWidget {
  const AuctionDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        height: screenHeight * 0.35,
        width: screenWidth * 0.92,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              // ignore: deprecated_member_use
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: DefaultTabController(
          length: 3,
          initialIndex: 2,
          child: Column(
            children: [
              Container(
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TabBar(
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      color: color2,
                      width: 3.0,
                    ),
                    insets: EdgeInsets.zero,
                  ),
                  labelColor: color2,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Tab(
                          text: 'Auctions.location'.tr(),
                        ),
                        Icon(Icons.location_on, size: 16)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Tab(
                          text: 'Auctions.documents'.tr(),
                        ),
                        Icon(Icons.download, size: 16)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Tab(text: 'Auctions.details'.tr()),
                        Icon(
                          Icons.file_open_sharp,
                          size: 16,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: const [
                    AuctionLocationTab(),
                    AuctionDocumentsTab(),
                    AuctionInfoTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuctionDocumentsTab extends StatelessWidget {
  const AuctionDocumentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.picture_as_pdf,
              size: screenWidth * 0.15, color: Colors.red),
          SizedBox(height: screenWidth * 0.03),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: color2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Text(
                'Auctions.download'.tr(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.04,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Location
class AuctionLocationTab extends StatelessWidget {
  const AuctionLocationTab({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        children: [
          SizedBox(height: screenWidth * 0.05),
          Text(
            "Auctions.map".tr(),
            style: TextStyle(fontSize: screenWidth * 0.045),
          ),
          Icon(Icons.map, size: screenWidth * 0.25, color: color2),
        ],
      ),
    );
  }
}

class AuctionInfoTab extends StatelessWidget {
  const AuctionInfoTab({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: screenWidth * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.005),
                Text("Auctions.starting_price".tr(),
                    style: TextStyle(
                        fontSize: screenWidth * 0.03,
                        fontWeight: FontWeight.bold)),
                Text("60.000 OMR",
                    style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.bold,
                        color: color2)),
                SizedBox(height: screenHeight * 0.005),
                Text("Auctions.visit_amount".tr(),
                    style: TextStyle(
                        fontSize: screenWidth * 0.03,
                        fontWeight: FontWeight.bold)),
                Text("5.000 OMR",
                    style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.bold,
                        color: color2)),
                SizedBox(height: screenHeight * 0.005),
                Text("Auctions.guarantee_amount".tr(),
                    style: TextStyle(
                        fontSize: screenWidth * 0.03,
                        fontWeight: FontWeight.bold)),
                Text("5.000 OMR",
                    style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.bold,
                        color: color2)),
                SizedBox(height: screenHeight * 0.01),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: screenWidth * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: screenHeight * 0.005),
                Text("Auctions.auction_code".tr(),
                    style: TextStyle(
                        fontSize: screenWidth * 0.03,
                        fontWeight: FontWeight.bold)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text("MZAD2543",
                        style: TextStyle(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.bold,
                            color: color2)),
                    Icon(
                      Icons.key,
                      color: color2,
                      size: screenWidth * 0.03,
                    )
                  ],
                ),
                SizedBox(height: screenHeight * 0.005),
                Text("Auctions.vat".tr(),
                    style: TextStyle(
                        fontSize: screenWidth * 0.03,
                        fontWeight: FontWeight.bold)),
                Text("5%",
                    style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.bold,
                        color: color2)),
                SizedBox(height: screenHeight * 0.005),
                Text("Auctions.start_date".tr(),
                    style: TextStyle(
                        fontSize: screenWidth * 0.03,
                        fontWeight: FontWeight.bold)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text("01/11/2024",
                        style: TextStyle(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.bold,
                            color: color2)),
                    Icon(
                      Icons.date_range_outlined,
                      color: color2,
                      size: screenWidth * 0.03,
                    )
                  ],
                ),
                Text(
                  "(10:00 am)",
                  style: TextStyle(
                      fontSize: screenWidth * 0.028,
                      color: color2,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: screenHeight * 0.005),
                Text("Auctions.end_date".tr(),
                    style: TextStyle(
                        fontSize: screenWidth * 0.03,
                        fontWeight: FontWeight.bold)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text("07/11/2024",
                        style: TextStyle(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.bold,
                            color: color2)),
                    Icon(
                      Icons.date_range_outlined,
                      color: color2,
                      size: screenWidth * 0.03,
                    )
                  ],
                ),
                Text(
                  "(10:00 am)",
                  style: TextStyle(
                      fontSize: screenWidth * 0.028,
                      color: color2,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
