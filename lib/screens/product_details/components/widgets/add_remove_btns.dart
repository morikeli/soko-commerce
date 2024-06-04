import 'package:flutter/material.dart';


class AddorRemoveButtons extends StatelessWidget {
  const AddorRemoveButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF5F6F9),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.remove),
            ),
          ),
          const SizedBox(width: 8.0),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF5F6F9),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}