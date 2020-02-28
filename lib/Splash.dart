import 'package:flutter/material.dart';
import 'package:landingPage/landing.dart';
import 'dart:async';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();

  
}



class _MyHomePageState extends State<MyHomePage> {
   @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>Landing())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Image(
                image: AssetImage(
                  'assets/iKWKPK.png',
                ),
                width: 1000,
                height: 737,
                fit: BoxFit.fill),
          );
       
  }
}
