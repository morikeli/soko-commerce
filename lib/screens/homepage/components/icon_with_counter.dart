import 'package:e_commerce/constants/colors.dart';
import 'package:flutter/material.dart';


class IconwithCounterWidget extends StatelessWidget {
  const IconwithCounterWidget({
    super.key, 
    this.numofItems = 0, 
    required this.onPress, 
    required this.icon,
  });
  
  final IconData icon;
  final int numofItems;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      borderRadius: BorderRadius.circular(50.0),
      child: Stack(     
        children: [
          Container(
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(.1),
              shape: BoxShape.circle,
            ),
            height: 46.0,
            width: 46.0,
            padding: const EdgeInsets.all(12.0),
            child: Icon(icon),
          ),
          if (numofItems != 0)
            Positioned(
              top: 3,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 15.0, color: Colors.white),
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                height: 15.0,
                width: 15.0,
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Text(
                    numofItems.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      height: 1,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}