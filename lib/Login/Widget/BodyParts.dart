import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:flutter/material.dart';

class StandardTextFormField extends StatelessWidget {
  final String hintText;

  StandardTextFormField({this.hintText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text(
          '    |',
          style: TextStyle(
            color: Colors.black,
            fontSize: 43,
            fontWeight: FontWeight.w100,
          ),
        ),
        TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.black,
              ),
              filled: true,
              fillColor: Colors.white30,
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(50.0),
                ),
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              prefixIcon: const Icon(
                Icons.phone_android,
                color: Colors.black,
              ),
            ),
            style: TextStyle(
              color: Colors.black,
              height: 2,
              fontSize: 15,
            )),
      ],
    );
  }
}

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
    return Stack(children: <Widget>[
      Text(
        '    |',
        style: TextStyle(
          color: Colors.black,
          fontSize: 43,
          fontWeight: FontWeight.w100,
        ),
      ),

      Countries(),

      TextFormField(
        obscureText: isSecured,
        decoration: decoration,
        style: TextStyle(color: Colors.black, height: 2),
      ),
    ]);
  }

  InputDecoration get decoration {
    OutlineInputBorder outline() => OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(50.0),
          ),
          borderSide: new BorderSide(color: Colors.black),
        );

    Icon icon() => Icon(
          isSecured == true ? Icons.visibility_off : Icons.visibility,
          size: 25.0,
          color: Colors.black,
        );

    return InputDecoration(
      hintText: widget.hintText,
      hintStyle: TextStyle(color: Colors.black),
      filled: true,
      fillColor: Colors.white30,
      enabledBorder: outline(),
      prefixIcon: const Icon(
        Icons.lock,
        color: Colors.black,
      ),
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

class Countries extends StatefulWidget {
  @override
  _CountriesState createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  Country _selected;

  @override
  Widget build(BuildContext context) {
    return CountryPicker(
      dense: false,
      showFlag: true,
      showDialingCode: false,
      showName: false,
      showCurrency: false,
      showCurrencyISO: false,
      onChanged: (Country country) {
        setState(() {
          _selected = country;
        });
      },
      selectedCountry: _selected,
    );
  }
}
