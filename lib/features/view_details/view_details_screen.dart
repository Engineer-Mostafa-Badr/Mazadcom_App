import 'package:mzadcom/features/view_details/widget/enroll_pidding.dart';
import 'package:mzadcom/features/view_details/widget/image_preview.dart';
import 'package:mzadcom/features/view_details/widget/communicate.dart';
import 'package:mzadcom/features/view_details/widget/top_info.dart';
import 'package:mzadcom/features/view_details/widget/details.dart';
import 'package:mzadcom/core/constants/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ViewDetailsScreen extends StatefulWidget {
  const ViewDetailsScreen({super.key});

  @override
  State<ViewDetailsScreen> createState() => _ViewDetailsScreenState();
}

class _ViewDetailsScreenState extends State<ViewDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: LayoutBuilder(
          builder: (context, constraints) {
            double width = constraints.maxWidth;
            double height = constraints.maxHeight;

            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Column(
                  children: [
                    const ImagePreview(),
                    SizedBox(height: height * 0.02),
                    TopInfo(),
                    AuctionDetailsScreen(),
                    SizedBox(height: height * 0.02),
                    EnrollPidding(),
                    SizedBox(height: height * 0.02),
                    Communicate(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
