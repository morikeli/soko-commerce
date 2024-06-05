import 'package:e_commerce/models/products.dart';

class Cart {
  final Product item;
  final int numberofItems;

  Cart({
    required this.item,
    required this.numberofItems,
  });
}

List<Cart> cartItems = [
  Cart(item: productsOnSale[0], numberofItems: 2),
  Cart(item: productsOnSale[1], numberofItems: 2),
  Cart(item: productsOnSale[2], numberofItems: 1),
  Cart(item: productsOnSale[3], numberofItems: 1),
  Cart(item: productsOnSale[4], numberofItems: 1),
];