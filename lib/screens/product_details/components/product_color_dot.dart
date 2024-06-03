import 'package:e_commerce/constants/colors.dart';
import 'package:e_commerce/models/products.dart';
import 'package:flutter/material.dart';


class ProductDotColor extends StatelessWidget {
  const ProductDotColor({
    super.key,
    required this.selectedProduct,
  });

  final Product selectedProduct;

  @override
  Widget build(BuildContext context) {
    int selectedDot = 2;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          ...List.generate(
            selectedProduct.colors.length,
            (index) => Container(
              padding: const EdgeInsets.all(5.0),
              height: MediaQuery.of(context).size.height * .08,
              width: MediaQuery.of(context).size.width * .08,
              decoration: BoxDecoration(
                border: Border.all(color: selectedDot == (index + 1) ? kPrimaryColor : Colors.transparent),
                shape: BoxShape.circle,
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: selectedProduct.colors[index],
                  shape: BoxShape.circle,
                )
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}