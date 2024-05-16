import 'package:e_commerce/constants/colors.dart';
import 'package:e_commerce/constants/errors.dart';
import 'package:flutter/material.dart';



class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> formErrors = [];
  String ?email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          emailFormField(),
          const SizedBox(height: 5.0),
          FormErrorsWidget(errors: formErrors),
          const SizedBox(height: 35.0),
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
              child: const Text('Submit', style: TextStyle(color: kPrimaryLightColor)),
            ),
          )
        ],
      ),
    );
  }

  TextFormField emailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Email",
        hintText: "Enter your email address",
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 25.0),
          child: Icon(Icons.email_outlined),
        ),
      ),
      onChanged: (value) {
        if (value.isEmpty && formErrors.contains(kemailNullError)) {
          setState(() {
            formErrors.remove(kemailNullError);
          });
        } else if (emailValidatorRegex.hasMatch(value) && formErrors.contains(kInvalidEmailError)) {
          setState(() {
            formErrors.remove(kInvalidEmailError);
          });
        }
      },
      onSaved: (newValue) => email = newValue,
      validator: (value) {
        if ((value == null || value.isEmpty) && !formErrors.contains(kemailNullError)) {
          setState(() {
            formErrors.add(kemailNullError);
          });
        } else if (!emailValidatorRegex.hasMatch(value!) && !formErrors.contains(kInvalidEmailError)) {
          setState(() {
            formErrors.add(kInvalidEmailError);
          });
        }
        return null;
      },
    );
  }
}

class FormErrorsWidget extends StatelessWidget {
  const FormErrorsWidget({
    super.key,
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: List.generate(errors.length, (index) => formErrorMessage(error: errors[index])),
      ),
    );
  }

  Row formErrorMessage({required String error}) {
    return Row(
        children: [
          const Icon(Icons.error_outline, color: Colors.red),
          const SizedBox(width: 15.0),
          Text(error),
        ],
      );
  }
}