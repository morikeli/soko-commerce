import 'package:flutter/material.dart';

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