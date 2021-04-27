

import 'package:flutter/material.dart';
import 'package:flutterap/constants.dart';

import 'iconCard.dart';
import 'imageAndIcon.dart';


class DetailsBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          TitlePrice(
            title: "Angelica\n",
            country: "Russia",
            price: "\$440",
          ),
          SizedBox(

            width: size.width/2,
            height: 84,
            child: FlatButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20 ))),
              color: primary,
              onPressed: (){},
              child: Text("Buy Now"),
            ),
          )

        ],
      ),
    );
  }
}

class TitlePrice extends StatelessWidget {
  const TitlePrice({
    Key key, this.title, this.country, this.price,
  }) : super(key: key);
  final String title, country;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding1),
      child: Row(
        children: [
          RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:title,style: Theme.of(context).textTheme.headline4.copyWith(color: black,fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:country,style: TextStyle(
                    fontSize:20,
                    color:primary,
                    fontWeight: FontWeight.w300
                  ),
                  ),
                ]
              ),
            ),
          Spacer(),
          Text( price ,style: Theme.of(context).textTheme.headline5.copyWith(color: primary),)
        ],
      ),
    );
  }
}

