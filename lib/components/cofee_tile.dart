import 'package:flutter/material.dart';
import '../models/cofee.dart';

class CofeeTile extends StatelessWidget {
  final Cofee cofee; // Field to hold the Cofee object
  final void Function()? onPressed; // Callback for the button
  final Widget icon; // Custom trailing icon

  const CofeeTile({
    super.key,
    required this.cofee,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      margin: const EdgeInsets.only(bottom: 40),
      child: ListTile(
        title: Text(cofee.name), // Access coffee name
        subtitle: Text('\$${cofee.price.toString()}'), // Display formatted price
        leading: Image.asset(cofee.imagePath), // Display image
        trailing: IconButton(
          icon: icon, // Use the custom icon passed to the widget
          onPressed: onPressed, // Trigger the callback when pressed
        ),
      ),
    );
  }
}
