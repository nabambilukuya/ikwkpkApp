import 'package:flutter/material.dart';
import 'package:landingPage/Onboardkwkpk/Onboard.dart';

class SubmitButton extends StatelessWidget {
  final Function action;
  final String name;

  SubmitButton({@required this.action, @required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width - (48),
        child: RaisedButton(
          color: Colors.yellow,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Ikwkpk(),
                ));
          },
          child: Text("S I G N    I N ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
        ));
  }
}

class Button extends StatelessWidget {
  final Function action;
  final String name;

  Button({@required this.action, @required this.name});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      textColor: Colors.black,
      padding: EdgeInsets.only(top: 0, bottom: 100),
      onPressed: () => action,
      child: Text(
        "Enter as\nFIRST TIME USER",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15.0,
        ),
      ),
    );
  }
}
