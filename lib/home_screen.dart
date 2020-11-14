import 'package:bracelet_new/Cart.dart';
import 'package:flutter/material.dart';
import 'package:bracelet_new/body.dart';
import 'package:flutter_svg/svg.dart';

class Homescreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Homescreen();
  }
}

class _Homescreen extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      actions: [
//        IconButton(
//          icon: SvgPicture.asset(
//            "assets/icons/shopping-cart.svg",
//            color: Colors.white,
//            height: 70,
//          ),
//          onPressed: () {
//            setState(() {});
//            Navigator.pushNamed(context, '/Cart');
//          },
//        )
      ],
    );
  }
}
