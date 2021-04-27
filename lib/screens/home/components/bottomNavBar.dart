import 'package:flutter/material.dart';
import 'package:flutterap/constants.dart';

import '../../constants.dart';
class bottomNavBar extends StatelessWidget {
  const bottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:padding1*2,right: padding1*2),
      height: 80,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon:Image.asset("assets/icons/location.png") , onPressed: (){}),

          IconButton(icon:Image.asset("assets/icons/shopping.png") , onPressed: (){}),

          IconButton(icon:Image.asset("assets/icons/heart.png") , onPressed: (){}),
        ],
      ) ,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0,-10),
              blurRadius: 35,
              color: primary.withOpacity(0.38),

            )
          ]
      ),
    );
  }
}