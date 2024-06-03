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
        Container(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .25),
                child: Text(
                  selectedProduct.productName,
                  maxLines: 2,
                  softWrap: true,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
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
              )
            ],
          ),
        ),
      ],
    );
  }
}