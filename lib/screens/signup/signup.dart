import 'package:e_commerce/screens/signup/components/signup_body.dart';
import 'package:flutter/material.dart';


class SignupScreen extends StatelessWidget {
  static String routeName = '/signup';
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
        centerTitle: true,
      ),
      body: const SignupScreenBody(),
    );
  }
}