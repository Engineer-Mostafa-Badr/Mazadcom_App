import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mzadcom/Auctions/MyAuctions/card_action_winner.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';
import 'package:mzadcom/Tracking/dropdown.dart';
import 'package:mzadcom/home/widget/search/home_search.dart';

// class AuctionWinner extends StatelessWidget {
//   const AuctionWinner({super.key});
//   @override
//   Widget build(BuildContext context) {
//       final double screenWidth = MediaQuery.of(context).size.width;
//         final double screenHeight = MediaQuery.of(context).size.width;
//     return SafeArea(
//       child: Scaffold(
//         appBar: CustomAppBar(),
//         body: Column(
//           children: [
//             SizedBox(height: 10),
//             Center(
//               child: Container(
//                 height: 85,
//                 width: 360,
//                 decoration: BoxDecoration(
//                   color: color2,
//                   borderRadius: BorderRadius.circular(7),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 10, vertical: 4),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                            SvgPicture.asset(
//                             "assetss/winner.svg",
//                             height: 18,
//                             width: 18,
//                             color: Colors.white,
//                           ),
//                                                     const SizedBox(width: 5),

//                           const Text(
//                             "مزايداتي الفائزة",
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),

//                         ],
//                       ),
//                     ),
//                     CustomDropdownButton(),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Search(),
//             SizedBox(
//               height: 3,
//             ),
//             Expanded(
//               child: CardWinnerList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class AuctionWinner extends StatelessWidget {
  const AuctionWinner({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Column(
          children: [
            SizedBox(height: screenHeight * 0.02),
            Center(
              child: Container(
                height: screenHeight * 0.12,
                width: screenWidth * 0.95,
                decoration: BoxDecoration(
                  color: color2,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.03,
                        vertical: screenHeight * 0.005,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assetss/winner.svg",
                            height: screenHeight * 0.025,
                            width: screenWidth * 0.05,
                            color: Colors.white,
                          ),
                           SizedBox(width: screenWidth * 0.02),
                          Text(
                            "Dashboard.winning_auctions".tr(),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                         
                          
                        ],
                      ),
                    ),
                    CustomDropdownButton(),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.015),
            HomeSearch(),
            SizedBox(height: screenHeight * 0.005),
            Expanded(
              child: CardWinnerList(),
            ),
          ],
        ),
      ),
    );
  }
}
