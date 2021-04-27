import 'package:flutter/material.dart';
import 'package:flutterap/constants.dart';

import '../../constants.dart';


class FeaturedPrdoucts extends StatelessWidget {
  const FeaturedPrdoucts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          FeaturedPrdouctCard(image:"assets/images/4.jpeg",press:(){}),
          FeaturedPrdouctCard(image:"assets/images/5.jpeg",press:(){}),
          FeaturedPrdouctCard(image:"assets/images/6.jpeg",press:(){}),
          FeaturedPrdouctCard(image:"assets/images/4.jpeg",press:(){}),
        ],
      ),
    );
  }
}



class FeaturedPrdouctCard extends StatelessWidget {
  const FeaturedPrdouctCard({
    Key key, this.image, this.press,
  }) : super(key: key);
  final String image;
  final Function  press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: padding1,top: padding1/2,bottom: padding1/2),
        width: size.width * 0.8 ,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            )
        ),
       ),
    );
  }
}