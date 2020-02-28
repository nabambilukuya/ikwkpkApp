import 'package:flutter/material.dart';
import 'package:landingPage/Profile/homepage.dart';


class Part extends StatefulWidget {
  @override
  _Part createState() => _Part();
}

class _Part extends State<Part> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                alignment: Alignment(0.0, 0.9),
                children: <Widget>[
                  Expanded(
//Image2--------------------------------------------------------------//
                    child: Image(
                        image: AssetImage(
                          'assets4/ONBOARD2.png',
                        ),
                        width: 1000,
                        height: 737,
                        fit: BoxFit.fill),
                  ),
                ],
              ),
            ],
          ),
//Image3--------------------------------------------------------------//

          Container(
            child: Image(
                image: AssetImage('assets4/ONBOARD3.png'), fit: BoxFit.fill),
          ),

//Image4--------------------------------------------------------------//

          Container(
            child: Image(
                image: AssetImage('assets4/ONBOARD4.png'), fit: BoxFit.fill),
          ),

//Image5--------------------------------------------------------------//

          Container(
            child: Image(
                image: AssetImage('assets4/ONBOARD5.png'), fit: BoxFit.fill),
          ),

//Image6--------------------------------------------------------------//

          Column(
            children: <Widget>[
              Stack(
                alignment: Alignment(0.0, 0.9),
                children: <Widget>[
                  Container(
                    child: Image(
                        image: AssetImage(
                          'assets4/ONBOARD6.png',
                        ),
                        width: 1000,
                        height: 737,
                        fit: BoxFit.fill),
                  ),
                ],
              ),
            ],
          ),
//Image7--------------------------------------------------------------//
          Container(
            child: Image(
                image: AssetImage('assets4/ONBOARD7.png'), fit: BoxFit.fill),
          ),
//Image8--------------------------------------------------------------//
          Container(
            child: Image(
                image: AssetImage('assets4/ONBOARD8.png'), fit: BoxFit.fill),
          ),
//Image9--------------------------------------------------------------//
          Container(
            child: Image(
                image: AssetImage('assets4/ONBOARD9.png'), fit: BoxFit.fill),
          ),
//Image10--------------------------------------------------------------//
          Stack(alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                child: Image(
                    image: AssetImage('assets4/ONBOARD10.png'),width: 1000,
                        height: 737,
                    fit: BoxFit.cover),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width - (48),
                  child: RaisedButton(
                    color: Colors.yellow,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    },
                    child: Text("ENROL NOW ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                  )),
            ],
          )
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
