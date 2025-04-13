import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mzadcom/Auctions/MyAuctions/future_my_auctions.dart';
import 'package:mzadcom/Auctions/MyAuctions/my_previous_auctions.dart';
import 'package:mzadcom/Auctions/active_auctions.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/Favorites/favorites_screen.dart';
import 'package:flutter_svg/svg.dart';

class ControlPanelWidget extends StatelessWidget {
  const ControlPanelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // قياسات الشاشة لتحديد الأبعاد الديناميكية
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth * 0.9; // 90% من عرض الشاشة
    double iconSize = screenWidth < 400 ? 18 : 24; // حجم الأيقونة
    double fontSize = screenWidth < 400 ? 14 : 18; // حجم الخط

    return Center(
      child: SingleChildScrollView( // دعم التمرير للشاشات الصغيرة
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 1),
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
              ),
            ],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              // رأس لوحة التحكم
              Container(
                decoration: BoxDecoration(
                  color: color2,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                width: containerWidth,
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Home.control_panel".tr(),
                  style: TextStyle(
                    fontSize: fontSize + 4,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              buildMenuItem(
                context,
                title: "Home.upcoming_auctions".tr(),
                iconPath: "assetss/loading.svg",
                destination: FutureMyAuctions(),
                iconSize: iconSize,
                containerWidth: containerWidth,
                fontSize: fontSize,
              ),
              buildMenuItem(
                context,
                title: "Home.active_auctions".tr(),
                iconPath: "assetss/active.svg",
                destination: ActiveAuctions(),
                iconSize: iconSize,
                containerWidth: containerWidth,
                fontSize: fontSize,
              ),
              buildMenuItem(
                context,
                title: "Home.previous_auctions".tr(),
                iconPath: "assetss/arrows.svg",
                destination: MyPreviousAuctions(),
                iconSize: iconSize,
                containerWidth: containerWidth,
                fontSize: fontSize,
              ),
              buildMenuItem(
                context,
                title: "Home.special_auctions".tr(),
                iconData: Icons.favorite,
                destination: FavoritesScreen(),
                iconSize: iconSize,
                containerWidth: containerWidth,
                fontSize: fontSize,
                iconColor: color2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildMenuItem(
    BuildContext context, {
    required String title,
    String? iconPath,
    IconData? iconData,
    required Widget destination,
    required double iconSize,
    required double containerWidth,
    required double fontSize,
    Color iconColor = Colors.black,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => destination),
            );
          },
          splashColor: Colors.grey.withOpacity(0.3),
          highlightColor: Colors.grey.withOpacity(0.1),
          child: Container(
            color: Colors.white,
            width: containerWidth,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: Row(
              children: [
                if (iconPath != null)
                  SvgPicture.asset(iconPath, height: iconSize, width: iconSize)
                else if (iconData != null)
                  Icon(iconData, color: iconColor, size: iconSize),
                const SizedBox(width: 15),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w500),
                  ),
                ),
                Icon(Icons.arrow_right, color: color1, size: iconSize),
              ],
            ),
          ),
        ),
        Container(color: Colors.black12, width: containerWidth, height: 1),
      ],
    );
  }

