import 'package:flutter/material.dart';
import 'package:flutterap/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft:Radius.circular(36),
            bottomRight:Radius.circular(36),
          )
      ),
      height: size.height * 0.22  ,
      child: Stack(
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: size.width*0.1),
              height: size.height * 0.2 - 27,
              decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft:Radius.circular(36),
                    bottomRight:Radius.circular(36),
                  )
              ),
              child: Row(
                children: [
                  Text(
                    'Hi Munib',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white,fontWeight: FontWeight.bold
                    ),
                  ),
                  Spacer(),
                  Image.asset("assets/icons/logo.jpeg",height: size.height*0.12,width:size.width*0.12 ,)

                ],
              )
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,

              child: Container(
                  alignment: Alignment.center,
                  height: 54,
                  margin : EdgeInsets.symmetric(horizontal: padding1),
                  padding: EdgeInsets.symmetric(horizontal: padding1),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft:Radius.circular(36),
                          bottomRight:Radius.circular(36),
                          topLeft:Radius.circular(36),
                          topRight:Radius.circular(36)
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0,10),
                            blurRadius:50,
                            color:primary.withOpacity(0.23)
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                            color: primary.withOpacity(0.5)
                        ),
                        enabledBorder:InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon:Image.asset('assets/icons/search-icon.png',height: size.height*0.02,)
                    ),
                  )
              )
          )
        ],
      ),
    );
  }
}