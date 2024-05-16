import 'package:e_commerce/screens/login/components/body.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static String routeName = '/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: const LoginScreenBody(),
    );
  }
}