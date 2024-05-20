import 'package:e_commerce/screens/otp/components/otp_body.dart';
import 'package:flutter/material.dart';


class OTPScreen extends StatelessWidget {
  static String routeName = '/otp-verification';
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP verification'),
        centerTitle: true,
      ),
      body: const OtpBody(),
    );
  }
}