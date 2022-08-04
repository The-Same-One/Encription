import 'dart:core';

import 'package:flutter/material.dart';
import 'package:szyfry/encodePage.dart';

import 'decodePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikacja szyfrująca',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Aplikacja szyfrująca'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _NoteButton(
                "SZYFRUJ",
                Colors.deepPurple,
                () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EncodedPage()))),
            Container(
              height: 15,
            ),
            _NoteButton(
                "ODSZYFRUJ",
                Colors.deepPurple,
                () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DecodedPage())))
          ],
        ),
      ),
    );
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
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
      height: 50,
      minWidth: 200,
      color: _color,
    );
  }
}
