import 'package:flutter/material.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';
import 'package:mzadcom/Services/media_query.dart';

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
                child: Icon(Icons.notifications_sharp,
                    size: mqHelper.screenWidth * 0.15),
                backgroundColor: color2,
                radius: mqHelper.screenWidth * 0.2,
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
