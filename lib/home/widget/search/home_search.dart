import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mzadcom/Constants/constants_colors.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final textFieldWidth = screenWidth * 0.83;
    final iconContainerWidth = screenWidth * 0.12;

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: textFieldWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(7),
                bottomStart: Radius.circular(7),
              ),
              color: Colors.black12,
            ),
            child: Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color.fromARGB(176, 158, 158, 158),
                  ),
                  hintText: "Home.search".tr(),
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 182, 180, 180),
                    fontSize: screenWidth * 0.035,
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(7),
                bottomEnd: Radius.circular(7),
              ),
              color: color2, // استبدل color2 بلون ثابت أو متغير مناسب
            ),
            height: MediaQuery.of(context).size.height * 0.05,
            width: iconContainerWidth,
            child: IconButton(
              onPressed: () {
              },
              icon: Icon(
                Icons.filter_alt_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
