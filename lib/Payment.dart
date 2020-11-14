import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_screen.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: InsertData(),
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
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/back_arrow.svg",
            color: Colors.white,
            height: 70,
          ),
          onPressed: () {
            setState(() {});
            Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen(),));
          },
        )
      ],
    );
  }
}

class InsertData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(
            'assets/images/qrcode.png',
            height: 400,
          )
        ],
      ),
    );
  }
}
