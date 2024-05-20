import 'package:e_commerce/constants/colors.dart';
import 'package:e_commerce/screens/otp/components/otp_form.dart';
import 'package:flutter/material.dart';


class OtpBody extends StatelessWidget {
  const OtpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * .04),
              const Text(
                'OTP verification',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.black,
                ),
              ),
              const Text("We've sent code to +254112 *** 678"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('This code will expire in '),
                  TweenAnimationBuilder(
                    tween: Tween(begin: 30.0, end: 0), 
                    duration: const Duration(seconds: 30), 
                    builder: (context, value, child) => Text(
                      '00:${value.toInt().toString().padLeft(2, '0')}',
                      style: const TextStyle(
                        color: kPrimaryColor,
                      ),
                    )
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .08),
              const OtpForm(),
              SizedBox(height: MediaQuery.of(context).size.height * .08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Didn't get the code? ",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Resend OTP code',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}