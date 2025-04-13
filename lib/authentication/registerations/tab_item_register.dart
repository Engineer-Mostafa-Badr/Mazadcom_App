import 'package:flutter/material.dart';

class TabItemRegister extends StatelessWidget {
  const TabItemRegister({
    super.key,
    required this.typeregister,
    required this.icontyperegister,
  });

  final String typeregister;
  final Icon icontyperegister;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: screenWidth * 0.04, 
            child: Icon(
              icontyperegister.icon,
              size: screenWidth * 0.05, 
              color: icontyperegister.color ?? Colors.white,
            ),
          ),
          SizedBox(
            width: screenWidth * 0.01, 
          ),
          Text(
            typeregister,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: screenWidth * 0.035, 
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
