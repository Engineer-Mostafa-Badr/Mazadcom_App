import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mzadcom/Mains/mains_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.0); // ضبط الارتفاع حسب الحاجة

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
            horizontal: 10, vertical: 10), // ضبط الحواف الداخلية
        child: Row(
          children: [
            // شعار التطبيق
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                  );
                },
                child: SvgPicture.asset(
                  "assetss/blogo.svg",
                  width: 18,
                  height: 30,
                ),
              ),
            ),

            Spacer(), // توزيع المساحة بين الشعار والأيقونات

            // أيقونات اللغة والإشعارات
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                IconButton.filled(
                  onPressed: () {
                    if (context.locale == Locale('ar')) {
                      context.setLocale(Locale('en')); // تغيير إلى العربية
                    } else {
                      context.setLocale(Locale('ar')); // تغيير إلى الإنجليزية
                    }
                  },
                  icon: SvgPicture.asset(
                    "assetss/elang.svg",
                    height: 24,
                  ),
                  style: IconButton.styleFrom(
                    backgroundColor: Color.fromARGB(
                        128, 223, 224, 224), // لون الخلفية المملوءة
                    foregroundColor: const Color.fromARGB(140, 158, 158, 158),
                  ),
                ),
                IconButton.filled(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                  style: IconButton.styleFrom(
                    backgroundColor: Color.fromARGB(
                        128, 223, 224, 224), // لون الخلفية المملوءة
                    foregroundColor: const Color.fromARGB(
                        140, 158, 158, 158), // لون الأيقونة داخل الزر
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBarlog extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20), // ضبط الحواف الداخلية
        child: Row(
          children: [
            // شعار التطبيق
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                  );
                },
                child: SvgPicture.asset(
                  "assetss/blogo.svg",
                  width: 18,
                  height: 30,
                ),
              ),
            ),

            Spacer(), // توزيع المساحة بين الشعار والأيقونات

            // أيقونات اللغة والإشعارات
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: IconButton.filled(
                onPressed: () {
                  if (context.locale == Locale('en')) {
                    context.setLocale(Locale('ar')); // تغيير إلى العربية
                  } else {
                    context.setLocale(Locale('en')); // تغيير إلى الإنجليزية
                  }
                },
                icon: SvgPicture.asset(
                  "assetss/elang.svg",
                  height: 24,
                ),
                style: IconButton.styleFrom(
                  backgroundColor: Color.fromARGB(
                      128, 223, 224, 224), // لون الخلفية المملوءة
                  foregroundColor: const Color.fromARGB(140, 158, 158, 158),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
