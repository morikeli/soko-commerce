import 'package:e_commerce/models/products.dart';
import 'package:e_commerce/screens/product_details/components/sections/add_to_cart.dart';
import 'package:e_commerce/screens/product_details/components/sections/product_description.dart';
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
          height: MediaQuery.of(context).size.height * .3,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(selectedProduct.productImages[0]),
          ),
        ),
        ProductDescriptionSection(selectedProduct: selectedProduct),
        const AddToCartButton(),
      ],
    );
  }
}