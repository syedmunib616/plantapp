import 'package:flutter/material.dart';
import 'package:flutterap/screens/home/homeScreens.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: background,
        primaryColor: primary,
      ),
      title: 'flutter Demo',
      home: HomeScreens(),
    );
  }
}

