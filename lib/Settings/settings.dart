import 'package:flutter/material.dart';
import 'package:mzadcom/AboutApp/about_app.dart';
import 'package:mzadcom/AboutApp/terms_and_conditions_screen.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/Constants/custom_app_bar.dart';
import 'package:mzadcom/ControlPanel/control_panel_screen.dart';
import 'package:mzadcom/wallet/AddFunds/add_funds.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isNotificationsEnabled = false; // حالة الإشعارات

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Container(
          width: 350,
          child: ListView(children: [
            // عنوان الصفحة
            Center(
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: color2, // استبدل `color2` بلون مخصص
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "الإعدادات",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.settings, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  // border: Border.all(color: color1),
                  color: const Color.fromARGB(85, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color:
                          Colors.black.withOpacity(0.1), // لون الظل مع شفافية
                      blurRadius: 2, // مدى التمويه للظل
                      spreadRadius: 2, // انتشار الظل
                      offset: Offset(0, 4), // إزاحة الظل عموديًا وأفقيًا
                    ),
                  ]),
              child: Column(
                children: [
                  _buildSettingItem(
                    title: "تغيير اللغة",
                    icon: Icons.language,
                    onTap: () {
                      // إضافة المنطق هنا
                    },
                  ),
                  _buildDivider(),
                  _buildSettingItem(
                    title: "الملف الشخصي",
                    icon: Icons.person,
                    onTap: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ControlPanel(), // استبدل بـ الصفحة الخاصة بقائمة المزادات
                              ),
                            );
                      // إضافة المنطق هنا
                    },
                  ),
                  _buildDivider(),
                  _buildNotificationToggle(),

                  //              InkWell(
                  //   onTap: (){},
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,

                  //       borderRadius: BorderRadius.circular(7),
                  //       //  border: Border.all(color: color1)
                  //     ),
                  //     height: 60,
                  //     width: 350,
                  //     padding: const EdgeInsets.symmetric(horizontal: 10),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.end,
                  //       children: [

                  //         Text("تفعيل الإشعارات", style: TextStyle(fontSize: 16)),
                  //         SizedBox(width: 5),
                  //         Icon(Icons.notifications),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  _buildDivider(),
                  _buildSettingItem(
                    title: "عن مزادكم",
                    icon: Icons.info,
                    onTap: () {
                       Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    AboutAppScreen(), // استبدل بـ الصفحة الخاصة بقائمة المزادات
                              ),
                            );
                      // إضافة المنطق هنا
                    },
                  ),
                  _buildDivider(),
                  _buildSettingItem(
                    title: "الشروط و الأحكام",
                    icon: Icons.description,
                    onTap: () {
                      // إضافة المنطق هنا
                    Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    TermsAndConditionsScreen(), // استبدل بـ الصفحة الخاصة بقائمة المزادات
                              ),
                            );
                    },
                  ),
                  _buildDivider(),
                  _buildSettingItem(
                    title: "أسئلة متكررة",
                    icon: Icons.help,
                    onTap: () {
                        Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    TermsAndConditionsScreen(), // استبدل بـ الصفحة الخاصة بقائمة المزادات
                              ),
                            );
                      // إضافة المنطق هنا
                    },
                  ),
                  _buildDivider(),
                  _buildSettingItem(
                    title: "المحفظة",
                    icon: Icons.account_balance_wallet,
                    onTap: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    AddFunds(), // استبدل بـ الصفحة الخاصة بقائمة المزادات
                              ),
                            );
                      // إضافة المنطق هنا
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color2),
                foregroundColor: MaterialStateProperty.all(color2),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "تسجيل الخروج",
                    style: TextStyle(
                        color: Colors.white), // تأكد من تعريف `color2`
                  ),
                  SizedBox(width: 5), // أضف مسافة صغيرة بين النص والأيقونة
                  Icon(Icons.logout, color: Colors.white),
                ],
              ),
            )
          ]),
        ),
      ),
    ));
  }

  // عنصر إعداد مخصص
  Widget _buildSettingItem({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(7),
          //  border: Border.all(color: color1)
        ),
        height: 60,
        width: 350,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(title, style: TextStyle(fontSize: 16)),
            SizedBox(width: 5),
            Icon(
              icon,
              color: color1,
            ),
          ],
        ),
      ),
    );
  }

// عنصر تفعيل الإشعارات مع مفتاح تبديل
  Widget _buildNotificationToggle() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      height: 60,
      width: 350,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Switch(
            value: isNotificationsEnabled,
            onChanged: (bool value) {
              setState(() {
                isNotificationsEnabled = value;
              });
            },
            activeColor: color2,
            inactiveThumbColor: Colors.grey,
          ),
          Row(
            children: [
              Text(
                "تفعيل الإشعارات",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.notifications_active,
                color: color1,
              ),
            ],
          ),
        ],
      ),
    );
  }

  // فاصل بين العناصر
  Widget _buildDivider() {
    return Container(
      height: 1,
      width: 340,
      color: color1, // استبدل `color1` بلون مخصص
    );
  }
}
