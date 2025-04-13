import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mzadcom/Auctions/MyBids/search.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';
import 'package:mzadcom/Tracking/card_deisgn.dart';
import 'package:mzadcom/Tracking/dropdown.dart';
import 'package:mzadcom/Tracking/tracking_buttons.dart';

class CardTrackingScreen extends StatelessWidget {
  const CardTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 70,
                  width: 360,
                  decoration: BoxDecoration(
                    color: color2,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "تتبع المزادات",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            SvgPicture.asset(
                              "assets/chart.svg",
                              height: 18,
                              width: 18,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Row(children: [
                          CustomDropdownButton(),
                        ]),
                      ]),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Search(),
              SizedBox(
                height: 2,
              ),
              CustomButtonsScreen(),
               SizedBox(
                height: 8,
              ),
              CardDeisgn(),
            ],
          ),
        ),
      ),
    );
  }
}
