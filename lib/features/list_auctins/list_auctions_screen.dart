import 'package:cached_network_image/cached_network_image.dart';
import 'package:mzadcom/features/pidding/bidding_bottom_sheet.dart';
import 'package:flutter/material.dart';

class ListAuctions extends StatelessWidget {
  const ListAuctions({super.key, required auction});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final imageSize = screenWidth * 0.28;
    final padding = screenWidth * 0.03;
    final borderRadius = screenWidth * 0.02;
    final iconSize = screenWidth * 0.04;
    final fontSize = screenWidth * 0.035;
    final circleRadius = screenWidth * 0.035;
    final buttonHeight = screenHeight * 0.06;
    final spacing = screenHeight * 0.01;

    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                EdgeInsets.symmetric(horizontal: padding, vertical: spacing),
            child: Card(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(padding),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(borderRadius),
                          child: CachedNetworkImage(
                            imageUrl: "",
                            height: imageSize,
                            width: imageSize,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: padding),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Mixed Scrap #$index',
                                  style: TextStyle(fontSize: fontSize)),
                              SizedBox(height: spacing),
                              Text('MZAD252$index',
                                  style: TextStyle(fontSize: fontSize)),
                              SizedBox(height: spacing),
                              Row(
                                children: [
                                  Icon(Icons.timer,
                                      size: iconSize, color: Colors.red),
                                  SizedBox(width: padding * 0.5),
                                  Text('1h 30m 3${index}s',
                                      style: TextStyle(fontSize: fontSize)),
                                ],
                              ),
                              SizedBox(height: spacing),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: circleRadius,
                                    backgroundColor: Colors.blue,
                                    child: Text('5',
                                        style: TextStyle(
                                            fontSize: fontSize * 0.8)),
                                  ),
                                  SizedBox(width: padding * 0.5),
                                  Icon(Icons.settings, size: iconSize),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CircleAvatar(
                              radius: circleRadius,
                              backgroundColor: Colors.blue,
                              child: Text('5',
                                  style: TextStyle(fontSize: fontSize * 0.8)),
                            ),
                            SizedBox(height: spacing),
                            Text('ABCDEFG',
                                style: TextStyle(fontSize: fontSize)),
                            SizedBox(height: spacing),
                            Text('${100 + index * 10} OMR',
                                style: TextStyle(fontSize: fontSize)),
                            SizedBox(height: spacing),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: padding,
                                vertical: padding * 0.5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.amberAccent,
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
                              ),
                              child: Text(
                                'View details',
                                style: TextStyle(fontSize: fontSize * 0.9),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: spacing * 1.5),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (context) => BiddingBottomSheet(
                                  color2: Colors.blue,
                                ),
                              );
                            },
                            child: Container(
                              height: buttonHeight,
                              decoration: BoxDecoration(
                                color: Colors.amberAccent,
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.gavel, size: iconSize),
                                  SizedBox(width: padding),
                                  Text('Place Bid',
                                      style: TextStyle(fontSize: fontSize)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
