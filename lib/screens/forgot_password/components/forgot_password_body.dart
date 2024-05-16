import 'package:e_commerce/constants/colors.dart';
import 'package:e_commerce/screens/forgot_password/components/forgot_password_form.dart';
import 'package:e_commerce/screens/login/login.dart';
import 'package:flutter/material.dart';


class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .04),
            const Text(
              'Forgot password',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),
            const Text(
              'Please provide your email address. We will send a link to the email to reset your password.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .08),
            const ForgotPasswordForm(),
            SizedBox(height: MediaQuery.of(context).size.height * .08),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?', style: TextStyle(fontSize: 16.0)),
                TextButton(
                  onPressed: () => Navigator.popAndPushNamed(context, LoginPage.routeName),
                  child: const Text(
                    'Login', 
                    style: TextStyle(
                      color: kPrimaryColor, 
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}