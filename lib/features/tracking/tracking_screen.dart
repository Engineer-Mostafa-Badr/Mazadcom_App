import 'package:mzadcom/features/tracking/tracking_buttons.dart';
import 'package:mzadcom/features/tracking/dropdown.dart';
import '../../core/constants/constants_colors.dart';
import '../../core/constants/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TrackingScreen extends StatefulWidget {
  const TrackingScreen({super.key});

  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(),
            body: Column(children: [
              SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  height: 60,
                  width: 360,
                  decoration: BoxDecoration(
                    color: color2,
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
                            )
                          ],
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
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
              CustomButtonsScreen(),
            ])));
  }
}
