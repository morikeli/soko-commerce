import 'package:e_commerce/screens/forgot_password/components/forgot_password_body.dart';
import 'package:flutter/material.dart';


class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = '/forgot-password';
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot password'),
        centerTitle: true,
      ),
      body: const ForgotPasswordBody(),
    );
  }
}