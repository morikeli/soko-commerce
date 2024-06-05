import 'package:e_commerce/constants/colors.dart';
import 'package:e_commerce/models/cart_items.dart';
import 'package:flutter/material.dart';


class ItemsinCartCard extends StatelessWidget {
  final Cart itemsInCart;
  const ItemsinCartCard({
    super.key,
    required this.itemsInCart,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .08,
            width: MediaQuery.of(context).size.width * .18,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: const Color(0xFFF5F6F9),
                ),
                child: Image.asset(itemsInCart.item.productImages[0]),
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * .1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemsInCart.item.productName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text.rich(
                TextSpan(
                  text: 'Kshs.${itemsInCart.item.productPrice}',
                  style: const TextStyle(color: kPrimaryColor),
                  children: [
                    TextSpan(
                      text: ' x${itemsInCart.numberofItems}',
                      style: const TextStyle(color: kTextColor), 
                    ),
                  ]
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}