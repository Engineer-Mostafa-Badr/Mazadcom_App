import 'package:flutter/material.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';
import 'package:mzadcom/view_details/view_details_screen.dart';

class AllExpiresSoon extends StatelessWidget {
  const AllExpiresSoon({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
            child: Column(
              children: List.generate(
                10,
                (index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ViewDetailsScreen(),
                        ),
                      );
                    },
                    child: Card(
                      color: const Color.fromARGB(226, 255, 255, 255),
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "https://images.hgmsites.net/hug/2012-toyota-corolla-4-door-sedan-auto-s-natl-angular-front-exterior-view_100380347_h.jpg",
                              height: screenHeight * 0.08,
                              width: screenWidth * 0.25,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: screenWidth * 0.03),
                            Container(
                              width:  screenHeight * 0.2,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: screenHeight * 0.002),
                                      Text(
                                        'Toyota',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.045,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: screenHeight * 0.002),
                                      Text(
                                        'MZADC123',
                                        style: TextStyle(
                                            fontSize: screenWidth * 0.030),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(height: screenHeight * 0.002),
                                      Text(
                                        '12,000 OMR',
                                        style: TextStyle(
                                            fontSize: screenWidth * 0.040),
                                      ),
                                      SizedBox(height: screenHeight * 0.005),
                                      Text(
                                        '30m 40s',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: screenWidth * 0.03,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
