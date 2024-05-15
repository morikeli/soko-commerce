import 'package:e_commerce/constants/colors.dart';
import 'package:e_commerce/screens/onboarding/components/onboarding_content.dart';
import 'package:e_commerce/screens/onboarding/components/onboarding_items.dart';
import 'package:e_commerce/screens/onboarding/widgets/get_started.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final controller = OnboardingScreenItems();
  final pageController = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0),
        child: PageView.builder(
          onPageChanged: (index) => setState(() => isLastPage = controller.items.length -1 == index) ,
          controller: pageController,
          itemCount: controller.items.length,
          itemBuilder: (context, index) {
            return OnboardingScreenContent(
              text: controller.items[index]['text'].toString(), 
              description: controller.items[index]['description'].toString(), 
              image: controller.items[index]['image'].toString(),
            );
          },
        ),
      ),

      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: isLastPage ? const GetStartedButton() : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Skip button
            TextButton(
              onPressed: () {
                pageController.jumpToPage(controller.items.length - 1);
              }, 
              child: const Text('Skip', style: TextStyle(color: kPrimaryColor)),
            ),
            
            SmoothPageIndicator(
              controller: pageController,
              count: controller.items.length,
              effect: const WormEffect(
                activeDotColor: kPrimaryColor,
              ),
              onDotClicked: (index) {
                pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 600), 
                  curve: Curves.easeIn
                );
              },
            ),

            // Next button
            TextButton(
              onPressed: () {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 600), 
                  curve: Curves.easeIn,
                );
              }, 
              child: const Text('Next', style: TextStyle(color: kPrimaryColor)),
            ),
          ],
        ),
      ),
    );
  }
}
