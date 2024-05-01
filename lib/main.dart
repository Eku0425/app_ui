import 'package:app_ui/screens/Details.dart';
import 'package:app_ui/screens/Home.dart';
import 'package:app_ui/screens/cart.dart';
import 'package:flutter/material.dart';

void main()
{
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context)=>HomePage(),
        '/home':(context)=>HomePage(),
        '/Detail':(context)=>DetailScreen(),
        '/cart':(context)=>CartScreen(),
      },
    );
  }
}


