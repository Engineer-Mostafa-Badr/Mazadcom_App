import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class SimpleImageSlider extends StatefulWidget {
  const SimpleImageSlider({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SimpleImageSliderState createState() => _SimpleImageSliderState();
}

class _SimpleImageSliderState extends State<SimpleImageSlider> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<String> _images = [
    "assetss/imageslider.jpg",
    "assetss/imgt.jpg",
    "assetss/imgfor.jpg",
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted && _pageController.hasClients) {
        setState(() {
          _currentIndex = (_currentIndex + 1) % _images.length;
        });
        _pageController.animateToPage(
          _currentIndex,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        _startAutoScroll();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 140, // الطول
          width: screenWidth * 0.95,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemCount: _images.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(_images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(_images.length, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              width: _currentIndex == index ? 12.0 : 8.0,
              height: 8.0,
              decoration: BoxDecoration(
                color: _currentIndex == index
                    ? color1
                    : Color.fromARGB(75, 191, 196, 49),
                shape: BoxShape.circle,
              ),
            );
          }),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
