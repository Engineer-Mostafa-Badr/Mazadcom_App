import 'package:flutter/material.dart';

class MediaQueryHelper {
  final BuildContext context;

  MediaQueryHelper(this.context);

  double get screenWidth => MediaQuery.of(context).size.width;
  double get screenHeight => MediaQuery.of(context).size.height;
  double get responsiveWidth => screenWidth * 0.8; 
  double get responsiveHeight => screenHeight * 0.6; 
}
