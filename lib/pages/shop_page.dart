import 'package:cofiapp/components/cofee_tile.dart';
import 'package:cofiapp/models/cofee.dart';
import 'package:cofiapp/models/cofee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add to Crt
  void addToCart(Cofee cofee){
    Provider.of<CofeeShop>(context,listen: false).addItemToCart(cofee);
  }
  @override
  Widget build(BuildContext context) {
    return  Consumer<CofeeShop>(builder: (context,Value,child)=>SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
            children: [
              const Text("How would you Like Your Coffee ?",
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 25),

              Expanded(child:
              ListView.builder(
                itemCount: Value.cofeeShop.length,
                itemBuilder: (context,index)
              {
                //get individual coffee

                Cofee eachCofee=Value.cofeeShop[index];
                //return the file for this coffee
                return CofeeTile(
                  icon: const Icon(Icons.add),
                  cofee:eachCofee, onPressed:()=> addToCart(eachCofee));
              },),
              )
            ]

        ),
      ),
    ),
    );
  }
}
