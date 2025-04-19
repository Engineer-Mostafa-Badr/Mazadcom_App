import 'package:mzadcom/core/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> drawerItems = [
      {'title': 'Home', 'icon': Icons.home_filled, 'screen': null},
      {
        'title': 'Favourites',
        'icon': Icons.favorite,
        'screen': FavouritesScreen()
      },
      {'title': 'FAQs', 'icon': Icons.question_answer, 'screen': FAQScreen()},
      {
        'title': 'Terms and Conditions',
        'icon': Icons.description,
        'screen': TermsAndConditionsScreen()
      },
      {'title': 'About Us', 'icon': Icons.info, 'screen': AboutAppScreen()},
      {'title': 'User Guide', 'icon': Icons.help, 'screen': UserGuideScreen()},
      {'title': 'Logout', 'icon': Icons.logout, 'screen': null},
    ];

    return Drawer(
      backgroundColor: color2,
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to ROP Auctions',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        onPressed: () => NavigationHelper.navigateAndReplace(
                            context, LoginPage()),
                        child: Text('Login',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: color2),
                    onPressed: () => NavigationHelper.navigateAndReplace(
                        context, RegistrationScreen()),
                    child: Text('Signup',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: drawerItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading:
                      Icon(drawerItems[index]['icon'], color: Colors.white),
                  title: Text(drawerItems[index]['title'],
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                  onTap: () {
                    if (drawerItems[index]['title'] == 'Logout') {
                      _showLogoutDialog(context);
                    } else if (drawerItems[index]['screen'] != null) {
                      NavigationHelper.navigateTo(
                          context, drawerItems[index]['screen']);
                    } else {
                      Navigator.pop(context);
                    }
                  },
                );
              },
            ),
          ),
          Divider(thickness: 0.2),
          _buildSocialMediaIcons(),
          SizedBox(height: 10),
          Text(
            'Powered by Mzadcom',
            style: TextStyle(fontSize: 12, color: Color(0xFFBEBEBE)),
          )
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape:
              ContinuousRectangleBorder(borderRadius: BorderRadius.circular(5)),
          title: Text('Logout'),
          content: Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context), child: Text('No')),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                NavigationHelper.navigateAndReplace(context, LoginPage());
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildSocialMediaIcons() {
    List<String> socialMediaIcons = [
      'assets/socialmediaIcon/15707917.png',
      'assets/socialmediaIcon/instagram_2111463.png',
      'assets/socialmediaIcon/facebook_5968764.png',
      'assets/socialmediaIcon/images.png',
      'assets/socialmediaIcon/download (1).png',
      'assets/socialmediaIcon/thread.png',
      'assets/socialmediaIcon/5296521_play_video_vlog_youtube_youtube logo_icon.png',
    ];

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 10,
        children: socialMediaIcons.map((icon) {
          return InkWell(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundImage: AssetImage(icon),
                radius: 15,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class NavigationHelper {
  static void navigateAndReplace(BuildContext context, Widget page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page));
  }

  static void navigateTo(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold();
}

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold();
}

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold();
}

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold();
}

class UserGuideScreen extends StatelessWidget {
  const UserGuideScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold();
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold();
}

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold();
}
