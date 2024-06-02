import 'package:e_commerce/models/products.dart';
import 'package:flutter/material.dart';


class ProductsDetailsBody extends StatelessWidget {
  const ProductsDetailsBody({
    super.key,
    required this.selectedProduct,
  });

  final Product selectedProduct;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.height * .5,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(selectedProduct.productImages[0]),
          ),
        ),
      ],
    );
  }
}