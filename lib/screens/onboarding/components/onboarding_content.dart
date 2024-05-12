import 'package:flutter/material.dart';


class OnboardingScreenContent extends StatelessWidget {
  const OnboardingScreenContent({
    super.key,
    required this.text,
    required this.description,
    required this.image,
  });
  final String text, description, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 350.0, fit: BoxFit.contain),
        const SizedBox(height: 5.0),
        Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15.0),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}