import 'package:e_commerce/screens/homepage/components/homepage_body.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  static String routeName = '/homepage';
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomepageBody(),
    );
  }
}