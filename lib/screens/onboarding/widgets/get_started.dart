import 'package:e_commerce/constants/colors.dart';
import 'package:e_commerce/screens/login/login.dart';
import 'package:flutter/material.dart';


// Get started button
class GetStartedButton extends StatefulWidget {
  const GetStartedButton({super.key});

  @override
  State<GetStartedButton> createState() => _GetStartedButtonState();
}

class _GetStartedButtonState extends State<GetStartedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: kPrimaryColor,
    ),
    width: MediaQuery.of(context).size.width * 0.9,
    height: 55,
    child: TextButton(
      onPressed: () => Navigator.pushNamed(context, LoginPage.routeName), 
      child: const Text(
        'Get started',
        style: TextStyle(
          color: Colors.white,
        ),
      )
    ),
  );
  }
}
