import 'package:flutter/material.dart';
import 'package:bracelet_new/constants.dart';

import 'home_screen.dart';

class CFpayment extends StatefulWidget {
  final String Name;
  final String Tel;
  final String address;
  final double price;

  CFpayment({this.Name, this.Tel, this.address,this.price});

  @override
  _CFpaymentState createState() => _CFpaymentState();
}

class _CFpaymentState extends State<CFpayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shipping Address'),
        centerTitle: true,
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
      ),
      body: Column(
        children: [
//          SizedBox(width: 50,),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding * 1.1, top: kDefaultPadding * 2),
              ),
              Text(
                'Ship to..',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding * 3, top: kDefaultPadding * 2),
              ),
              Text(
                widget.Name,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding * 1.1, top: kDefaultPadding * 2),
              ),
              Text(
                'Telephone..',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding * 3, top: kDefaultPadding * 2),
              ),
              Text(
                widget.Tel,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding * 1.1, top: kDefaultPadding * 2),
              ),
              Text(
                'Address..',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding * 3, top: kDefaultPadding * 2),
              ),
              Text(
                widget.address,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding * 1.1, top: kDefaultPadding * 2),
              ),
              Text(
                'Sum Payment',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding * 3, top: kDefaultPadding * 2),
              ),
              Text(
                widget.price.toString(),
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
