import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PhoneNumberInput extends StatefulWidget {
  final String title;
  final void Function(String) updateCountryCode;
  final void Function(String) updatePhoneNumber;

  const PhoneNumberInput({
    super.key,
    required this.title,
    required this.updateCountryCode,
    required this.updatePhoneNumber,
  });

  @override
  PhoneNumberInputState createState() => PhoneNumberInputState();
}

class PhoneNumberInputState extends State<PhoneNumberInput> {
  final TextEditingController _phoneNumberController = TextEditingController();
  String _countryCode = '+968'; // Default to Oman’s country code

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.04), // نسبة من عرض الشاشة
          child: Text(
            widget.title,
            style: TextStyle(
                fontSize: screenWidth * 0.035), // حجم الخط يعتمد على عرض الشاشة
          ),
        ),
        SizedBox(height: screenWidth * 0.01), // تباعد ديناميكي
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.035, // نسبة من عرض الشاشة
            vertical: screenWidth * 0.01,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(63, 158, 158, 158),
              borderRadius: BorderRadius.circular(
                  screenWidth * 0.02), // نصف القطر ديناميكي
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.02), // نسبة من عرض الشاشة
                  child: CountryCodePicker(
                    onChanged: (countryCode) {
                      setState(() {
                        _countryCode = countryCode.dialCode ?? '+968';
                        widget.updateCountryCode(_countryCode);
                      });
                    },
                    initialSelection: 'OM',
                    favorite: const ['+968', 'OM'],
                    showFlag: true,
                    showDropDownButton: true,
                    showCountryOnly: false,
                    alignLeft: false,
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    controller: _phoneNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Authentication.enter_number'.tr(),
                      filled: true,
                      fillColor: Colors.transparent,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.001,
                        vertical: screenWidth * 0.02,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.02),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: (value) {
                      widget.updatePhoneNumber(value);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: screenWidth * 0.02,
        )
      ],
    );
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }
}
