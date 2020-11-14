import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bracelet_new/constants.dart';
import 'Payment.dart';
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
    String test = nameProduct;
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: kDefaultPadding * 2),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      pic,
                      height: 200,
                    ),
                    Text(
                      nameProduct,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(color: kPrimaryColor),
                    ),
                    Text(
                      color,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(color: kPrimaryColor),
                    ),
                    Text(
                      price.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(color: kPrimaryColor),
                    ),
                    IconButton(
                      icon: SvgPicture.asset("assets/icons/shopping-cart.svg"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Payment()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
