import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blueGrey,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int numberLeft = 1;
  int numberRight = 1;

  void changeDice() {
    setState(() {
      numberLeft = Random().nextInt(5) + 1;
      numberRight = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/dice$numberLeft.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/dice$numberRight.png'),
            ),
          ),
        ],
      ),
    );
  }
}
