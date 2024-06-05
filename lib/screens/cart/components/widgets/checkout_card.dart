import 'package:e_commerce/constants/colors.dart';
import 'package:flutter/material.dart';


class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 15,
            color: const Color(0xFFDADADA).withOpacity(0.4)
          )
        ],
        color: Colors.white,
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .08,
                    width: MediaQuery.of(context).size.width * .2,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xFFF5F6F9),
                    ),
                    child: const Icon(
                      Icons.receipt, 
                      color: kPrimaryColor,
                      size: 30.0,
                    )
                  ),
                  const Spacer(),
                  const Text(
                    'Add voucher code',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  const Icon(Icons.arrow_forward_ios, size: 18.0),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text.rich(
                    TextSpan(
                      text: 'Total: \n',
                      children: [
                        TextSpan(
                          text: 'Kshs.307,000',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ]
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * .04),
                  Container(
                    width: MediaQuery.of(context).size.width * .6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: kPrimaryColor,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Checkout',
                        style: TextStyle(color: kPrimaryLightColor),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}