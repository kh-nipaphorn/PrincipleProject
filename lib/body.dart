import 'dart:convert';

import 'package:bracelet_new/Cart.dart';
import 'package:flutter/material.dart';
import 'package:bracelet_new/constants.dart';
import 'package:bracelet_new/header_with_searchbox.dart';
import 'package:http/http.dart' as http;

import 'constants.dart';

class Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Body();
  }
}

class _Body extends State<Body> {
  var data = List<dynamic>();

  void getdata() async {
    var res = await http.get(
        "https://springtermproject.herokuapp.com/Product/show",
        headers: {'Content-Type': 'application/json'});
    setState(() {
      data = jsonDecode(res.body);
      print(data);
    });
  }

  @override
  void initState() {
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                TitleWithCustomUnderLine(
                  text: 'Recommend Bracelet!',
                ),
                Spacer(),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {
                    setState(() {});
                    Navigator.pushNamed(context, '/Product');
                  },
                  child: Text(
                    'More',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, int index){
//                      return Container(
//                        color: Colors.red,
//                        height: 50,
//                        width: 50,
//                      );
                      return RecommendCard(size, context, 'assets/bracelet/1_G.png', data[index]['name'], 'Gold', data[index]['price']);
                    },
                  ),
                ),
              ),
            ],
          ),
//          Row(
//            children: [
//              RecommendCard(size, context, 'assets/bracelet/1_G.png',
//                  '', 'Gold', 399),
//              RecommendCard(size, context, 'assets/bracelet/2_G.png',
//                  'Classic\n', 'Gold', 499),
//              RecommendCard(size, context, 'assets/bracelet/3_G.png',
//                  'Modern\n', 'Gold', 599)
//            ],
//          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                TitleWithCustomUnderLine(
                  text: 'Best Seller Pendant bracelet!',
                ),
                Spacer(),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {
                    setState(() {});
                    Navigator.pushNamed(context, '/Product');
                  },
                  child: Text(
                    'More',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecommendCard(size, context, 'assets/pendant/1.png',
                    'Hearth Song', 'Silver', 159),
                RecommendCard(size, context, 'assets/pendant/2.png', 'Tree',
                    'Silver', 239),
                RecommendCard(size, context, 'assets/pendant/3.png',
                    'Leaf clover', 'Silver', 259),
                RecommendCard(
                    size, context, 'assets/pendant/4.png', 'T', 'Silver', 199)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container RecommendCard(Size size, BuildContext context, String img,
      String title, String Materail, double price) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5
      ),
      width: size.width * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
      ),
      child: InkWell(
        onTap: () {
//          Navigator.pushNamed(context, '/Cart');
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CartPage(
                        pic: img,
                        price: price,
                        nameProduct: title,
                        color: Materail,
                      )));
        },
        child: Column(
          children: [
            Image.asset(img),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(Materail,style: TextStyle(color: kPrimaryColor),),
                Text(price.toString())
              ],
            ),
SizedBox(
  height: 10,
)

//            Column(
//              children: [
//                Container(
//                  child: RichText(
//                    text: TextSpan(children: [
//                      TextSpan(
//                          text: title.toUpperCase(),
//                          style: Theme.of(context).textTheme.button),
//                      TextSpan(
//                        text: Materail.toUpperCase(),
//                        style: TextStyle(
//                          color: kPrimaryColor.withOpacity(0.5),
//                        ),
//                      )
//                    ]),
//                  ),
//                ),
//                Spacer(),
//                Text(
//                  price.toString(),
//                  style: Theme.of(context)
//                      .textTheme
//                      .button
//                      .copyWith(color: kPrimaryColor),
//                )
//              ],
//            )
          ],
        ),
      ),
    );
  }
}

class TitleWithCustomUnderLine extends StatelessWidget {
  const TitleWithCustomUnderLine({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
