import 'package:flutter/material.dart';
import 'package:profile_demo_app/helpers/colorhelper.dart';
import 'package:profile_demo_app/screens/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _naviagtetoHome();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _naviagtetoHome() async {
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    ColorUtil.textColor;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profile Demo',
              style: TextStyle(
                fontSize: 28,
                color: Color(0xff4a4a4a),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            CircularProgressIndicator(
              color: ColorUtil.textColor,
              strokeWidth: 4,
              strokeAlign: 4,
            ),
            SizedBox(height: 30),
            Text(
              'Loading...',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff4a4a4a),
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
