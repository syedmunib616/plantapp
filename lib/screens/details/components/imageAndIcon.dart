import 'package:flutter/material.dart';
import 'package:flutterap/constants.dart';

import 'iconCard.dart';



class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: padding1*3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(icon:Image.asset("assets/icons/back.png") , onPressed:(){
                        Navigator.pop(context);
                      }),
                    ),
                    Spacer(),
                    IconCard(icon: "assets/icons/sun.png",),

                    IconCard(icon: "assets/icons/l.png",),

                    IconCard(icon: "assets/icons/water.png",),

                    IconCard(icon: "assets/icons/b.png",),
                  ],
                ),
              ),
            ),
            Container(
                height:size.height*0.8,
                width: size.width*0.75,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.only(topLeft: Radius.circular(63),bottomLeft: Radius.circular(63)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 60,
                        color: primary.withOpacity(0.29)
                    )
                  ],
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit:BoxFit.fill,
                      image: AssetImage("assets/images/2.jpeg")
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
