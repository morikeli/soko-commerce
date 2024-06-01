import 'package:e_commerce/screens/homepage/components/discount_banner.dart';
import 'package:e_commerce/screens/homepage/components/homepage_header.dart';
import 'package:e_commerce/screens/homepage/components/popular_products.dart';
import 'package:e_commerce/screens/homepage/components/special_offers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomepageBody extends StatelessWidget {
  const HomepageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height *.03),
            const HomepageHeader(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            const DiscountBanner(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),            
            const SpecialOffersForYou(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            PopularProducts(),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
          ],
        ),
      ),
    );
  }
}
