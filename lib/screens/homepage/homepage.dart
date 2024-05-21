import 'package:e_commerce/screens/homepage/components/homepage_body.dart';
import 'package:e_commerce/screens/homepage/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  static String routeName = '/homepage';
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedScreen = 0;
  final List<Widget> screens = [
    const HomepageBody(),
  ];

  void _onIconTapped(int index) {
    setState(() {
      _selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomepageBody(),
      bottomNavigationBar: BottomNavbar(
        onTap: _onIconTapped,
        screenIndex: _selectedScreen,
      ),
    );
  }
}