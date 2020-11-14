import 'package:bracelet_new/Cart.dart';
import 'package:bracelet_new/Product.dart';
import 'package:bracelet_new/body.dart';
import 'package:flutter/material.dart';
import 'package:bracelet_new/constants.dart';
import 'package:bracelet_new/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bracelet Shop',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Homescreen(),
      routes: {'/Cart': (context) => CartPage(),
                '/Body': (context) => Body(),
                '/Product': (context) => Product(),},

//      home: MyHomePage(),
    );
  }
}
