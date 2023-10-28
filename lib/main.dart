import 'package:flutter/material.dart';
import 'package:todo_app/ui/screens/home_screen.dart';
import 'package:todo_app/ui/screens/register_screen.dart';
import 'package:todo_app/ui/screens/splash_screen.dart';
import 'package:todo_app/utilities/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        RegisterScreen.routeName: (_) => const RegisterScreen(),
        HomeScreen.routeName: (_) => const HomeScreen(),
        SplashScreen.routeName: (_) => const SplashScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }

}
