import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'all_expires_soon.dart';

class ExpiresSoonAuctions extends StatefulWidget {
  const ExpiresSoonAuctions({super.key});

  @override
  State<ExpiresSoonAuctions> createState() => _ExpiresSoonAuctionsState();
}

class _ExpiresSoonAuctionsState extends State<ExpiresSoonAuctions> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: screenWidth * 0.95,
      height: screenHeight * 0.15,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Home.ends_now".tr(),
                          style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AllExpiresSoon()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Home.view_more".tr(),
                              style: TextStyle(
                                  fontSize: screenWidth * 0.025,
                                  color: color2)),
                          Icon(Icons.arrow_forward_ios,
                              size: screenWidth * 0.025, color: color2),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(screenWidth * 0.006),
                      child: Container(
                        width: screenWidth * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                'assetss/ss.jpg',
                                fit: BoxFit.cover,
                                height: screenHeight * 0.06,
                                width: screenWidth * 0.27,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      end: screenWidth * 0.01),
                                  child: Text(
                                    'خردة حديد',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth * 0.022),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      end: screenWidth * 0.02,
                                      top: screenHeight * 0.002),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('12,000 OMR',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: screenWidth * 0.018)),
                                      Text('30m 40s',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: screenWidth * 0.018)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
