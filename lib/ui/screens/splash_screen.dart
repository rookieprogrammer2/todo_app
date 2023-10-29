import 'package:flutter/material.dart';
import 'package:todo_app/ui/screens/home_sc/home_screen.dart';
import 'package:todo_app/utilities/app_assets.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "splash_screen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5),
            () {
      Navigator.pushNamed(context, HomeScreen.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(AppAssets.splash),
    );
  }
}
