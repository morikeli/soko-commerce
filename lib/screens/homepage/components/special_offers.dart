import 'package:e_commerce/screens/homepage/components/homepage_section.dart';
import 'package:e_commerce/screens/homepage/components/special_offer_card.dart';
import 'package:flutter/material.dart';


class SpecialOffersForYou extends StatelessWidget {
  const SpecialOffersForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomepageSection(
          text: 'Special for you',
          onPress: () {},
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .01),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpecialOfferCard(
                  category: 'Smart Tvs',
                  imagePath: 'assets/img/items/tv.jpg',
                  numofBrands: 12,
                  onPress: () {},
                ),
                SpecialOfferCard(
                  category: 'Smartphones',
                  imagePath: 'assets/img/items/samsung.jpg',
                  numofBrands: 10,
                  onPress: () {},
                ),
                SpecialOfferCard(
                  category: 'Smartwatches',
                  imagePath: 'assets/img/items/smart-watch.jpg',
                  numofBrands: 7,
                  onPress: () {},
                ),
                SpecialOfferCard(
                  category: 'Headphones',
                  imagePath: 'assets/img/items/beats-headphones.jpg',
                  numofBrands: 6,
                  onPress: () {},
                ),
                SpecialOfferCard(
                  category: 'Soundbars & woofers',
                  imagePath: 'assets/img/items/woofer.jpg',
                  numofBrands: 5,
                  onPress: () {},
                ),
                SpecialOfferCard(
                  category: 'Gaming consoles',
                  imagePath: 'assets/img/items/ps5-console.jpg',
                  numofBrands: 3,
                  onPress: () {},
                ),
                SpecialOfferCard(
                  category: 'Flash disks & memory cards',
                  imagePath: 'assets/img/items/sandisk-flashdrive-1.jpg',
                  numofBrands: 3,
                  onPress: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}