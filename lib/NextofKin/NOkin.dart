
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Widget/background.dart';
import 'Widget/BodyParts.dart';
import 'Widget/registerBottom.dart';
import 'Widget/registerHeader.dart';

// Constant -----------------------------------------------------------------------------\
const String screenDesc =
    'Add your contact details to let us contact you for updates and announcements.';
const String screenName = "NEXT of KIN";

class NOKin extends StatefulWidget {
  NOKin({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _NOKinState createState() => _NOKinState(); 
}

class _NOKinState extends State<NOKin> {
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
           
            StandardTextFormField(hintText: 'NEXT of KIN FIRST NAME'),
            StandardTextFormField(hintText: 'NEXT of KIN LAST NAME'),
            StandardTextFormField(hintText: 'NEXT OF KIN MOBILE NO.'),
            StandardTextFormField(hintText: 'NEXT OF KIN RELATIONSHIP'),
            SubmitButton(action: () {}, name: 'FINISH'),
            
          ],
          ),
        ),
      ),
    );
  }
}
