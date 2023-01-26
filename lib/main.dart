import 'package:flutter/material.dart';
import 'constants.dart';
import 'homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      theme: appTheme,
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}