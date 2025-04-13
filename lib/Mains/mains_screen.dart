
import 'package:flutter/material.dart';
import 'package:mzadcom/AboutApp/about_app.dart';
import 'package:mzadcom/AboutApp/terms_and_conditions_screen.dart';
import 'package:mzadcom/Auctions/MyAuctions/my_auctions.dart';
import 'package:mzadcom/Constants/constants_colors.dart';
import 'package:mzadcom/ControlPanel/control_panel_screen.dart';
import 'package:mzadcom/Favorites/favorites_screen.dart';
import 'package:mzadcom/home/home_screen.dart';
import 'package:mzadcom/More/more_screen.dart';
import 'package:mzadcom/Questions/qustions_screen.dart';
import 'package:mzadcom/authentication/LogOut/log_out.dart';
import 'package:mzadcom/authentication/bidder_register_screen.dart';
import 'package:mzadcom/Settings/settings.dart';
import 'package:mzadcom/wallet/my_wallet.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
// class MainScreen extends StatefulWidget {
//   const MainScreen({Key? key}) : super(key: key);

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   late PersistentTabController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = PersistentTabController(initialIndex: 0);
//   }

//   List<Widget> _buildScreens() => [
//         const MoreScreen(),
//         const MyWallet(),
//         const HomeScreen(),
//         const MyAuctionsScreen(),
//         const ControlPanel(),
//       ];

//   List<PersistentBottomNavBarItem> _navBarsItems() => [
//         PersistentBottomNavBarItem(
//           icon: const Icon(Icons.menu),
//           title: "المزيد",
//           activeColorPrimary: color2,
//           inactiveColorPrimary: Colors.grey,
//           onPressed: (context) => _showBottomSheet(context!),
//         ),
//         PersistentBottomNavBarItem(
//           icon: const Icon(Icons.wallet_outlined),
//           title: "المحفظة",
//           activeColorPrimary: color2,
//           inactiveColorPrimary: Colors.grey,
//         ),
//         PersistentBottomNavBarItem(
//           contentPadding: 2,
//           icon: const Icon(Icons.home_outlined),
//           title: "الرئيسية",
//           activeColorPrimary: color2,
//           inactiveColorPrimary: Colors.grey,
//         ),
//         PersistentBottomNavBarItem(
//           icon: const Icon(Icons.gavel_outlined),
//           title: "مزاداتي",
//           activeColorPrimary: color2,
//           inactiveColorPrimary: Colors.grey,
//         ),
//         PersistentBottomNavBarItem(
//           icon: const Icon(Icons.dashboard_outlined),
//           title: "لوحة التحكم",
//           activeColorPrimary: color2,
//           inactiveColorPrimary: Colors.grey,
//         ),
//       ];

//   void _showBottomSheet(BuildContext context) => showModalBottomSheet<void>(
//         context: context,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
//         ),
//         builder: (context) => Container(
//           height: MediaQuery.sizeOf(context).height * 0.3,
//           decoration: const BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
//           ),
//           child: GridView.count(
//             crossAxisCount: 4,
//             crossAxisSpacing: 6.0,
//             mainAxisSpacing: 6.0,
//             childAspectRatio: 1,
//             padding: const EdgeInsets.all(6.0),
//             children: <Widget>[
//               _buildBottomSheetItem(context, icon: Icons.settings, label: "الإعدادات", onTap: () => _navigateTo(context, SettingsPage())),
//               _buildBottomSheetItem(context, icon: Icons.favorite, label: "المفضلة", onTap: () => _navigateTo(context, FavoritesScreen())),
//               _buildBottomSheetItem(context, icon: Icons.question_answer, label: "الأسئلة المتكررة", onTap: () => _navigateTo(context, FAQScreen())),
//               _buildBottomSheetItem(context, icon: Icons.rule, label: "الشروط والأحكام", onTap: () => _navigateTo(context, TermsAndConditionsScreen())),
//               _buildBottomSheetItem(context, icon: Icons.info, label: "نبذة عنا", onTap: () => _navigateTo(context, AboutAppScreen())),
//               _buildBottomSheetItem(context, icon: Icons.person_add, label: "إنشاء حساب", onTap: () => _navigateTo(context, BidderRegister())),
//               _buildBottomSheetItem(context, icon: Icons.book, label: "دليل المستخدم", onTap: () => _closeBottomSheet(context)),
//               _buildBottomSheetItem(context, icon: Icons.logout, label: "تسجيل الخروج", onTap: () => _navigateTo(context, LogOut())),
//             ],
//           ),
//         ),
//       );

//   Widget _buildBottomSheetItem(BuildContext context, {required IconData icon, required String label, required VoidCallback onTap}) => GestureDetector(
//         onTap: onTap,
//         child: Card(
//           color: Colors.white,
//           shape: RoundedRectangleBorder(
//             side: BorderSide(color: color2, width: 1.0),
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(icon, color: color2),
//               const SizedBox(height: 2.0),
//               Text(label, style: TextStyle(fontWeight: FontWeight.bold, color: color2), textAlign: TextAlign.center),
//             ],
//           ),
//         ),
//       );

//   void _navigateTo(BuildContext context, Widget screen) {
//     Navigator.pop(context);
//     Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
//   }

//   void _closeBottomSheet(BuildContext context) => Navigator.pop(context);

//   @override
//   Widget build(BuildContext context) => PersistentTabView(
//         context,
//         controller: _controller,
//         screens: _buildScreens(),
//         items: _navBarsItems(),
//         confineToSafeArea: true,
//         backgroundColor: Colors.white,
//         handleAndroidBackButtonPress: true,
//         resizeToAvoidBottomInset: true,
//         stateManagement: true,
//         navBarStyle: NavBarStyle.style3,
//       );
// }


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 1);
  }

  List<Widget> _buildScreens() {
    return [
      const MoreScreen(),
      const MyWallet(),
      const HomeScreen(),
      const MyAuctionsScreen(),
      const ControlPanel(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.menu),
        title: "المزيد",
        activeColorPrimary: color2,
        inactiveColorPrimary: Colors.grey,
        onPressed: (context) => _showBottomSheet(context!),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.wallet_outlined),
        title: "المحفظة",
        activeColorPrimary: color2,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        contentPadding: 2,
        icon: Icon(Icons.home_outlined),
        title: "الرئيسية",
        activeColorPrimary: color2,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.gavel_outlined),
        title: "مزاداتي",
        activeColorPrimary: color2,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.dashboard_outlined),
        title: "لوحة التحكم",
        activeColorPrimary: color2,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      builder: (BuildContext context) {
        return Container(
          height:
              MediaQuery.of(context).size.height * 0.3, // يشغل 40% من الشاشة
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: GridView.count(
            crossAxisCount: 4,
            crossAxisSpacing: 6.0,
            mainAxisSpacing: 6.0,
            childAspectRatio: 1,
            padding: const EdgeInsets.all(6.0),
            children: <Widget>[
              _buildBottomSheetItem(
                context,
                icon: Icons.settings,
                label: "الإعدادات",
                onTap: () => _navigateTo(context, SettingsPage()),
              ),
              _buildBottomSheetItem(
                context,
                icon: Icons.favorite,
                label: "المفضلة",
                onTap: () => _navigateTo(context, FavoritesScreen()),
              ),
              _buildBottomSheetItem(
                context,
                icon: Icons.question_answer,
                label: "الأسئلة المتكررة",
                onTap: () => _navigateTo(context, FAQScreen()),
              ),
              _buildBottomSheetItem(
                context,
                icon: Icons.rule,
                label: "الشروط والأحكام",
                onTap: () => _navigateTo(context, TermsAndConditionsScreen()),
              ),
              _buildBottomSheetItem(
                context,
                icon: Icons.info,
                label: "نبذة عنا",
                onTap: () => _navigateTo(context, AboutAppScreen()),
              ),
              _buildBottomSheetItem(context,
                  icon: Icons.person_add,
                  label: "إنشاء حساب",
                  onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => BidderRegister(),
                        ),
                      )),
              _buildBottomSheetItem(
                context,
                icon: Icons.book,
                label: "دليل المستخدم",
                onTap: () => _closeBottomSheet(context),
              ),
              _buildBottomSheetItem(
                context,
                icon: Icons.logout,
                label: "تسجيل الخروج",
                onTap: () => _navigateTo(context, LogOut()),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildBottomSheetItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: color2, width: 1.0),
          borderRadius: BorderRadius.circular(
              8.0), // يمكنك تعديل قيمة نصف القطر حسب التصميم
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color2),
            const SizedBox(height: 2.0),
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: color2,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  void _navigateTo(BuildContext context, Widget screen) {
    Navigator.of(context).pop();
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  void _closeBottomSheet(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineToSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      navBarStyle: NavBarStyle.style3,
    );
  }
}
