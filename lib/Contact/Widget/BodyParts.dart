//import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';

// 1. Standard textform Field ---------------------------------------------------------------------------\
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

// 2. Text Title ---------------------------------------------------------------------------\
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

// 3. COuntry List ---------------------------------------------------------------------------\

class Country extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  List<String> _locations = [
    'MALAYSIA',
    'AFGHANISTAN',
    'ALBANIA',
    'ALGERIA',
    'ANDORRA',
    'ANGOLA',
    'ANTIGUA AND BARBUDA',
    'ARGENTINA',
    'ARMENIA',
    'AUSTRALIA',
    'AUSTRIA',
    'AZERBAIJAN',
    'BAHAMAS',
    'BAHRAIN',
    'BANGLADESH',
    'BARBADOS',
    'BELARUS',
    'BELGIUM',
    'BELIZE',
    'BENIN',
    'BHUTAN',
    'BOLIVIA',
    'BOSNIA AND HERZEGOVINA',
    'BOTSWANA',
    'BRAZIL',
    'BRUNEI ',
    'BULGARIA',
    'BURKINA FASO',
    'BURUNDI',
    'CÔTE D IVOIRE ',
    'CABO VERDE',
    'CAMBODIA',
    'CAMEROON',
    'CANADA',
    'CENTRAL AFRICAN REPUBLIC',
    'CHAD',
    'CHILE',
    'CHINA',
    'COLOMBIA',
    'COMOROS',
    'CONGO (CONGO-BRAZZAVILLE)',
    'COSTA RICA',
    'CROATIA',
    'CUBA',
    'CYPRUS',
    'CZECHIA (CZECH REPUBLIC)',
    'DEMOCRATIC REPUBLIC OF THE CONGO',
    'DENMARK',
    'DJIBOUTI',
    'DOMINICA',
    'DOMINICAN REPUBLIC',
    'ECUADOR',
    'EGYPT',
    'EL SALVADOR',
    'EQUATORIAL GUINEA',
    'ERITREA',
    'ESTONIA',
    'ESWATINI ',
    'ETHIOPIA',
    'FIJI',
    'FINLAND',
    'FRANCE',
    'GABON',
    'GAMBIA',
    'GEORGIA',
    'GERMANY',
    'GHANA',
    'GREECE',
    'GRENADA',
    'GUATEMALA',
    'GUINEA',
    'GUINEA-BISSAU',
    'GUYANA',
    'HAITI',
    'HOLY SEE',
    'HONDURAS',
    'HUNGARY',
    'ICELAND',
    'INDIA',
    'INDONESIA',
    'IRAN',
    'IRAQ',
    'IRELAND',
    'ISRAEL',
    'ITALY',
    'JAMAICA',
    'JAPAN',
    'JORDAN',
    'KAZAKHSTAN',
    'KENYA',
    'KIRIBATI',
    'KUWAIT',
    'KYRGYZSTAN',
    'LAOS',
    'LATVIA',
    'LEBANON',
    'LESOTHO',
    'LIBERIA',
    'LIBYA',
    'LIECHTENSTEIN',
    'LITHUANIA',
    'LUXEMBOURG',
    'MADAGASCAR',
    'MALAWI',
    'MALDIVES',
    'MALI',
    'MALTA',
    'MARSHALL ISLANDS',
    'MAURITANIA',
    'MAURITIUS',
    'MEXICO',
    'MICRONESIA',
    'MOLDOVA',
    'MONACO',
    'MONGOLIA',
    'MONTENEGRO',
    'MOROCCO',
    'MOZAMBIQUE',
    'MYANMAR (FORMERLY BURMA)',
    'NAMIBIA',
    'NAURU',
    'NEPAL',
    'NETHERLANDS',
    'NEW ZEALAND',
    'NICARAGUA',
    'NIGER',
    'NIGERIA',
    'NORTH KOREA',
    'NORTH MACEDONIA',
    'NORWAY',
    'OMAN',
    'PAKISTAN',
    'PALAU',
    'PALESTINE STATE',
    'PANAMA',
    'PAPUA NEW GUINEA',
    'PARAGUAY',
    'PERU',
    'PHILIPPINES',
    'POLAND',
    'PORTUGAL',
    'QATAR',
    'ROMANIA',
    'RUSSIA',
    'RWANDA',
    'SAINT KITTS AND NEVIS',
    'SAINT LUCIA',
    'SAINT VINCENT AND THE GRENADINES',
    'SAMOA',
    'SAN MARINO',
    'SAO TOME AND PRINCIPE',
    'SAUDI ARABIA',
    'SENEGAL',
    'SERBIA',
    'SEYCHELLES',
    'SIERRA LEONE',
    'SINGAPORE',
    'SLOVAKIA',
    'SLOVENIA',
    'SOLOMON ISLANDS',
    'SOMALIA',
    'SOUTH AFRICA',
    'SOUTH KOREA',
    'SOUTH SUDAN',
    'SPAIN',
    'SRI LANKA',
    'SUDAN',
    'SURINAME',
    'SWEDEN',
    'SWITZERLAND',
    'SYRIA',
    'TAJIKISTAN',
    'TANZANIA',
    'THAILAND',
    'TIMOR-LESTE',
    'TOGO',
    'TONGA',
    'TRINIDAD AND TOBAGO',
    'TUNISIA',
    'TURKEY',
    'TURKMENISTAN',
    'TUVALU',
    'UGANDA',
    'UKRAINE',
    'UNITED ARAB EMIRATES',
    'UNITED KINGDOM',
    'UNITED STATES OF AMERICA',
    'URUGUAY',
    'UZBEKISTAN',
    'VANUATU',
    'VENEZUELA',
    'VIETNAM',
    'YEMEN',
    'ZAMBIA',
    'ZIMBABWE',
  ];
  String _selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        hint: Text(
            'COUNTRY                                                          ',
            style:
                TextStyle(color: Colors.black)), // Not necessary for Option 1
        value: _selectedLocation,
        onChanged: (newValue) {
          setState(() {
            _selectedLocation = newValue;
          });
        },
        items: _locations.map((location) {
          return DropdownMenuItem(
            child: new Text(location, style: TextStyle(color: Colors.black
            )),
            value: location,
          );
        }).toList(),
      ),
    );
  }
}

// 4. STATE status ---------------------------------------------------------------------------\

class States extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StatesState();
}

class _StatesState extends State<States> {
  List<String> _locations = [
    'FEDERAL TERRITORY OF KUALA LUMPUR',
    'FEDERAL TERRITORY OF LABUAN',
    'FEDERAL TERRITORY OF PUTRAJAYA',
    'JOHOR',
    'KEDAH',
    'KELANTAN',
    'MALACCA',
    'NEGERI SEMBILAN',
    'PAHANG',
    'PERAK ',
    'PERLIS',
    'PENANG',
    'SABAH',
    'SARAWAK',
    'SELANGOR ',
    'TERENGGANU',
  ];
  String _selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        hint: Text(
            'STATES                                                              ',
            style:
                TextStyle(color: Colors.black)), // Not necessary for Option 1
        value: _selectedLocation,
        onChanged: (newValue) {
          setState(() {
            _selectedLocation = newValue;
          });
        },
        items: _locations.map((location) {
          return DropdownMenuItem(
            child: new Text(location, style: TextStyle(color: Colors.black)),
            value: location,
          );
        }).toList(),
      ),
    );
  }
}

// 5. CITY status ---------------------------------------------------------------------------\
class City extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CityState();
}

class _CityState extends State<City> {
  List<String> _locations = [
    'KUCHING',
    'MIRI',
    'SIBU',
    'BINTULU',
    'KAPIT',
    'KOTA SAMARAHAN',
    'SRI AMAN',
    'SERIAN',
    'MUKAH',
    'LIMBANG',
    'SARIKEI',
    'BAU',
    'MUKAH',
    'BELAGA',
    'MARUDI',
    'LAWAS',
    'LUNDU',
    'BETONG',
    'SAMARAHAN',
    'MIRI',
    'SIMUNJAN',
    'LIMBANG',
    'SARATOK',
    'LUBOK ANTU',
    'DARO',
    'JULAU',
    'MATU',
    'SEBUYAU',
    'SIBU',
    'DALAT',
    'SIBURAN',
    'ASAJAYA',
    'SRI AMAN',
    'KANOWIT',
    'KAPIT',
    'SARIKEI',
    'ENGKILILI',
    'BINTANGOR',
    'SONG',
    'SEMATAN',
    'LUTONG',
    'MERADONG',
    'BARIO',
    'PUSA',
    'BINTULU',
    'BETONG',
    'TEBEDU',
    'PAKAN ',
  ];
  String _selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        hint: Text(
            'CITY                                                                    ',
            style:
                TextStyle(color: Colors.black)), // Not necessary for Option 1
        value: _selectedLocation,
        onChanged: (newValue) {
          setState(() {
            _selectedLocation = newValue;
          });
        },
        items: _locations.map((location) {
          return DropdownMenuItem(
            child: new Text(location, style: TextStyle(color: Colors.black)),
            value: location,
          );
        }).toList(),
      ),
    );
  }
}

// . Gender ---------------------------------------------------------------------------\

class Gender extends StatefulWidget {
  final String hintText;

  Gender({this.hintText});

  @override
  GenderState createState() => GenderState();
}

class GenderState extends State<Gender> {
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
              child: Text('MALE'),
              value: 'one',
            ),
            DropdownMenuItem<String>(
              child: Text('FEMALE'),
              value: 'two',
            ),
          
          ],
          onChanged: (String value) {
            setState(() {
              _value = value;
            });
          },
          hint: Text('GENDER                                                          ',
          style: TextStyle(fontSize: 16, color: Colors.black),),
          
          value: _value,
        ),
        
      ],
    ));
  }

}