import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mzadcom/Tracking/dropdown.dart';

class AuctionTrackingTitleWidget extends StatelessWidget {
  final String title;
  final String iconPath;

  const AuctionTrackingTitleWidget({
    Key? key,
    required this.title,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 85,
        decoration: BoxDecoration(
          color: Colors.blue, // يمكنك استبدالها بـ color2 أو تمرير اللون كمعامل إضافي.
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset(
                    iconPath,
                    height: 18,
                    width: 18,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomDropdownButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
