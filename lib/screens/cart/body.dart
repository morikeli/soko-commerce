import 'package:e_commerce/models/cart_items.dart';
import 'package:e_commerce/screens/cart/components/items_in_cart.dart';
import 'package:flutter/material.dart';


class CartBody extends StatefulWidget {
  const CartBody({super.key});

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Dismissible(
            key: Key(cartItems[index].item.itemID.toString()),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                cartItems.removeAt(index);
              });
            },
            background: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(12.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Row(
                children: [
                  Spacer(),
                  Icon(Icons.delete, color: Colors.red)
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ItemsinCartCard(
                itemsInCart: cartItems[index]
              ),
            )
          ),
        );
      }
    );
  }
}