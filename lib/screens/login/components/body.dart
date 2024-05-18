import 'package:e_commerce/constants/colors.dart';
import 'package:e_commerce/screens/login/components/login_form.dart';
import 'package:e_commerce/screens/signup/signup.dart';
import 'package:flutter/material.dart';


class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

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
                  'Welcome back', 
                  style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Login using your email and password', 
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .08),
                const LoginForm(),
                SizedBox(height: MediaQuery.of(context).size.height * .08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?", style: TextStyle(fontSize: 16.0)),
                    const SizedBox(width: 5.0),
                    TextButton(
                      onPressed: () => Navigator.pushNamed(context, SignupScreen.routeName),
                      child: const Text(
                        'Sign up', 
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
        ),
      ),
    );
  }
}
