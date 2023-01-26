import 'package:flutter/material.dart';

class ManageDrivers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/dm.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
