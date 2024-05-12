import 'package:e_commerce/constants/colors.dart';
import 'package:e_commerce/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome screen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: kTextColor),
          bodyMedium: TextStyle(color: kTextColor),
        ),
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: const OnboardingScreen(),
    );
  }
}
