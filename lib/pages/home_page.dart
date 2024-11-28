import 'package:cofiapp/components/bottom_nav.dart';
import 'package:cofiapp/pages/cart_page.dart';
import 'package:cofiapp/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Current selected index for bottom navigation
  int _selectedIndex = 0;

  // List of pages to navigate between
  final List<Widget> _pages = [
    const ShopPage(), // Shop page
    const CartPage(), // Cart page
  ];

  // Method to handle bottom bar navigation
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex], // Use the selected page based on the index
    );
  }
}
