import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "home_screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Home Screen!"
        ),
      ),
    );
  }
}
