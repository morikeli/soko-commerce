import 'package:e_commerce/screens/cart/body.dart';
import 'package:e_commerce/screens/cart/components/widgets/appbar.dart';
import 'package:e_commerce/screens/cart/components/widgets/checkout_card.dart';
import 'package:flutter/material.dart';


class CartScreen extends StatelessWidget {
  static String routeName = '/cart';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cartAppBar(),
      body: const CartBody(),
      bottomNavigationBar: const CheckoutCard(),
    );
  }
}