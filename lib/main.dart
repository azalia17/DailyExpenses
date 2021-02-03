import 'package:flutter/material.dart';
import 'dart:async';
import 'package:dailyexpenses/nav.dart';
import 'package:dailyexpenses/palette.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Daily Expenses",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Poppins',
        primaryColor: Colors.white,
        //primaryColor: Palette.ijo,
        canvasColor: Colors.transparent,
      ),
      home: Nav(),
    );
  }
}
