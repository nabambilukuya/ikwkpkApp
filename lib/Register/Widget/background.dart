import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';
//import 'package:landingPage/landing.dart';

class BackgroundBody extends StatelessWidget {
  final Widget body;
  final String title;
  final String description;

  BackgroundBody({
    @required this.body,
    @required this.description,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // height: MediaQuery.of(context).size.height,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Header(
              title: title,
              description: description,
            ),
            // Expanded(child: body)
            body
          ],
        ),
      ),
    );
  }
}

class GoBackButton extends StatelessWidget {
  final Function action;

  GoBackButton({@required this.action});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: new Icon(Icons.arrow_back_ios, color: Colors.white, size: 30),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}

class _Header extends StatelessWidget {
  final String title;
  final String description;

  const _Header({@required this.description, @required this.title, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 250.0,
      color: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            height: 235,
            decoration: new BoxDecoration(
              color: yellowTheme,
              borderRadius: new BorderRadius.only(
                bottomLeft: const Radius.circular(20.0),
                bottomRight: const Radius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "K",
              style: GoogleFonts.montserrat(
                fontSize: 250,
                color: Colors.white30,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, top: 70, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Image.asset(
                  "assets2/logo_text.png",
                  width: 150,
                ),
                Image.asset(
                  "assets2/Logo.png",
                  height: 50,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 45),
            height: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[_Title(title), _Description(description)],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  size: 48,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.of(context).pop()),
          ),
        ],
      ),
    );
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
        fontSize: 14,
      ),
    );
  }
}
