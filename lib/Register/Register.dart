import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Widget/background.dart';
import 'Widget/BodyParts.dart';
import 'Widget/registerBottom.dart';
import 'Widget/registerHeader.dart';

// Constant -----------------------------------------------------------------------------\
const String screenDesc =
    'Register your details to access iKWKPK benefits and privileges';
const String screenName = "REGISTER";

class Register extends StatefulWidget {
  Register({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // VARIABLE ------------------------------------------------------------\
  bool status = false;

  // BUILDER -------------------------------------------------------------\
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundBody(
        title: screenName,
        description: screenDesc,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextTitle(text: "YOUR PICTURE"),
              ProfilePicture(),
              StandardTextFormField(hintText: 'FIRST NAME'),
              StandardTextFormField(hintText: 'LAST NAME'),
              StandardTextFormField(hintText: 'MOBILE PHONE NO'),
              Field(hintText: 'IC NUMBER & PICTURE'),
              SecuredTextFormField(hintText: 'PASSWORD'),
              Switcher(hintText: "I AM SARAWAKIAN"),
              SubmitButton(action: () {}, name: screenName),
            ],
          ),
        ),
      ),
    );
  }
}
