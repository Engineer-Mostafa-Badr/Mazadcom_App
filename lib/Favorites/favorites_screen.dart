import 'package:flutter/material.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';
import 'package:mzadcom/Tracking/dropdown.dart';
import 'package:mzadcom/view_details/view_details_screen.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final List<String> images = [
    'assetss/oo.jpg',
    'assetss/dd.jpg',
    'assetss/ss.jpg',
    'assetss/sa.jpg',
    'assetss/imagetwo.jpg',
    'assetss/bb.jpg',
    'assetss/bb.jpg',
    'assetss/dd.jpg',
    'assetss/oo.jpg',
    'assetss/dd.jpg',
    'assetss/oo.jpg',
    'assetss/dd.jpg',
    'assetss/oo.jpg',
    'assetss/dd.jpg',
    'assetss/oo.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          children: [
            Center(
              child: Container(
                height: 85,
                width: 360,
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: color2,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "المزادات المفضلة",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Icon(
                            Icons.favorite,
                            size: 20,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    CustomDropdownButton(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),

            // GridView.builder
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // عدد الأعمدة
                  crossAxisSpacing: 3, // المسافة بين الأعمدة
                  mainAxisSpacing: 3, // المسافة بين الصفوف
                ),
                itemCount: images.length, // عدد الصور
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ViewDetailsScreen(), // استبدل بـ الصفحة الخاصة بقائمة المزادات
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(images[index]), // رابط الصورة
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          right: 2,
                          top: 1,
                          child: Card(
                            color: const Color.fromARGB(164, 244, 67, 54),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 3, vertical: 1),
                              child: Text(
                                "منتهي",
                                style:
                                    TextStyle(fontSize: 9, color: Colors.white),
                              ),
                            ),
                          )),
                      Positioned(
                        left: -9,
                        bottom: -3,
                        child: IconButton.filled(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          style: IconButton.styleFrom(
                            backgroundColor: Color.fromARGB(
                                0, 223, 224, 224), // لون الخلفية المملوءة
                            foregroundColor: const Color.fromARGB(
                                255, 243, 240, 240), // لون الأيقونة داخل الزر
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
