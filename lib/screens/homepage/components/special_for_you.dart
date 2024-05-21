import 'package:flutter/material.dart';


class SpecialForYouSection extends StatelessWidget {
  const SpecialForYouSection({
    super.key, 
    required this.text, 
    required this.onPress,
  });

  final String text;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: onPress,
            child: const Text('See more'),
          ),
        ],
      ),
    );
  }
}