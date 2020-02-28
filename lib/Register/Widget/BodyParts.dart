import 'package:flutter/material.dart';

// 1. Standard Text Form  ---------------------------------------------------------------------------\
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
        style: TextStyle(height: 2, fontSize: 15));
  }
}

// 2. SecuredtextFormField  ---------------------------------------------------------------------------\

class SecuredTextFormField extends StatefulWidget {
  final String hintText;

  SecuredTextFormField({this.hintText});

  @override
  _SecuredTextFormFieldState createState() => _SecuredTextFormFieldState();
}

class _SecuredTextFormFieldState extends State<SecuredTextFormField> {
  bool isSecured = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isSecured,
      decoration: decoration,
      style: TextStyle(height: 2),
    );
  }

  InputDecoration get decoration {
    UnderlineInputBorder underline() =>
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.black));

    Icon icon() => Icon(
          isSecured == true ? Icons.visibility_off : Icons.visibility,
          size: 25.0,
        );

    return InputDecoration(
      hintText: widget.hintText,
      enabledBorder: underline(),
      suffixIcon: IconButton(
        onPressed: () => iconTapped,
        icon: icon(),
      ),
    );
  }

  void iconTapped() {
    setState(() {
      isSecured = !isSecured;
    });
  }
}

// 3. Switch  ---------------------------------------------------------------------------\
class Switcher extends StatefulWidget {
  final String hintText;

  Switcher({@required this.hintText});

  @override
  _SwitcherState createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[_title, _switch],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }

  Text get _title {
    return Text(
      widget.hintText,
      style: TextStyle(fontSize: 20, height: 1.5, color: Colors.black),
    );
  }

  Switch get _switch {
    return Switch(
      activeColor: Colors.black,
      value: status,
      onChanged: (value) => setState(() => status = value),
    );
  }
}

//4 . ProfilePicture  ---------------------------------------------------------------------------\
class ProfilePicture extends StatefulWidget {
  @override
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 47,
      height: 47,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(
        Icons.camera_alt,
        size: 30.0,
      ),
    );
  }
}

// 5.Textile  ---------------------------------------------------------------------------\
class TextTitle extends StatelessWidget {
  final String text;

  TextTitle({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      style: TextStyle(
        fontSize: 12,
        height: 2.0,
      ),
      // onChanged: (value) {},
    );
  }
}

// 6. Field  ---------------------------------------------------------------------------\
class Field extends StatefulWidget {
  final String hintText;

  Field({this.hintText});

  @override
  FieldState createState() => FieldState();
}

class FieldState extends State<Field> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: decoration,
      style: TextStyle(color: Colors.black, height: 2),
    );
  }

  InputDecoration get decoration {
    UnderlineInputBorder underline() =>
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.black));

    Icon icon() => Icon(
          Icons.camera_alt,
          color: Colors.black,
          size: 25.0,
        );

    return InputDecoration(
      hintText: widget.hintText,
      hintStyle: TextStyle(color: Colors.black),
      enabledBorder: underline(),
      suffixIcon: IconButton(
        onPressed: () => iconTapped,
        icon: icon(),
      ),
    );
  }

  void iconTapped() {
    setState(() {});
  }
}
