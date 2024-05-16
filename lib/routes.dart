import 'package:e_commerce/screens/forgot_password/forgot_password.dart';
import 'package:e_commerce/screens/login/login.dart';
import 'package:e_commerce/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  OnboardingScreen.routeName: (context) => const OnboardingScreen(),
  LoginPage.routeName: (context) => const LoginPage(),
  ForgotPasswordScreen.routeName:(context) => const ForgotPasswordScreen(),
};