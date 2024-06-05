import 'package:e_commerce/models/cart_items.dart';
import 'package:flutter/material.dart';


AppBar cartAppBar() {
  return AppBar(
    centerTitle: true,
    title: Column(
      children: [
        const Text(
          'Your cart',
          style: TextStyle(fontSize: 18.0),
        ),
        Text(
          '${cartItems.length} items',
          style: const TextStyle(fontSize: 15.0),
        )
      ],
    ),
  );
}