import 'package:flutter/material.dart';
import 'package:landingPage/Login/Login.dart';

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
              MaterialPageRoute(builder: (context) => 
              
             Login()),
            );},
          child: Text("R E G I S T E R",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
        ));
  }
}
