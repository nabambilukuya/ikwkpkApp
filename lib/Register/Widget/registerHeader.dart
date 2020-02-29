import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';

// Constant -------------------------------------------------------------------------------\
const String appName = '';

// Main: Header ---------------------------------------------------------------------------\
class RegisterHeader extends StatelessWidget {
  final String title;
  final String description;

  RegisterHeader({
    @required this.description,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        topPart,
        _Title(title),
        _Description(description),
      ],
    );
  }

  Widget get topPart => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          _Name(),
          _SarawakLogo(),
        ],
      );
}

// 1. Sarawak Logo ---------------------------------------------------------------------------\
class _SarawakLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets2/Logo.png', height: 80, width: 80);
  }
}

// 2. Title ---------------------------------------------------------------------------\
class _Title extends StatelessWidget {
  final String text;

  _Title(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 35,
        height: 1.5,
      ),
    );
  }
}

// 3. App Name ---------------------------------------------------------------------------\
class _Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      appName,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}

// 4. Description ---------------------------------------------------------------------------\
class _Description extends StatelessWidget {
  final String text;

  _Description(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        height: 1.5,
        fontSize: 12,
      ),
    );
  }
}
