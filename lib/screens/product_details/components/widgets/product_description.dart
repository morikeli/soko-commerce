import 'package:e_commerce/models/products.dart';
import 'package:e_commerce/screens/product_details/components/product_color_dot.dart';
import 'package:flutter/material.dart';

class ProductDescriptionSection extends StatelessWidget {
  const ProductDescriptionSection({
    super.key,
    required this.selectedProduct,
  });

  final Product selectedProduct;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(top: 20.0),
        margin: const EdgeInsets.only(top: 25.0),
        height: 300.0,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0)
          )
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              selectedProduct.productName,
              maxLines: 2,
              softWrap: true,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: MediaQuery.of(context).size.width * .17,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  ),
                  color: selectedProduct.isFavorite ? const Color(0xFFFFE6E6) : const Color(0xFFF5F6F9),
                ),
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  Icons.favorite_sharp,
                  color: selectedProduct.isFavorite ? const Color(0xFFF44336) : const Color(0xFFDBDFF4),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                selectedProduct.productDescription,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Row(
              children: [
                ProductDotColor(selectedProduct: selectedProduct),
                const Spacer(),
                const AddorRemoveButtons(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

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