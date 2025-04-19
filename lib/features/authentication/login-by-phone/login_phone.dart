import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:mzadcom/core/constants/custom_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'otp_enter_screen.dart';

class PhoneNumberOtpScreen extends StatelessWidget {
  const PhoneNumberOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(31, 158, 158, 158),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 66,
                      width: 366,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: color2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: 4, end: 8, bottom: 8, top: 8),
                            child: Container(
                              width: 27,
                              height: 27,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(color: Colors.white),
                              ),
                              child: const Icon(
                                Icons.phone,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "Authentication.loginb6".tr(),
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    PhoneNumberField(),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        height: 45,
                        width: 210,
                        child: Container(
                          decoration: BoxDecoration(
                            color: color2,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60),
                              ),
                              backgroundColor: Colors.transparent,
                              shadowColor: const Color.fromARGB(0, 73, 71, 71),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => OtpEnterScreen(),
                              ));
                            },
                            child: Text('Authentication.send_otp'.tr(),
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Authentication.back_login".tr(),
                        style: TextStyle(
                          color: color2,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PhoneNumberField extends StatefulWidget {
  const PhoneNumberField({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PhoneNumberFieldState createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  final List<Map<String, String>> countryCodes = [
    {'code': '+93', 'name': '🇦🇫 Afghanistan'},
    {'code': '+355', 'name': '🇦🇱 Albania'},
    {'code': '+213', 'name': '🇩🇿 Algeria'},
    {'code': '+376', 'name': '🇦🇩 Andorra'},
    {'code': '+244', 'name': '🇦🇴 Angola'},
    {'code': '+1-268', 'name': '🇦🇬 Antigua and Barbuda'},
    {'code': '+54', 'name': '🇦🇷 Argentina'},
    {'code': '+374', 'name': '🇦🇲 Armenia'},
    {'code': '+61', 'name': '🇦🇺 Australia'},
    {'code': '+43', 'name': '🇦🇹 Austria'},
    {'code': '+994', 'name': '🇦🇿 Azerbaijan'},
    {'code': '+973', 'name': '🇧🇭 Bahrain'},
    {'code': '+880', 'name': '🇧🇩 Bangladesh'},
    {'code': '+375', 'name': '🇧🇾 Belarus'},
    {'code': '+32', 'name': '🇧🇪 Belgium'},
    {'code': '+501', 'name': '🇧🇿 Belize'},
    {'code': '+229', 'name': '🇧🇯 Benin'},
    {'code': '+975', 'name': '🇧🇹 Bhutan'},
    {'code': '+591', 'name': '🇧🇴 Bolivia'},
    {'code': '+387', 'name': '🇧🇦 Bosnia and Herzegovina'},
    {'code': '+267', 'name': '🇧🇼 Botswana'},
    {'code': '+55', 'name': '🇧🇷 Brazil'},
    {'code': '+673', 'name': '🇧🇳 Brunei'},
    {'code': '+359', 'name': '🇧🇬 Bulgaria'},
    {'code': '+226', 'name': '🇧🇫 Burkina Faso'},
    {'code': '+257', 'name': '🇧🇮 Burundi'},
    {'code': '+855', 'name': '🇰🇭 Cambodia'},
    {'code': '+237', 'name': '🇨🇲 Cameroon'},
    {'code': '+1', 'name': '🇨🇦 Canada'},
    {'code': '+238', 'name': '🇨🇻 Cape Verde'},
    {'code': '+236', 'name': '🇨🇫 Central African Republic'},
    {'code': '+235', 'name': '🇹🇩 Chad'},
    {'code': '+56', 'name': '🇨🇱 Chile'},
    {'code': '+86', 'name': '🇨🇳 China'},
    {'code': '+57', 'name': '🇨🇴 Colombia'},
    {'code': '+269', 'name': '🇰🇲 Comoros'},
    {'code': '+242', 'name': '🇨🇬 Republic of the Congo'},
    {'code': '+243', 'name': '🇨🇩 Democratic Republic of the Congo'},
    {'code': '+682', 'name': '🇨🇰 Cook Islands'},
    {'code': '+506', 'name': '🇨🇷 Costa Rica'},
    {'code': '+385', 'name': '🇭🇷 Croatia'},
    {'code': '+53', 'name': '🇨🇺 Cuba'},
    {'code': '+357', 'name': '🇨🇾 Cyprus'},
    {'code': '+420', 'name': '🇨🇿 Czech Republic'},
    {'code': '+45', 'name': '🇩🇰 Denmark'},
    {'code': '+253', 'name': '🇩🇯 Djibouti'},
    {'code': '+1-767', 'name': '🇩🇲 Dominica'},
    {'code': '+1-809', 'name': '🇩🇴 Dominican Republic'},
    {'code': '+593', 'name': '🇪🇨 Ecuador'},
    {'code': '+20', 'name': '🇪🇬 Egypt'},
    {'code': '+503', 'name': '🇸🇻 El Salvador'},
    {'code': '+240', 'name': '🇬🇶 Equatorial Guinea'},
    {'code': '+291', 'name': '🇪🇷 Eritrea'},
    {'code': '+372', 'name': '🇪🇪 Estonia'},
    {'code': '+251', 'name': '🇪🇹 Ethiopia'},
    {'code': '+358', 'name': '🇫🇮 Finland'},
    {'code': '+33', 'name': '🇫🇷 France'},
    {'code': '+49', 'name': '🇩🇪 Germany'},
    {'code': '+30', 'name': '🇬🇷 Greece'},
    {'code': '+91', 'name': '🇮🇳 India'},
    {'code': '+62', 'name': '🇮🇩 Indonesia'},
    {'code': '+98', 'name': '🇮🇷 Iran'},
    {'code': '+964', 'name': '🇮🇶 Iraq'},
    {'code': '+353', 'name': '🇮🇪 Ireland'},
    {'code': '+972', 'name': '🇮🇱 Israel'},
    {'code': '+39', 'name': '🇮🇹 Italy'},
    {'code': '+7', 'name': '🇷🇺 Russia'},
    {'code': '+966', 'name': '🇸🇦 Saudi Arabia'}, // GCC Country
    {'code': '+968', 'name': '🇴🇲 Oman'}, // GCC Country
    {'code': '+974', 'name': '🇶🇦 Qatar'}, // GCC Country
    {'code': '+965', 'name': '🇰🇼 Kuwait'}, // GCC Country
    {'code': '+971', 'name': '🇦🇪 United Arab Emirates'}, // GCC Country
    {'code': '+27', 'name': '🇿🇦 South Africa'},
    {'code': '+34', 'name': '🇪🇸 Spain'},
    {'code': '+46', 'name': '🇸🇪 Sweden'},
    {'code': '+41', 'name': '🇨🇭 Switzerland'},
    {'code': '+90', 'name': '🇹🇷 Turkey'},
    {'code': '+380', 'name': '🇺🇦 Ukraine'},
    {'code': '+44', 'name': '🇬🇧 United Kingdom'},
    {'code': '+1', 'name': '🇺🇸 United States'},
    {'code': '+263', 'name': '🇿🇼 Zimbabwe'},
  ];

  String selectedCode = '+968';
  final TextEditingController phoneController = TextEditingController();

  void _showCountryCodePicker() {
    showModalBottomSheet(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
      backgroundColor: color2,
      showDragHandle: true,
      context: context,
      builder: (context) => SizedBox(
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            thickness: 0.5,
          ),
          itemCount: countryCodes.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                countryCodes[index]['code']!,
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
              title: Text(
                countryCodes[index]['name']!,
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
              onTap: () {
                setState(() {
                  selectedCode = countryCodes[index]['code']!;
                });
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Authentication.contact_number".tr(),
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: _showCountryCodePicker,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 14),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 217, 215, 215),
                      borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(10),
                        bottomStart: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      selectedCode,
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                      hintText: 'Authentication.enter_number'.tr(),
                      hintStyle: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
