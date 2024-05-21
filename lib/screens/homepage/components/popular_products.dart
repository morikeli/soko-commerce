import 'package:e_commerce/models/products.dart';
import 'package:e_commerce/screens/homepage/components/homepage_section.dart';
import 'package:e_commerce/screens/homepage/components/product_card.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomepageSection(
          text: 'Popular products', 
          onPress: () {}, 
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .01),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                  productsOnSale.length, 
                  (index) => ProductCard(product: productsOnSale[index])
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}