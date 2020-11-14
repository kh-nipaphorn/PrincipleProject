import 'package:bracelet_new/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'body.dart';
import 'constants.dart';

class CartPage extends StatefulWidget {
  final String nameProduct;
  final String color;
  final int price;
  final String pic;

  CartPage({this.nameProduct, this.color, this.price, this.pic});

  @override
  State<StatefulWidget> createState() {
    return _cartstate();
  }
}

class _cartstate extends State<CartPage> {
//  @override
//  void initState() {
//    super.initState();
//    print(widget.pic);
//    BodyCart(
//      color: widget.color,
//      nameProduct: widget.nameProduct,
//      pic: widget.pic,
//      price: widget.price,
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BodyCart(
        color: widget.color,
        nameProduct: widget.nameProduct,
        pic: widget.pic,
        price: widget.price,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {
          setState(() {});
          Navigator.pop(context);
        },
      ),
//      actions: [
//        IconButton(
//          icon: SvgPicture.asset(
//            "assets/icons/shopping-cart.svg",
//            color: Colors.white,
//            height: 70,
//          ),
//          onPressed: () {
//            print('gogogogogo');
//            setState(() {});
//            Navigator.pushNamed(context, '/Cart');
//          },
//        )
//      ],
    );
  }
}


class BodyCart extends StatelessWidget {
  final String nameProduct;
  final String color;
  final int price;
  final String pic;

  BodyCart({this.pic, this.price, this.color, this.nameProduct});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(
                pic,
                width: 400,
              )
            ],
          )
        ],
      ),
    );
  }
}
