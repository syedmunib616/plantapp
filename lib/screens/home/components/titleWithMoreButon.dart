import 'package:flutter/material.dart';
import 'package:flutterap/constants.dart';


class TitlewithMoreButton extends StatelessWidget {
  const TitlewithMoreButton({
    Key key, this.title, this.press,
  }) : super(key: key);

  final String title;
  final String press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          TitleWithCustomUnderline(text:title),
          Spacer(),
          FlatButton(onPressed:(){}, child:Text(press,style:TextStyle(color: Colors.white)),
            color: primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),

          )

        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key, this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:  padding1 / 4),
            child: Text(text,
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: padding1 / 4),
              height: 5,
              color: primary.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}


