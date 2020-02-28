import 'package:flutter/material.dart';

class Kgc extends StatefulWidget {
  @override
  _KgcState createState() => _KgcState();
}

class _KgcState extends State<Kgc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(

//Image1--------------------------------------------------------------//
            children: <Widget>[
          Container(
            child: Image(image: AssetImage('assets8/1.png'), fit: BoxFit.fill),
          ),


//Image2--------------------------------------------------------------//

          Container(
            child: Image(image: AssetImage('assets8/2.png'), fit: BoxFit.fill),
          ),

//Image3--------------------------------------------------------------//

          Container(
            child: Image(image: AssetImage('assets8/3.png'), fit: BoxFit.fill),
          ),


        ]));
  }
}
