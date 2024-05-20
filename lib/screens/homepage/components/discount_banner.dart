import 'package:flutter/material.dart';


class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.blue.shade900,
      ),
      padding: const EdgeInsets.all(20.0),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .04),
      child: const Text.rich(
        TextSpan(
          text: "Soko offers!\n",
          style: TextStyle(color: Colors.white, fontSize: 15.0),
          children: [
            TextSpan(
              text: '20% discounts',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              )
            ),
          ]
        ),
      ),
    );
  }
}