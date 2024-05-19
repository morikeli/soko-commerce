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
  String? email, password, confirmPassword;
  final List<String> formErrors = [];

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
          const SizedBox(height: 10.0),
          FormErrorsWidget(errors: formErrors),
          const SizedBox(height: 10.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: kPrimaryColor,
            ),
            width: MediaQuery.of(context).size.width * .9,
            child: TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
              },
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
      onChanged: (value) {
        if (password == confirmPassword) {
          removeError(error: kPasswordNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPasswordError);
        }
      },
      onSaved: (newValue) => confirmPassword = newValue.toString(),
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPasswordNullError);
        } else if (password != confirmPassword) {
          addError(error: kPasswordMatchError);
        }
        return null;
      }
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
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPasswordNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPasswordError);
        }
        password = value;
      },
      onSaved: (newValue) => password = newValue.toString(),
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPasswordNullError);
        } else if (value.length < 8) {
          addError(error: kShortPasswordError);
        }
        return null;
      }
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
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kemailNullError);
        } else if (emailValidatorRegex.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
      },
      onSaved: (newValue) => email = newValue.toString(),
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kemailNullError);
        } else if (emailValidatorRegex.hasMatch(value)) {
          addError(error: kInvalidEmailError);
        }
        return null;
      },
    );
  }
  
}