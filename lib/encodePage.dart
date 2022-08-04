import 'dart:core';

import 'package:flutter/material.dart';

class EncodedPage extends StatefulWidget {
  @override
  _EncodedPageState createState() {
    return _EncodedPageState();
  }
}

class _EncodedPageState extends State<EncodedPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Szyfruj',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyEncodedPage(title: 'Szyfruj'),
    );
  }
}

class MyEncodedPage extends StatefulWidget {
  const MyEncodedPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyEncodedPage> createState() => _MyEncodedPageState();
}

class _MyEncodedPageState extends State<MyEncodedPage> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
        child: Text("GA-DE-RY-PO-LU-KI"),
        value: "GADERY",
      ),
      DropdownMenuItem(
        child: Text("PO-LI-TY-KA-RE-NU"),
        value: "POLITYKA",
      ),
      DropdownMenuItem(
        child: Text("MA-LI-NO-WE-BU-TY"),
        value: "MALINOWE",
      ),
      DropdownMenuItem(
        child: Text("NO-WE-BU-TY-LI-SA"),
        value: "BUTY",
      ),
      DropdownMenuItem(
        child: Text("KO-NI-EC-MA-TU-RY"),
        value: "MATURA",
      ),
      DropdownMenuItem(
        child: Text("KA-CE-MI-NU-TO-WY"),
        value: "KACE",
      ),
      DropdownMenuItem(
        child: Text("MO-TY-LE-CU-DA-KI"),
        value: "MOTYLE",
      ),
    ];
    return menuItems;
  }

  @override
  void initState() {
    super.initState();
    _codedWordControler.text = "";
  }

  final _wordControler = TextEditingController();
  final _codedWordControler = TextEditingController();
  String selectedValue = "GADERY";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _wordControler,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                hintText: "Wiadomość do zaszyfrowania",
              ),
            ),
            Container(
              height: 5,
            ),
            Row(
              children: [
                DropdownButton(
                    value: selectedValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue!;
                      });
                    },
                    items: dropdownItems),
                Container(
                  width: 20,
                ),
                _NoteButton("SZYFRUJ", Colors.deepPurple, _coded),
              ],
            ),
            Container(
              height: 5,
            ),
            TextField(
              readOnly: true,
              controller: _codedWordControler,
              decoration: InputDecoration(
                hintText: "",
              ),
              style: TextStyle(fontSize: 30),
              maxLines: null,
            ),
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.arrow_back),
      ),*/
    );
  }

  void _codeGadery(String text) {
    String message = text.toUpperCase();
    _codedWordControler.text = message
        .replaceAll('A', '*')
        .replaceAll('G', 'A')
        .replaceAll('*', 'G')
        .replaceAll('D', '*')
        .replaceAll('E', 'D')
        .replaceAll('*', 'E')
        .replaceAll('R', '*')
        .replaceAll('Y', 'R')
        .replaceAll('*', 'Y')
        .replaceAll('P', '*')
        .replaceAll('O', 'P')
        .replaceAll('*', 'O')
        .replaceAll('L', '*')
        .replaceAll('U', 'L')
        .replaceAll('*', 'U')
        .replaceAll('K', '*')
        .replaceAll('I', 'K')
        .replaceAll('*', 'I');
  }

  void _codePolityka(String text) {
    String message = text.toUpperCase();
    _codedWordControler.text = message
        .replaceAll('P', '*')
        .replaceAll('O', 'P')
        .replaceAll('*', 'O')
        .replaceAll('L', '*')
        .replaceAll('I', 'L')
        .replaceAll('*', 'I')
        .replaceAll('T', '*')
        .replaceAll('Y', 'T')
        .replaceAll('*', 'Y')
        .replaceAll('K', '*')
        .replaceAll('A', 'K')
        .replaceAll('*', 'A')
        .replaceAll('R', '*')
        .replaceAll('E', 'R')
        .replaceAll('*', 'E')
        .replaceAll('N', '*')
        .replaceAll('U', 'N')
        .replaceAll('*', 'U');
  }

  void _codeMalinowe(String text) {
    String message = text.toUpperCase();
    _codedWordControler.text = message
        .replaceAll('M', '*')
        .replaceAll('A', 'M')
        .replaceAll('*', 'A')
        .replaceAll('L', '*')
        .replaceAll('I', 'L')
        .replaceAll('*', 'I')
        .replaceAll('N', '*')
        .replaceAll('O', 'N')
        .replaceAll('*', 'O')
        .replaceAll('W', '*')
        .replaceAll('E', 'W')
        .replaceAll('*', 'E')
        .replaceAll('B', '*')
        .replaceAll('U', 'B')
        .replaceAll('*', 'U')
        .replaceAll('T', '*')
        .replaceAll('Y', 'T')
        .replaceAll('*', 'Y');
  }

  void _codeButy(String text) {
    String message = text.toUpperCase();
    _codedWordControler.text = message
        .replaceAll('N', '*')
        .replaceAll('O', 'N')
        .replaceAll('*', 'O')
        .replaceAll('W', '*')
        .replaceAll('E', 'W')
        .replaceAll('*', 'E')
        .replaceAll('B', '*')
        .replaceAll('U', 'B')
        .replaceAll('*', 'U')
        .replaceAll('T', '*')
        .replaceAll('Y', 'T')
        .replaceAll('*', 'Y')
        .replaceAll('L', '*')
        .replaceAll('I', 'L')
        .replaceAll('*', 'I')
        .replaceAll('S', '*')
        .replaceAll('A', 'S')
        .replaceAll('*', 'A');
  }

  void _codeMatura(String text) {
    String message = text.toUpperCase();
    _codedWordControler.text = message
        .replaceAll('K', '*')
        .replaceAll('O', 'K')
        .replaceAll('*', 'O')
        .replaceAll('N', '*')
        .replaceAll('I', 'N')
        .replaceAll('*', 'I')
        .replaceAll('E', '*')
        .replaceAll('C', 'E')
        .replaceAll('*', 'C')
        .replaceAll('M', '*')
        .replaceAll('A', 'M')
        .replaceAll('*', 'A')
        .replaceAll('T', '*')
        .replaceAll('U', 'T')
        .replaceAll('*', 'U')
        .replaceAll('R', '*')
        .replaceAll('Y', 'R')
        .replaceAll('*', 'Y');
  }

  void _codeKace(String text) {
    String message = text.toUpperCase();
    _codedWordControler.text = message
        .replaceAll('K', '*')
        .replaceAll('A', 'K')
        .replaceAll('*', 'A')
        .replaceAll('C', '*')
        .replaceAll('E', 'C')
        .replaceAll('*', 'E')
        .replaceAll('M', '*')
        .replaceAll('I', 'M')
        .replaceAll('*', 'I')
        .replaceAll('N', '*')
        .replaceAll('U', 'N')
        .replaceAll('*', 'U')
        .replaceAll('T', '*')
        .replaceAll('O', 'T')
        .replaceAll('*', 'O')
        .replaceAll('W', '*')
        .replaceAll('Y', 'W')
        .replaceAll('*', 'Y');
  }

  void _codeMotyle(String text) {
    String message = text.toUpperCase();
    _codedWordControler.text = message
        .replaceAll('M', '*')
        .replaceAll('O', 'M')
        .replaceAll('*', 'O')
        .replaceAll('T', '*')
        .replaceAll('Y', 'T')
        .replaceAll('*', 'Y')
        .replaceAll('L', '*')
        .replaceAll('E', 'L')
        .replaceAll('*', 'E')
        .replaceAll('C', '*')
        .replaceAll('U', 'C')
        .replaceAll('*', 'U')
        .replaceAll('D', '*')
        .replaceAll('A', 'D')
        .replaceAll('*', 'A')
        .replaceAll('K', '*')
        .replaceAll('I', 'K')
        .replaceAll('*', 'I');
  }

  void _coded() {
    //print(selectedValue);
    if (selectedValue == "GADERY") {
      _codeGadery(_wordControler.text);
    } else if (selectedValue == "POLITYKA") {
      _codePolityka(_wordControler.text);
    } else if (selectedValue == "MALINOWE") {
      _codeMalinowe(_wordControler.text);
    } else if (selectedValue == "BUTY") {
      _codeButy(_wordControler.text);
    } else if (selectedValue == "MATURA") {
      _codeMatura(_wordControler.text);
    } else if (selectedValue == "KACE") {
      _codeKace(_wordControler.text);
    } else if (selectedValue == "MOTYLE") {
      _codeMotyle(_wordControler.text);
    }
  }
}

class _NoteButton extends StatelessWidget {
  final String _text;
  final Color _color;
  final Function() _onPressed;
  _NoteButton(this._text, this._color, this._onPressed);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: _onPressed,
      child: Text(
        _text,
        style: TextStyle(color: Colors.white),
      ),
      height: 30,
      minWidth: 80,
      color: _color,
    );
  }
}
