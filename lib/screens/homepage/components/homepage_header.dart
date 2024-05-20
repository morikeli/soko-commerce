import 'package:e_commerce/screens/homepage/components/icon_with_counter.dart';
import 'package:e_commerce/screens/homepage/components/search_form.dart';
import 'package:flutter/material.dart';


class HomepageHeader extends StatelessWidget {
  const HomepageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchForm(),
          // cart
          IconwithCounterWidget(
            icon: Icons.shopping_cart_outlined,
            numofItems: 0,
            onPress: () {},
          ),
          // notifications
          IconwithCounterWidget(
            icon: Icons.notifications_outlined,
            numofItems: 4,
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
