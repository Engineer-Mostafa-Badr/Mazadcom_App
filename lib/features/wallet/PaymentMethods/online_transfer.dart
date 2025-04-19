import '../../authentication/registerations/widget/text_feiled.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../core/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class OnlineTransfer extends StatefulWidget {
  const OnlineTransfer({super.key});

  @override
  State<OnlineTransfer> createState() => _OnlineTransferState();
}

class _OnlineTransferState extends State<OnlineTransfer> {
  bool _isButton1Pressed = false;
  bool _isButton2Pressed = false;
  TextEditingController addfundsbanktransfer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.02),
              buildTextField(
                label: "Wallet.enter_amount".tr(),
                controllername: addfundsbanktransfer,
                validator: (value) =>
                    value!.isEmpty ? 'Wallet.vali_number' : null,
              ),
              SizedBox(height: screenHeight * 0.02),
              Image.asset(
                "assetss/thwani.png",
                width: screenWidth * 0.8,
                height: screenHeight * 0.08,
                fit: BoxFit.contain,
              ),
              SizedBox(height: screenHeight * 0.015),
              Text(
                "Wallet.message".tr(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.02),
              SizedBox(
                width: screenWidth * 0.5,
                height: screenHeight * 0.06,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _isButton1Pressed = true;
                      _isButton2Pressed = false;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor:
                        _isButton1Pressed ? Colors.green : Colors.transparent,
                    foregroundColor:
                        _isButton1Pressed ? Colors.white : Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                      side: const BorderSide(
                        color: Color.fromARGB(175, 1, 146, 6),
                      ),
                    ),
                  ),
                  child: Text(
                    "Wallet.card".tr(),
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              SizedBox(
                width: screenWidth * 0.5,
                height: screenHeight * 0.06,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _isButton2Pressed = true;
                      _isButton1Pressed = false;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor:
                        _isButton2Pressed ? Colors.green : Colors.transparent,
                    foregroundColor:
                        _isButton2Pressed ? Colors.white : Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                      side: BorderSide(
                        color: Color.fromARGB(175, 1, 146, 6),
                      ),
                    ),
                  ),
                  child: Text(
                    "Wallet.card_5".tr(),
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: color1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  minimumSize: Size(
                    screenWidth * 0.4,
                    screenHeight * 0.05,
                  ),
                ),
                child: Text(
                  "Authentication.loginb5".tr(),
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
