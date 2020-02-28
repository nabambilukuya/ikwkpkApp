import 'package:flutter/material.dart';
import 'page.dart';

class Ikwkpk extends StatefulWidget {
  @override
  _IkwkpkState createState() => _IkwkpkState();
}

class _IkwkpkState extends State<Ikwkpk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(children: <Widget>[
      Stack(
        alignment: Alignment(0.0, 0.9),
        children: <Widget>[
          Container(
            child: Image(
                image: AssetImage(
                  'assets4/ONBOARD1.png',
                ),
                width: 1000,
                height: 737,
                fit: BoxFit.fill),
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
                    MaterialPageRoute(builder: (context) => Part()),
                  );
                },
                child: Text("N E X T ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
              )),
        ],
      ),


    ]));
  }
}
