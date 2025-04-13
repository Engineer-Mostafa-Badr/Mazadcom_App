import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class Communicate extends StatelessWidget {
  const Communicate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.4; 
    double buttonHeight = screenWidth * 0.1;

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(30, 107, 105, 105),
      ),
      width: screenWidth * 0.9, 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Auctions.contact_us".tr(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Call Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: Size(buttonWidth, buttonHeight),
                  padding: EdgeInsets.zero, // To remove extra padding
                ),
                onPressed: () {
                  // Add your button action here
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     Padding(
                      padding: const EdgeInsetsDirectional.only(start: 8),
                      child: CircleAvatar(
                        backgroundColor:
                            const Color.fromARGB(188, 196, 243, 221),
                        radius: 14,
                        child: Icon(
                          Icons.call,
                          size: 20,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Text(
                      "Auctions.call".tr(),
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    
                   
                  ],
                ),
              ),
              SizedBox(
                width: screenWidth * 0.04,
              ),

              // WhatsApp Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: Size(buttonWidth, buttonHeight),
                  padding: EdgeInsets.zero, // To remove extra padding
                ),
                onPressed: () {
                  // Add your button action here
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     Padding(
                      padding: EdgeInsetsDirectional.only(start: 8),
                      child: CircleAvatar(
                        backgroundColor:
                            const Color.fromARGB(188, 196, 243, 221),
                        radius: 14,
                        child: Icon(
                          Icons.message,
                          size: 20,
                          color: Colors.green,
                        ),
                      ),
                    ),
                      SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Text(
                      "Auctions.whats".tr(),
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                   
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
