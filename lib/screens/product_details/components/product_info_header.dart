import 'package:flutter/material.dart';


class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: const Color(0xFFF6F6FC),
            ),
            // padding: const EdgeInsets.only(left: 10.0),
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back)
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: const Color(0xFFF6F6FC),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
            child: const Row(
              children: [
                Icon(Icons.star_outlined, color: Colors.yellow),
                SizedBox(width: 5.0),
                Text(
                  '4.5',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}