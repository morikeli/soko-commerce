import 'package:e_commerce/constants/colors.dart';
import 'package:e_commerce/routes.dart';
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
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(color: kTextColor),
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(color: kTextColor),
            gapPadding: 10,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: kTextColor),
          bodyMedium: TextStyle(color: kTextColor),
          titleLarge: TextStyle(color: Color(0xFF8B8B8B), fontSize: 20.0),
        ),
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      initialRoute: OnboardingScreen.routeName,
      routes: routes,
      home: const OnboardingScreen(),
    );
  }
}
