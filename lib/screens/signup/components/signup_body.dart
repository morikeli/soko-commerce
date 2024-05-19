import 'package:e_commerce/screens/signup/components/signup_form.dart';
import 'package:flutter/material.dart';

class SignupScreenBody extends StatelessWidget {
  const SignupScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * .04),
                const Text(
                  'Create an account', 
                  style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Enter your email address and password to create an account today', 
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .08),
                const SignupForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}