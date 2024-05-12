import 'package:e_commerce/constants/colors.dart';
import 'package:flutter/material.dart';


// Get started button
class GetStartedWidget extends StatefulWidget {
  const GetStartedWidget({super.key});

  @override
  State<GetStartedWidget> createState() => _GetStartedWidgetState();
}

class _GetStartedWidgetState extends State<GetStartedWidget> {
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
      onPressed: () {}, 
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
