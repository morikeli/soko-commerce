import 'package:e_commerce/constants/colors.dart';
import 'package:e_commerce/models/products.dart';
import 'package:flutter/material.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.onPress,
  });
  
  final Product product;
  final GestureTapCallback onPress;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: GestureDetector(
        onTap: onPress,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(.01),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(product.productImages[0]),
                ),
              ),
              Text(
                product.productName,
                style: const TextStyle(color: Colors.black, overflow: TextOverflow.ellipsis),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${product.productPrice}0/=',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30.0),
                    onTap: () {},
                    child: Icon(
                      Icons.favorite_outlined, 
                      color: product.isFavorite ? Colors.red : kSecondaryColor.withOpacity(.01),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
