import 'package:flutter/material.dart';


class Product {
  final String itemID;
  final String productName, productDescription;
  final List<String> productImages;
  final List<Color> colors;
  final double productRating, productPrice;
  final bool isFavorite, isPopular;

  Product({
    required this.productName,
    required this.productDescription,
    required this.productImages,
    required this.colors,
    required this.productPrice,
    this.itemID = '1',
    this.productRating = 0.0,
    this.isFavorite = false,
    this.isPopular = false,
  });
}

// demo products
List<Product> productsOnSale = [
  Product(
    itemID: '1',
    productName: 'Beats by Dre headphones',
    productDescription: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In, numquam omnis aspernatur illo tenetur beatae labore impedit eveniet, explicabo voluptates eaque sint qui odit error fugiat ex sunt asperiores quae.',
    productImages: [
      'assets/img/items/beats-headphones.jpg',
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    productPrice: 20000.00,
    productRating: 4.8,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
    itemID: '2',
    productName: 'PS5 Dualshock',
    productDescription: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In, numquam omnis aspernatur illo tenetur beatae labore impedit eveniet, explicabo voluptates eaque sint qui odit error fugiat ex sunt asperiores quae.',
    productImages: [
      'assets/img/items/ps5-dualshock.jpg',
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    productPrice: 3500.00,
    productRating: 4.5,
    isPopular: true,
  ),
  Product(
    itemID: '3',
    productName: 'Sony soundbar',
    productDescription: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In, numquam omnis aspernatur illo tenetur beatae labore impedit eveniet, explicabo voluptates eaque sint qui odit error fugiat ex sunt asperiores quae.',
    productImages: [
      'assets/img/items/sony-soundbar.jpg',
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    productPrice: 50000.00,
    productRating: 4.9,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
    itemID: '4',
    productName: 'Samsung S22 Ultra',
    productDescription: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In, numquam omnis aspernatur illo tenetur beatae labore impedit eveniet, explicabo voluptates eaque sint qui odit error fugiat ex sunt asperiores quae.',
    productImages: [
      'assets/img/items/samsung.jpg',
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    productPrice: 90000.00,
    productRating: 4.6,
    isPopular: true,
  ),
  Product(
    itemID: '5',
    productName: 'Apple TV',
    productDescription: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. In, numquam omnis aspernatur illo tenetur beatae labore impedit eveniet, explicabo voluptates eaque sint qui odit error fugiat ex sunt asperiores quae.',
    productImages: [
      'assets/img/items/tv.jpg',
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    productPrice: 120000.00,
    productRating: 4.7,
    isFavorite: true,
    isPopular: true,
  ),
];