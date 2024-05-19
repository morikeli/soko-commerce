import 'package:e_commerce/constants/colors.dart';
import 'package:e_commerce/constants/errors.dart';
import 'package:e_commerce/utils/errors.dart';
import 'package:flutter/material.dart';


class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  late String email, password, confirmPassword;
  List<String> formErrors = [];

  void addError({required String error}) {
    if (!formErrors.contains(error)) {
      setState(() {
        formErrors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (formErrors.contains(error)) {
      setState(() {
        formErrors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          emailFormField(),
          const SizedBox(height: 15.0),
          passwordFormField(),
          const SizedBox(height: 15.0),
          confirmPasswordFormField(),
          const SizedBox(height: 15.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: kPrimaryColor,
            ),
            width: MediaQuery.of(context).size.width * .9,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Signup',
                style: TextStyle(
                  color: kPrimaryLightColor
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  TextFormField confirmPasswordFormField() {
    return TextFormField(
          decoration: const InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: 'Confirm your password',
            labelText: 'Password confirmation',
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 25.0),
              child: Icon(Icons.lock_outline),
            )
          ),
        );
  }

  TextFormField passwordFormField() {
    return TextFormField(
          decoration: const InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: 'Enter your password',
            labelText: 'Password',
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 25.0),
              child: Icon(Icons.lock_outline),
            )
          ),
        );
  }

  TextFormField emailFormField() {
    return TextFormField(
          decoration: const InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: 'Enter your email address',
            labelText: 'Email',
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.email_outlined),
            )
          ),
        );
  }
}