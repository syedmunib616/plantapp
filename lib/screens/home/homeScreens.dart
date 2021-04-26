import 'package:flutter/material.dart';

import 'package:flutterap/screens/components/body.dart';

class HomeScreens extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Image.asset("assets/icons/menuicon.png"),
        onPressed: (){},
      ),
    );
  }
}