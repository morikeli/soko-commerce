import 'package:e_commerce/constants/colors.dart';
import 'package:flutter/material.dart';


class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: TextButton(
          onPressed: () {},
          child: const Text('Add to cart', style: TextStyle(color: kPrimaryLightColor)),
        ),
      ),
    );
  }
}