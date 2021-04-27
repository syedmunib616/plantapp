import 'package:flutter/material.dart';
import 'package:flutterap/constants.dart';
import 'package:flutterap/screens/details/components/body.dart';
import 'package:flutterap/screens/details/detailsScreen.dart';

import '../../constants.dart';


class RecomendedProducts extends StatelessWidget {
  const RecomendedProducts({
    Key key,
  }) : super(key: key);

  _redirectToDetailView(BuildContext context) {
  Navigator.push(
  context, MaterialPageRoute(
  builder: (context) => DetailsScreen(),),);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          RecomendCard(
            image: "assets/images/1.jpeg",
            title: "Samantha",
            country: "Russia",
            price: 900,
            press: ()=> _redirectToDetailView(context)),
          RecomendCard(
            image: "assets/images/2.jpeg",
            title: "Samantha",
            country: "Swizerland",
            price: 100,
              press: ()=> _redirectToDetailView(context)
          ),
          RecomendCard(
            image: "assets/images/3.jpeg",
            title: "Samantha",
            country: "Russia",
            price: 900,
              press: ()=> _redirectToDetailView(context)
          ),
          RecomendCard(
            image: "assets/images/1.jpeg",
            title: "Samantha",
            country: "Russia",
            price: 900,
              press: ()=> _redirectToDetailView(context)
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
      width: size.width * 0.4,
      height: size.height * 0.27,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //"assets/images/1.jpeg"
          
          ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
              child: Image.asset(image,fit: BoxFit.cover, height: size.height * 0.2,)),
          GestureDetector(
            onTap:press,
            child: Container(
              padding: EdgeInsets.all(padding1/2),
              decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),

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
