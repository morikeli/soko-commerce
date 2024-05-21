import 'package:flutter/material.dart';


class Product {
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
    this.productRating = 0.0,
    this.isFavorite = false,
    this.isPopular = false,
  });
}

// demo products
List<Product> productsOnSale = [
  Product(
    productName: 'Beats headphones',
    productDescription: '',
    productImages: [
      'assets/img/items/beats-headphones.jpg',
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    productPrice: 20000.00,
    productRating: 4.8,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
    productName: 'PS5 Dualshock',
    productDescription: '',
    productImages: [
      'assets/img/items/ps5-dualshock.jpg',
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    productPrice: 3500.00,
    productRating: 4.5,
    isFavorite: false,
    isPopular: true,
  ),
  Product(
    productName: 'Sony soundbar',
    productDescription: '',
    productImages: [
      'assets/img/items/sony-soundbar.jpg',
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    productPrice: 50000.00,
    productRating: 4.9,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
    productName: 'Samsung S22 Ultra',
    productDescription: '',
    productImages: [
      'assets/img/items/samsung.jpg',
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    productPrice: 90000.00,
    productRating: 4.6,
    isFavorite: false,
    isPopular: true,
  ),
  Product(
    productName: 'Apple TV',
    productDescription: '',
    productImages: [
      'assets/img/items/tv.jpg',
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    productPrice: 120000.00,
    productRating: 4.7,
    isFavorite: true,
    isPopular: true,
  ),
];