import 'package:cofiapp/models/cofee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>CofeeShop(),
    builder: (context,child)=> const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),);
  }
}
