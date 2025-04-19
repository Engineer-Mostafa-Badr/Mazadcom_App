import 'package:mzadcom/features/about_app/terms_and_conditions_screen.dart';
import 'package:mzadcom/features/control_panel/control_panel_screen.dart';
import 'package:mzadcom/features/authentication/login/login_screen.dart';
import 'package:mzadcom/features/wallet/AddFunds/add_funds.dart';
import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:mzadcom/features/about_app/about_app.dart';
import '../authentication/login/cubit/login_cubit.dart';
import '../authentication/login/cubit/login_state.dart';
import '../../core/constants/custom_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../authentication/LogOut/log_out.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isNotificationsEnabled = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(),
            body: BlocConsumer<LoginCubit, LoginState>(
                listener: (context, state) {
              if (state is LogOut) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                  (route) => false,
                );
              } else if (state is LoginFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.errorMessage)),
                );
              }
            }, builder: (context, state) {
              return Center(
                child: SizedBox(
                  width: 350,
                  child: ListView(children: [
                    Center(
                      child: Container(
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: color2,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
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
                          color: const Color.fromARGB(85, 255, 255, 255),
                          boxShadow: [
                            BoxShadow(
                              // ignore: deprecated_member_use
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: Offset(0, 4),
                            ),
                          ]),
                      child: Column(
                        children: [
                          _buildSettingItem(
                            title: "تغيير اللغة",
                            icon: Icons.language,
                            onTap: () {},
                          ),
                          _buildDivider(),
                          _buildSettingItem(
                            title: "الملف الشخصي",
                            icon: Icons.person,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ControlPanel(),
                                ),
                              );
                            },
                          ),
                          _buildDivider(),
                          _buildNotificationToggle(),
                          _buildDivider(),
                          _buildSettingItem(
                            title: "عن مزادكم",
                            icon: Icons.info,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AboutAppScreen(),
                                ),
                              );
                            },
                          ),
                          _buildDivider(),
                          _buildSettingItem(
                            title: "الشروط و الأحكام",
                            icon: Icons.description,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      TermsAndConditionsScreen(),
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
                                      TermsAndConditionsScreen(),
                                ),
                              );
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
                                  builder: (context) => AddFunds(),
                                ),
                              );
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
                        backgroundColor: WidgetStateProperty.all(color2),
                        foregroundColor: WidgetStateProperty.all(color2),
                      ),
                      onPressed: () {
                        context.read<LoginCubit>().logout();
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                          (route) => false,
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "تسجيل الخروج",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.logout, color: Colors.white),
                        ],
                      ),
                    )
                  ]),
                ),
              );
            })));
  }

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

  Widget _buildDivider() {
    return Container(
      height: 1,
      width: 340,
      color: color1,
    );
  }
}
