import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key,
  required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
        onTabChange: (value)=>onTabChange!(value),
        mainAxisAlignment: MainAxisAlignment.center,
          color: Colors.black12,
          activeColor: Colors.brown,
          tabBackgroundColor: Colors.white10,
          tabBorderRadius: 24,
          tabs: const [
        GButton(icon: Icons.home,
        text: "Shop",
        ),
        GButton(
          icon: Icons.shopping_bag_outlined,
        text: "Cart",
        ),



      ]),
    );
  }
}
