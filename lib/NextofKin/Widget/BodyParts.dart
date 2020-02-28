import 'package:flutter/material.dart';

class StandardTextFormField extends StatelessWidget {
  final String hintText;

  StandardTextFormField({this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.black),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            )),
        style: TextStyle(color: Colors.black, height: 2,fontSize: 15));
  }
}


class TextTitle extends StatelessWidget {
  final String text;

  TextTitle({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // icon: Icon(Icons.visibility_off,)
      style: TextStyle(
        fontSize: 12,
        height: 2.0,
        color: Colors.black,
      ),
      // onChanged: (value) {},
    );
  }
}

