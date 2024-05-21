import 'package:flutter/material.dart';


class SpecialOfferCard extends StatelessWidget {
  final String category, imagePath;
  final int numofBrands;
  final GestureTapCallback onPress;
  
  const SpecialOfferCard({
    super.key, 
    required this.category,
    required this.imagePath,
    required this.numofBrands,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .6,
        height: MediaQuery.of(context).size.height * .2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Stack(
            children: [
                Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFF616161).withOpacity(.9),
                      const Color(0xFF616161).withOpacity(.5),
                    ]
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                child: Text.rich(
                  TextSpan(
                    style: const TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: '$category\n',
                        style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '$numofBrands brands')
                    ]
                  ),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
