import 'package:flutter/material.dart';
import 'Register/Register.dart';
import 'constant.dart';
import 'package:google_fonts/google_fonts.dart';

const String MALAY_TITLE = "SELAMAT DATANG KE";
const String MALAY_HEADER = "KWKPK Perkhidmatan Atas Talian 24/7";
const String MALAY_SUBTITLE = "Menjaga anda, keluarga dan komuniti anda.";
const String ENG_TITLE = "WELCOME TO";
const String ENG_HEADER = "KWKPK 24/7 Online Services";
const String ENG_SUBTITLE =
    "Looking after you, your family and your community.";

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage('assets/landing_background.png'),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _Header(),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _Title(text: MALAY_TITLE),
                    _HeaderText(text: MALAY_HEADER),
                    _SubTitle(text: MALAY_SUBTITLE),
                    _Divider(),
                    _Title(text: ENG_TITLE),
                    _HeaderText(text: ENG_HEADER),
                    _SubTitle(text: ENG_SUBTITLE),
                  ],
                ),
              ),
            ),
            Row(children: <Widget>[
              _Button(title: "REGISTER", color: Colors.white),
              _Button(title: "LOGIN"),
            ]),
          ],
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  final Color color;
  final String title;

  const _Button({@required this.title, this.color = yellowTheme, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: SizedBox(
        height: 50,
        child: FlatButton(
          textColor: Colors.black,
          color: color,
          onPressed: () {
            if (title == "REGISTER")
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Register()));
          },
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 200.0,
      color: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            height: 185,
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
                fontSize: 200,
                color: Colors.white30,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 30),
                Image.asset(
                  "assets2/Logo.png",
                  height: 50,
                ),
                SizedBox(height: 12),
                Image.asset(
                  "assets2/logo_text.png",
                  width: 150,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String text;
  const _Title({@required this.text, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4),
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _SubTitle extends StatelessWidget {
  final String text;
  const _SubTitle({@required this.text, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        fontSize: 18,
        color: Colors.white,
      ),
    );
  }
}

class _HeaderText extends StatelessWidget {
  final String text;
  const _HeaderText({@required this.text, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4),
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 32),
      color: Colors.white,
      height: 3,
      width: 100,
    );
  }
}
