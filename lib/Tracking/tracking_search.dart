import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mzadcom/Constants/constants_colors.dart';

class TrackingSearch extends StatelessWidget {
  const TrackingSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 360,
      decoration: BoxDecoration(
        // border: Border.all(color: color2),
          color: color1, borderRadius: BorderRadius.circular(7),
          ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              // Add your button action here
            },
            icon: SvgPicture.asset(
              "assets/gridview.svg",
              height: 16,
              width: 16,
              color: Colors.white,
            ),
          ),
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
                color: color2, borderRadius: BorderRadius.circular(2)),
            child: Icon(
              Icons.filter_alt_rounded,
              size: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
