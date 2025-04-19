import 'package:mzadcom/features/authentication/login/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key});

  Future<void> logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.clear();

    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('تسجيل الخروج'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () => logout(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
            child: const Text(
              'تسجيل الخروج',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
