import 'package:flutter/material.dart';

import 'cofee.dart';

class CofeeShop extends ChangeNotifier{
  //cofee for sale list
  final List<Cofee>_shop=[
    //black cofee
    Cofee(
      name:"Black Coffee",
      price:"4.5" ,
      imagePath: "lib/images/c1.jpg",
    ),
    Cofee(
      //late coffee
      name:"late Coffee",
      price:"6.5" ,
      imagePath: "lib/images/c22.jpeg",
    ),
    //iced coffee
    Cofee(
      name:"iced Coffee",
      price:"9.5" ,
      imagePath: "lib/images/c33.jpeg",
    ),
    //capuchino coffee
    Cofee(
      name:"Capuchino Coffee",
      price:"10.5" ,
      imagePath: "lib/images/c44.jpeg",
    ),

  ];
//user cart
List<Cofee>_userCart=[];


//get coffee list

  List<Cofee> get cofeeShop=> _shop;

  //get user cart

  List<Cofee> get userCart=> _userCart;

//add item to cart
void addItemToCart(Cofee cofee){
  _userCart.add(cofee);
  notifyListeners();

}
//remove item from cart
void removeItemFromCart(Cofee cofee){
  _userCart.remove(cofee);
  notifyListeners();
}
}