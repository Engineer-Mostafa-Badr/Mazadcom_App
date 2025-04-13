import 'package:flutter/material.dart';
import 'package:mzadcom/Services/media_query.dart';

class HomeButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHelper = MediaQueryHelper(context);

    return Container(
      height: mediaQueryHelper.screenHeight * 0.1,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(mediaQueryHelper.screenWidth * 0.01),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: mediaQueryHelper.screenWidth * 0.02),
                    Text(
                      "المالك",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(mediaQueryHelper.screenWidth * 0.01),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.timer_sharp),
                    SizedBox(width: mediaQueryHelper.screenWidth * 0.02),
                    Text(
                      "الفترة",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(mediaQueryHelper.screenWidth * 0.01),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.filter_list),
                    SizedBox(width: mediaQueryHelper.screenWidth * 0.02),
                    Text(
                      "التصنيف",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(mediaQueryHelper.screenWidth * 0.01),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.online_prediction),
                    SizedBox(width: mediaQueryHelper.screenWidth * 0.02),
                    Text(
                      "الحالة",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
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
