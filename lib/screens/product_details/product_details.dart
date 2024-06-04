import 'package:e_commerce/models/products.dart';
import 'package:e_commerce/screens/product_details/components/body.dart';
import 'package:e_commerce/screens/product_details/components/product_info_header.dart';
import 'package:flutter/material.dart';


class ProductsDetailsScreen extends StatelessWidget {
  static String routeName = '/product-details';
  
  const ProductsDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            const ProductDetailsHeader(),
            ...List.generate(
              1,
              (index) => ProductsDetailsBody(selectedProduct: productsOnSale[index])
            ),
          ],
        ),
      ),
    );
  }
}

class SelectedProduct {
  final Product product;

  SelectedProduct({required this.product});
}