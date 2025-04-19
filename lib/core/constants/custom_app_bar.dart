import 'package:mzadcom/features/main_home/main_home_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
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
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                IconButton.filled(
                  onPressed: () {
                    if (context.locale == Locale('ar')) {
                      context.setLocale(Locale('en'));
                    } else {
                      context.setLocale(Locale('ar'));
                    }
                  },
                  icon: SvgPicture.asset(
                    "assetss/elang.svg",
                    height: 24,
                  ),
                  style: IconButton.styleFrom(
                    backgroundColor: Color.fromARGB(128, 223, 224, 224),
                    foregroundColor: const Color.fromARGB(140, 158, 158, 158),
                  ),
                ),
                IconButton.filled(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                  style: IconButton.styleFrom(
                    backgroundColor: Color.fromARGB(128, 223, 224, 224),
                    foregroundColor: const Color.fromARGB(140, 158, 158, 158),
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
  const CustomAppBarlog({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
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
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: IconButton.filled(
                onPressed: () {
                  if (context.locale == Locale('en')) {
                    context.setLocale(Locale('ar'));
                  } else {
                    context.setLocale(Locale('en'));
                  }
                },
                icon: SvgPicture.asset(
                  "assetss/elang.svg",
                  height: 24,
                ),
                style: IconButton.styleFrom(
                  backgroundColor: Color.fromARGB(128, 223, 224, 224),
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
