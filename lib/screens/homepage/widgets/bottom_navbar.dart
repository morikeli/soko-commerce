import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  final void Function(int) onTap;
  final int screenIndex;
  
  const BottomNavbar({
    super.key, 
    required this.onTap,
    required this.screenIndex
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: screenIndex,
      onTap: onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon( Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      );
  }
}