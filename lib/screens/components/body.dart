import 'package:flutter/material.dart';
import 'package:flutterap/constants.dart';

import 'package:flutterap/screens/components/headerWithSearchBox.dart';
import 'package:flutterap/screens/components/recomendedProducts.dart';
import 'package:flutterap/screens/components/titleWithMoreButon.dart';

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
          RecomendedProducts()
          ],
        ),
      );
    }
  }
