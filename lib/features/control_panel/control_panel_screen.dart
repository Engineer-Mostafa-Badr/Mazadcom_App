import 'package:mzadcom/features/control_panel/widget/control_panel_widget.dart';
import 'package:mzadcom/features/control_panel/widget/list_auctions_widget.dart';
import 'package:mzadcom/features/control_panel/widget/view_information.dart';
import 'package:mzadcom/core/constants/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ControlPanel extends StatefulWidget {
  const ControlPanel({super.key});

  @override
  State<ControlPanel> createState() => _ControlPanelState();
}

class _ControlPanelState extends State<ControlPanel> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final horizontalPadding = screenWidth * 0.05;
    final verticalSpacing = screenHeight * 0.02;

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: verticalSpacing),
                  ViewInformations(),
                  SizedBox(height: verticalSpacing * 1.5),
                  ListAuctionsWidget(),
                  SizedBox(height: verticalSpacing * 2),
                  ControlPanelWidget(),
                  SizedBox(height: verticalSpacing),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
