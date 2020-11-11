import 'package:flutter/material.dart';
import 'package:bracelet_new/constants.dart';
import 'package:bracelet_new/header_with_searchbox.dart';

import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';

class Body extends StatelessWidget {
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
                  text: 'Recommend',
                ),
                Spacer(),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {},
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
                RecommendCard(size, context, 'assets/images/image_1.png',
                    'Bracelet\n', 'Gold', 399),
                RecommendCard(size, context, 'assets/images/image_2.png',
                    'Bracelet\n', 'Gold', 399),
                RecommendCard(size, context, 'assets/images/image_3.png',
                    'Bracelet\n', 'Gold', 399)
              ],
            ),
          )

        ],
      ),
    );
  }

  Container RecommendCard(Size size, BuildContext context, String img,
      String title, String Materail, int price) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(img),
          Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ]),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: title.toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                      text: Materail.toUpperCase(),
                      style: TextStyle(
                        color: kPrimaryColor.withOpacity(0.5),
                      ),
                    )
                  ]),
                ),
                Spacer(),
                Text(
                  price.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: kPrimaryColor),
                )
              ],
            ),
          )
        ],
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

//class TitleWithMoreBtn extends StatelessWidget {
//  const TitleWithMoreBtn({
//    Key key,
//    this.title,
//    this.press,
//  }) : super(key: key);
//  final String title;
//  final Function press;
//
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//      child: Row(
//        children: [
//          TitleWithCustomUnderLine(text: title),
//          Spacer(),
//          FlatButton(
//            shape: RoundedRectangleBorder(
//              borderRadius: BorderRadius.circular(20),
//            ),
//            color: kPrimaryColor,
//            onPressed: press,
//          )
//        ],
//
//      ),
//    )
//    throw UnimplementedError();
//  }
//}
