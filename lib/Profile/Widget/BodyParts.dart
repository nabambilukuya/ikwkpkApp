import 'package:flutter/material.dart';

// 1.standard textform field ---------------------------------------------------------------------------\
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
        style: TextStyle(color: Colors.black, height: 2, fontSize: 15));
  }
}


// 4.Ethnicity  ---------------------------------------------------------------------------\
class Ethnic extends StatefulWidget {
  final String hintText;

  Ethnic({this.hintText});

  @override
  EthnicState createState() => EthnicState();
}

class EthnicState extends State<Ethnic> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        DropdownButton<String>(
          items: [
            DropdownMenuItem<String>(
              child: Text('MALAY'),
              value: 'one',
            ),
            DropdownMenuItem<String>(
              child: Text('CHINESE'),
              value: 'two',
            ),
             DropdownMenuItem<String>(
              child: Text('INDIAN'),
              value: 'three',
            ),
             DropdownMenuItem<String>(
              child: Text('OTHERS'),
              value: 'four',
            ),
          ],
          onChanged: (String value) {
            setState(() {
              _value = value;
            });
          },
          hint: Text('ETHNICITY                                                     ',
          style: TextStyle(fontSize: 16, color: Colors.black),),
          
          value: _value,
        ),
        
      ],
    ));
  }

  
}
// 5. Marital status ---------------------------------------------------------------------------\
class Marital extends StatefulWidget {
  final String hintText;

  Marital({this.hintText});

  @override
  MaritalState createState() => MaritalState();
}

class MaritalState extends State<Marital> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        DropdownButton<String>(
          items: [
            DropdownMenuItem<String>(
              child: Text('SINGLE'),
            
              value: 'one',
            ),
            DropdownMenuItem<String>(
              child: Text('MARRIED'),
              value: 'two',
            ),
             DropdownMenuItem<String>(
              child: Text('OTHERS'),
              value: 'three',
            ),
             
          ],
          onChanged: (String value) {
            setState(() {
              _value = value;
            });
          },
          hint: Text('MARITAL STATUS                                         ',
          style: TextStyle(fontSize: 16, color: Colors.black),),
          
          value: _value,
        ),
        
      ],
    ));
  }

  
}
// 6. Work status ---------------------------------------------------------------------------\
class Work extends StatefulWidget {
  final String hintText;

  Work({this.hintText});

  @override
  WorkState createState() => WorkState();
}

class WorkState extends State<Work> {
  String _value;

  @override
  Widget build(BuildContext context) {
    
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        DropdownButton<String>(
          
          items: [
            DropdownMenuItem<String>(
              child: Text('SELF EMPLOYED'),
              value: 'one',
            ),
            DropdownMenuItem<String>(
              child: Text('NOT EMPLOYED'),
              value: 'two',
            ),
             DropdownMenuItem<String>(
              child: Text('EMPLOYED'),
              value: 'three',
            ),
            DropdownMenuItem<String>(
              child: Text('RETIRED'),
              value: 'four',
            ),
             
          ],
          onChanged: (String value) {
            setState(() {
              _value = value;
            });
          },
          hint: Text('WORK STATUS                                              ',
          style: TextStyle(fontSize: 16, color: Colors.black),),
          
          value: _value,
        ),
       
      ],
    ));
  }

  
}