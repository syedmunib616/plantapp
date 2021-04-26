import 'package:flutter/material.dart';

import '../../constants.dart';


class RecomendedProducts extends StatelessWidget {
  const RecomendedProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendCard(
            image: "assets/images/1.jpeg",
            title: "Samantha",
            country: "Russia",
            price: 900,
          ),
          RecomendCard(
            image: "assets/images/2.jpeg",
            title: "Samantha",
            country: "Swizerland",
            price: 100,
          ),
          RecomendCard(
            image: "assets/images/3.jpeg",
            title: "Samantha",
            country: "Russia",
            price: 900,
          ),
          RecomendCard(
            image: "assets/images/1.jpeg",
            title: "Samantha",
            country: "Russia",
            price: 900,
          )
        ],
      ),
    );
  }
}

class RecomendCard extends StatelessWidget {
  const RecomendCard({
    Key key, this.image, this.title, this.country, this.price, this.press,
  }) : super(key: key);

  final String image,title,country;
  final int price;
  final Function press;


  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(7),
      width: size.width*0.4,
      height: size.height*0.4,
      child: Column(
        children: [
          //"assets/images/1.jpeg"
          Image.asset(image),
          GestureDetector(
            onTap:press,
            child: Container(
              padding: EdgeInsets.all(padding1/2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset:Offset(0,10),
                        blurRadius: 50,
                        color: primary.withOpacity(0.23)
                    )
                  ]
              ),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                              text:"$title\n".toUpperCase(),
                              style: Theme.of(context).textTheme.button,),
                            TextSpan(
                                text:"$country".toUpperCase(),
                                style: TextStyle(color: primary.withOpacity(0.5)
                                )
                            ),
                          ]
                      )
                  ),
                  Spacer(),
                  Text('\$$price',
                    style: Theme.of(context).textTheme.button.copyWith(color: primary),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
