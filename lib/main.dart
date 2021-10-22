import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text('2 Dice')),
        backgroundColor: Colors.black,
      ),
      body: ChangeDice(),
      backgroundColor: Colors.black26,
    ),
  ));
}

class ChangeDice extends StatefulWidget {
  @override
  _ChangeDiceState createState() => _ChangeDiceState();
}

class _ChangeDiceState extends State<ChangeDice> {
  @override
  int ldn = 1;
  int rdn = 1;
  void rollDice() {
    setState(() {
      ldn = Random().nextInt(6) + 1;
      rdn = Random().nextInt(6) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: FlatButton(
                onPressed: () {
                  rollDice();
                },
                child: Image.asset('images/dice$ldn.png')),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  rollDice();
                },
                child: Image.asset('images/dice$rdn.png')),
          ),
        ],
      ),
    );
  }
}
