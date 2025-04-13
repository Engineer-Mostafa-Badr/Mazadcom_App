import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mzadcom/AuctionsDetails/bidding_screen.dart';

class BiddingBottomSheet extends StatelessWidget {
  final Color color2; // تمرير اللون كمتغير

  BiddingBottomSheet({required this.color2});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(12),
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.95,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Wallet.bidding_details'.tr(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black),
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildAuctionAmountContainer("Auctions.started_amount".tr(), "100.000" , "Wallet.omr".tr(),color2),
                  SizedBox(width: 3),
                  _buildAuctionAmountContainer("Auctions.current_amount".tr(),"100.000","Wallet.omr".tr(), color2),
                ],
              ),
              SizedBox(height: 10),
              _buildTimerRow(color2),
              SizedBox(height: 10),
              BiddingScreen(),  
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: color2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  'إغلاق',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAuctionAmountContainer(String text1,String text2, String text3,Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: EdgeInsets.all(4.0),
      child: Row(
        children: [
            Text(
            text1,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),
          ),
          Text(
            text2,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11),
          ),
           Text(
            text3,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 8),
          ),
        ],
      ),
    );
  }

  Widget _buildTimerRow(Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.timer, color: color),
        SizedBox(width: 10),
        _buildTimerBox("0 يوم", color),
        SizedBox(width: 10),
        _buildTimerBox("3 ساعة", color),
        SizedBox(width: 10),
        _buildTimerBox("7 دقيقة", color),
        SizedBox(width: 10),
        _buildTimerBox("30 ثانية", color),
        SizedBox(width: 8),
      ],
    );
  }

  Widget _buildTimerBox(String text, Color color) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(6),
      ),
      padding: EdgeInsets.all(4.0),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
          ),
        ],
      ),
    );
  }
}
