import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stagged_animation/home_page.dart';
import 'package:stagged_animation/splash_screen.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent, // Transparent status bar
      statusBarIconBrightness: Brightness.light, // White icons
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        brightness: Brightness.light,
      ),
      initialRoute: 'welcome',
      routes: {
        '/': (context) => const HomeScreen(),
        'welcome': (context) => const WelcomeScreen(),
      },
    );
  }
}
