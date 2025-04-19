import 'package:mzadcom/features/list_auctins/list_auctions_screen.dart';
import 'package:mzadcom/features/view_details/view_details_screen.dart';
import '../../../auctions/RegisterForAuction/register_for_auction.dart';
import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveAuctionGrid extends StatefulWidget {
  final String status;
  final List? data;

  const ActiveAuctionGrid({super.key, required this.status, this.data});

  @override
  // ignore: library_private_types_in_public_api
  _ActiveAuctionGridState createState() => _ActiveAuctionGridState();
}

class _ActiveAuctionGridState extends State<ActiveAuctionGrid> {
  List<bool> isLikeList = [];

  @override
  void initState() {
    super.initState();
    if (widget.data != null) {
      isLikeList = List.generate(widget.data!.length, (index) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsetsDirectional.only(end: 9, start: 9, bottom: 10, top: 3),
        child: GridView.builder(
          primary: false,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: widget.data?.length ?? 0,
          itemBuilder: (context, index) {
            final Map auction = widget.data![index];
            final bool isGrouped = auction["is_grouped"] == 1;

            return GestureDetector(
                onTap: () {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => isGrouped
                            ? ListAuctions(
                                auction: null,
                              )
                            : ViewDetailsScreen(),
                      ),
                    );
                  });
                },
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 4,
                          spreadRadius: 2,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Stack(children: [
                      Stack(children: [
                        Column(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    WidgetsBinding.instance
                                        .addPostFrameCallback((_) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => isGrouped
                                              ? ListAuctions(
                                                  auction: null,
                                                )
                                              : ViewDetailsScreen(),
                                        ),
                                      );
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    width: double.infinity,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadiusDirectional.only(
                                              topEnd: Radius.circular(6),
                                              topStart: Radius.circular(6)),
                                      child: Image.network(
                                        "https://p.turbosquid.com/ts-thumb/Ti/xLzC1v/Mw/refinery_800_0001/jpg/1617355366/300x300/sharp_fit_q85/2e291153021ce773d626f6aeefb5be748e6ac8a5/refinery_800_0001.jpg",
                                        fit: BoxFit.cover,
                                        height: 100,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 2,
                                  left: 2,
                                  child: Row(
                                    spacing: 2,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isLikeList[index] =
                                                !isLikeList[index];
                                          });
                                        },
                                        child: Icon(
                                          Icons.favorite,
                                          size: 20,
                                          color: isLikeList[index]
                                              ? Colors.red
                                              : Colors.grey,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () async {
                                          Share.share(
                                              'check out my website https://mzadcom.com');
                                        },
                                        child: Icon(
                                          Icons.share,
                                          size: 20,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  left: 2,
                                  bottom: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      auction["organizationDetails"][
                                                  "file_organization_image_full"]
                                              ?.toString() ??
                                          "غير محدد",
                                      height: 25,
                                      width: 2,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 2,
                                  top: 1,
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          top: 0.4,
                                          bottom: 0.4,
                                          end: 6,
                                          start: 6),
                                      child: Text(
                                        widget.status,
                                        style: TextStyle(
                                            fontSize: 9, color: color2),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: -71,
                                  right: 5,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 112,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  auction["categoryDetails"]
                                                      ["category_name_ar"],
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  auction["auction_number"],
                                                  style: TextStyle(
                                                      fontSize: 9,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black54),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    auction["current_amount"]
                                                        .toString(),
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .only(start: 3),
                                                    child: Text(
                                                      "OMR",
                                                      style: TextStyle(
                                                        fontSize: 8,
                                                        color: Colors.black54,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                "0d 0h 0m 0s",
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        spacing: 4,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 5),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          RegisterForAuction()),
                                                );
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(3.3),
                                                height: 22,
                                                width: 55,
                                                decoration: BoxDecoration(
                                                  color: color2,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SvgPicture.asset(
                                                      "assetss/auctions.svg",
                                                      height: 9,
                                                      width: 9,
                                                    ),
                                                    SizedBox(width: 2),
                                                    Text(
                                                      "Home.enroll".tr(),
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 9,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5),
                                            child: GestureDetector(
                                              onTap: () {
                                                WidgetsBinding.instance
                                                    .addPostFrameCallback((_) {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          isGrouped
                                                              ? ListAuctions(
                                                                  auction: null,
                                                                )
                                                              : ViewDetailsScreen(),
                                                    ),
                                                  );
                                                });
                                              },
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(3.3),
                                                decoration: BoxDecoration(
                                                  color: color1,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                                height: 22,
                                                width: 84,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SvgPicture.asset(
                                                      !isGrouped
                                                          ? "assetss/auctions.svg"
                                                          : "assetss/list.svg",
                                                      height: 9,
                                                      width: 9,
                                                    ),
                                                    const SizedBox(width: 3),
                                                    Text(
                                                      !isGrouped
                                                          ? "Home.view_details"
                                                              .tr()
                                                          : "Home.group_auctions"
                                                              .tr(),
                                                      style: TextStyle(
                                                        fontSize: 9,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                "assetss/numbidd.svg",
                                                height: 19,
                                                width: 19,
                                              ),
                                              Text(
                                                auction["bid_count"]
                                                        ?.toString() ??
                                                    "0",
                                                style: TextStyle(
                                                  fontSize: 6.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ])
                    ])));
          },
        ),
      ),
    );
  }
}
