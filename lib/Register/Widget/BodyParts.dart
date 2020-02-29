import 'package:flutter/material.dart';

// 1. Standard Text Form  ---------------------------------------------------------------------------\
class StandardTextFormField extends StatelessWidget {
  final String hintText;

  StandardTextFormField({this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            labelText: hintText,
            labelStyle: TextStyle(color: Colors.black54, fontSize: 12),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black54),
            )),
        style: TextStyle(fontSize: 18));
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
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.black54));

    Icon icon() => Icon(
          isSecured == true ? Icons.visibility_off : Icons.visibility,
          size: 25.0,
        );

    return InputDecoration(
      hintText: widget.hintText,
      hintStyle: TextStyle(fontSize: 12, color: Colors.black54),
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
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black54,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Icon(
        Icons.camera_alt,
        size: 20.0,
        color: Colors.black54,
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
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,

        style: TextStyle(
          fontSize: 12,
          height: 2.0,
        ),
        // onChanged: (value) {},
      ),
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
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.black54));

    Icon icon() => Icon(
          Icons.camera_alt,
          color: Colors.black54,
          size: 20.0,
        );

    return InputDecoration(
      labelText: widget.hintText,
      labelStyle: TextStyle(color: Colors.black54, fontSize: 12),
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
