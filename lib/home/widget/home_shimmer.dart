
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget buildHomeShimmerEffect() {
  return Shimmer.fromColors(
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade100,
    child: Column(
      children: [
        shimmerBox(height: 140, width: 360),
        const SizedBox(height: 20),

        shimmerBox(height: 40, width: 340),
        const SizedBox(height: 20),

        shimmerAlignedBox(height: 15, width: 100),

        const SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (_) => shimmerBox(height: 60, width: 110, margin: 5)),
        ),

        const SizedBox(height: 25),

        shimmerAlignedBox(height: 15, width: 100),
        const SizedBox(height: 7),

        shimmerAlignedBox(height: 30, width: 380),
        const SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(2, (_) => shimmerBox(height: 160, width: 160, margin: 10)),
        ),
        const SizedBox(height: 15),

        shimmerBox(height: 65, width: 330),
      ],
    ),
  );
}

// ويدجت مساعدة لإنشاء مستطيلات Shimmer بسهولة
Widget shimmerBox({required double height, required double width, double margin = 0}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: margin),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(7),
      child: Container(
        height: height,
        width: width,
        color: Colors.white,
      ),
    ),
  );
}

// ويدجت مساعدة لإنشاء عناصر بمحاذاة اليمين
Widget shimmerAlignedBox({required double height, required double width}) {
  return Align(
    alignment: Alignment.centerRight,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: shimmerBox(height: height, width: width),
    ),
  );
}
