import 'package:flutter/material.dart';
import 'package:flutterap/constants.dart';


import 'package:flutterap/screens/home/components/body.dart';
import 'package:flutterap/screens/home/components/bottomNavBar.dart';

class HomeScreens extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: bottomNavBar(),
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

