import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cofee_tile.dart';
import '../models/cofee.dart';
import '../models/cofee_shop.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeItemFromCart(Cofee cofee) {
    Provider.of<CofeeShop>(context, listen: false).removeItemFromCart(cofee);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text(
              "Your Cart",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20), // Space between title and list
            Expanded(
              child: Consumer<CofeeShop>(
                builder: (context, value, child) {
                  return ListView.builder(
                    itemCount: value.userCart.length, // Length of the cart list
                    itemBuilder: (context, index) {
                      // Get individual cart items
                      Cofee eachCofee = value.userCart[index];
                      return CofeeTile(
                        cofee: eachCofee,
                        onPressed: () => removeItemFromCart(eachCofee),
                        icon: const Icon(Icons.delete),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
