import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            child: Image(
                image: AssetImage(
                  'assets/iKWKPK.png',
                ),
                width: 1000,
                height: 737,
                fit: BoxFit.fill),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'IKWKPK \n APP',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 60,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    ]));
  }
}
