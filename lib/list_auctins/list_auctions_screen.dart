import 'package:flutter/material.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';
import 'package:mzadcom/list_auctins/widget/cards_list.dart';

class GroupAuctionsScreen extends StatelessWidget {
  const GroupAuctionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body:
            CardsList(),
      ),
    );
  }
}
