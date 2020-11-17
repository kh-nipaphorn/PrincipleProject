import 'package:bracelet_new/ConfirmPayment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_screen.dart';

class Payment extends StatefulWidget {
  final double price;
  Payment({this.price});
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: InsertData(
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
      actions: [
        IconButton(
          icon: Icon(
            Icons.clear,
            size: 30,
          ),
          onPressed: () {
            setState(() {});
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Homescreen(),
                ));
          },
        ),
        SizedBox(
          width: 5,
        )
      ],
    );
  }
}

class InsertData extends StatelessWidget {
  var _nameController = TextEditingController();
  var _telController = TextEditingController();
  var _addressController = TextEditingController();
  final double price;
  InsertData({this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          children: [
            Image.asset(
              'assets/images/qrcode.png',
              height: 400,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: TextField(
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
                decoration: InputDecoration(labelText: 'Name'),
                controller: _nameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: TextField(
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
                decoration: InputDecoration(labelText: 'Tel'),
                controller: _telController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: TextField(
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
                decoration: InputDecoration(labelText: 'Address'),
                controller: _addressController,
              ),
            ),
            Row(
              children: [
                RaisedButton(
                  child: Text('Confirm'),
//                  onPressed: () => print('This is Login button'),
                  onPressed: () {
                    print('This is Login button');
//                    message = _usernameController.text;
//                    setState(() {});

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CFpayment(
                                  Name: _nameController.text,
                                  Tel: _telController.text,
                                  address: _addressController.text,
                                  price: price,
                                )));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
