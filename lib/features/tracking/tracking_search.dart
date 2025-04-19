import '../../core/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TrackingSearch extends StatelessWidget {
  const TrackingSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 360,
      decoration: BoxDecoration(
        color: color1,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/gridview.svg",
              height: 16,
              width: 16,
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
