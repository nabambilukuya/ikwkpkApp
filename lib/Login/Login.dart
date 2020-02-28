// import 'package:KGC/Widget/registerBottom.dart';
// import 'package:KGC/Widget/registerHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Widget/background.dart';
import 'Widget/BodyParts.dart';
import 'Widget/registerBottom.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // VARIABLE ------------------------------------------------------------\
  bool status = false;

  // BUILDER -------------------------------------------------------------\
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundBody(
        body: Container(
          padding: EdgeInsets.only(top: 230),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              StandardTextFormField(hintText: 'MOBILE NUMBER'),
              SecuredTextFormField(hintText: '                   PASSWORD'),
              SubmitButton(action: () {}, name: 'SIGN IN'),
              Button(action: () {}, name: ''),
            ],
          ),
        ),
      ),
    );
  }
}
