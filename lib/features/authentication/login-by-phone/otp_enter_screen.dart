import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:mzadcom/core/constants/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpEnterScreen extends StatefulWidget {
  const OtpEnterScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OtpEnterScreenState createState() => _OtpEnterScreenState();
}

class _OtpEnterScreenState extends State<OtpEnterScreen> {
  final TextEditingController otpController = TextEditingController();
  final String correctOtp = "2222";
  String? errorText;

  void verifyOtp() {
    setState(() {
      if (otpController.text == correctOtp) {
        errorText = null;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("✅ OTP Verified Successfully!")),
        );
      } else {
        errorText = "❌ OTP is incorrect";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 66,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: color1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Authentication.enter_otp".tr(),
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Pinput(
                  controller: otpController,
                  length: 4,
                  errorText: errorText,
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  onCompleted: (pin) => verifyOtp(),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 45,
                  width: 210,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: verifyOtp,
                    child: Text(
                      'Authentication.verify'.tr(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      otpController.clear();
                      errorText = null;
                    });
                  },
                  child: Text(
                    "Authentication.clear_otp".tr(),
                    style: TextStyle(
                      color: color2,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
