import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Widget/background.dart';
import 'Widget/BodyParts.dart';
import 'Widget/registerBottom.dart';
import 'Widget/registerHeader.dart';

// Constant -----------------------------------------------------------------------------\
const String screenDesc =
    'Add your contact details to let us contact you for updates and announcements';
const String screenName = "CONTACT DETAILS";

class Contact extends StatefulWidget {
  Contact({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  // VARIABLE ------------------------------------------------------------\
  bool status = false;

  // BUILDER -------------------------------------------------------------\
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundBody(
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RegisterHeader(
                description: screenDesc,
                title: screenName,
              ),
              Gender(hintText: 'GENDER'),
              StandardTextFormField(hintText: 'EMAIL (OPTIONAL)'),
              Country(),
              States(),
              StandardTextFormField(hintText: 'ADDRESS 1'),
              StandardTextFormField(hintText: 'ADDRESS 2'),
              City(),
              StandardTextFormField(hintText: 'POSTCODE'),
              SubmitButton(action: () {}, name: 'NEXT'),
            ],
          ),
        ),
      ),
    );
  }
}
