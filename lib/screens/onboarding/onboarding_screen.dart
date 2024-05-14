import 'package:e_commerce/screens/onboarding/components/onboarding_body.dart';
import 'package:flutter/material.dart';


class OnboardingScreen extends StatelessWidget {
  static String routeName = '/onboarding';
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}