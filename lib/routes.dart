import 'package:e_commerce/screens/forgot_password/forgot_password.dart';
import 'package:e_commerce/screens/homepage/homepage.dart';
import 'package:e_commerce/screens/login/login.dart';
import 'package:e_commerce/screens/onboarding/onboarding_screen.dart';
import 'package:e_commerce/screens/otp/otp.dart';
import 'package:e_commerce/screens/signup/signup.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  OnboardingScreen.routeName: (context) => const OnboardingScreen(),
  LoginPage.routeName: (context) => const LoginPage(),
  ForgotPasswordScreen.routeName:(context) => const ForgotPasswordScreen(),
  SignupScreen.routeName: (context) => const SignupScreen(),
  OTPScreen.routeName: (context) => const OTPScreen(),
  Homepage.routeName: (context) => const Homepage(),
};