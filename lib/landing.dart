import 'package:flutter/material.dart';

import 'Register/Register.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Image(
              image: AssetImage(
                'assets1/try.png',
              ),
              width: 1000,
              height: 1000,
              fit: BoxFit.fill
              ),
          Padding(
            padding: EdgeInsets.all(35),
            child: Image(
                image: AssetImage(
                  'assets1/messaging.png',
                ),
                width: 900,
                height: 500,
                fit: BoxFit.scaleDown),
          ),
          Row(children: <Widget>[
            FlatButton(
              textColor: Colors.black,
              color: Colors.white,
              padding: EdgeInsets.all(9),
              onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => 
              
              
              Register()
              
              ));},
              child: Text(
                "      REGISTER    ",
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            RaisedButton(
              textColor: Colors.black,
              padding: EdgeInsets.all(9),
              color: Colors.yellow,
              onPressed: () {},
              child: Text(
                "         LOGIN        ",
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
