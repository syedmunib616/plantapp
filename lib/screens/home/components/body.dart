import 'package:flutter/material.dart';
import 'package:flutterap/constants.dart';


import 'featuredPrdouct.dart';
import 'headerWithSearchBox.dart';
import 'recomendedProducts.dart';
import 'titleWithMoreButon.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(
              size: size
          ),
          TitlewithMoreButton(title: "Recomanded",press: "More",),
          RecomendedProducts(),
          TitlewithMoreButton(title: "Featured Product",press:"More",),
          FeaturedPrdoucts(),


          ],
        ),
      );
    }
  }




