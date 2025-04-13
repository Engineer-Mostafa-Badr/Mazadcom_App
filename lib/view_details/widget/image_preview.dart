import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImagePreview extends StatefulWidget {
  const ImagePreview({super.key});

  @override
  State<ImagePreview> createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {
  int preview = 0;
  List<String> imgList = [
    "assetss/imagetwo.jpg",
    "assetss/imagethree.jpg",
    "assetss/imagetwo.jpg",
    "assetss/imagethree.jpg",
    "assetss/imagetwo.jpg",
    "assetss/imagethree.jpg",
    "assetss/imagetwo.jpg",
    "assetss/imagethree.jpg",
  
  ];

  void updatePreview(int index) {
    setState(() {
      preview = index;
    });
  }

  void nextImage() {
    setState(() {
      preview = (preview + 1) % imgList.length;
    });
  }

  void previousImage() {
    setState(() {
      preview = (preview - 1 + imgList.length) % imgList.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool isRTL = Directionality.of(context) == TextDirection.rtl;

    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.asset(
                imgList[preview],
                width: double.infinity,
                height: screenHeight * 0.20,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: isRTL ? null : screenWidth * 0.02,
              left: isRTL ? screenWidth * 0.02 : null,
              top: screenHeight * 0.005,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.02, vertical: 3),
                  child: const Text(
                    "نشط",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ),
            Positioned(
              left: isRTL ? null : screenWidth * 0.02,
              right: isRTL ? screenWidth * 0.02 : null,
              top: screenHeight * 0.005,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child:
                        const Icon(Icons.favorite, size: 20, color: Colors.red),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.share_outlined,
                        size: 25, color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              left: isRTL ? null : 0,
              right: isRTL ? 0 : null,
              top: screenHeight * 0.08,
              child: IconButton(
                onPressed: previousImage,
                icon: const Icon(Icons.arrow_back_ios,
                    size: 25, color: Colors.white70),
              ),
            ),
            Positioned(
              right: isRTL ? null : 0,
              left: isRTL ? 0 : null,
              top: screenHeight * 0.08,
              child: IconButton(
                onPressed: nextImage,
                icon: const Icon(Icons.arrow_forward_ios,
                    size: 25, color: Colors.white70),
              ),
            ),
            Positioned(
              right: isRTL ? null : 5,
              left: isRTL ? 5 : null,
              bottom: 5,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: SvgPicture.asset(
                  "assetss/blogo.svg",
                  width: screenWidth * 0.05,
                  height: screenWidth * 0.05,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: screenHeight * 0.01),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
              height: screenHeight * 0.07,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imgList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => updatePreview(index),
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          imgList[index],
                          width: screenWidth * 0.15,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              left: isRTL ? null : screenWidth * 0.02,
              right: isRTL ? screenWidth * 0.02 : null,
              top: -screenHeight * 0.04,
              child: Card(
                child: Image.asset(
                  "assetss/com-logo.png",
                  width: screenWidth * 0.1,
                  height: screenWidth * 0.1,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
