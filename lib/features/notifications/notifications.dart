import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:mzadcom/core/constants/custom_app_bar.dart';
import 'package:mzadcom/core/media_query.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mqHelper = MediaQueryHelper(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          children: [
            SizedBox(height: mqHelper.screenHeight * 0.02),
            Text("الإشعارات",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: mqHelper.screenWidth * 0.04,
                )),
            SizedBox(height: mqHelper.screenHeight * 0.1),
            Center(
              child: CircleAvatar(
                backgroundColor: color2,
                radius: mqHelper.screenWidth * 0.2,
                child: Icon(Icons.notifications_sharp,
                    size: mqHelper.screenWidth * 0.15),
              ),
            ),
            SizedBox(height: mqHelper.screenHeight * 0.02),
            Text(
              "لا توجد إشعارات متاحة",
              style: TextStyle(
                fontSize: mqHelper.screenWidth * 0.05,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
