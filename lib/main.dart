import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyanAccent,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.cyan,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void stateChanger(){
    leftDiceNumber=Random().nextInt(6)+1;
    rightDiceNumber=Random().nextInt(6)+1;
  }
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children:<Widget> [Expanded(
          child: FlatButton(
              onPressed: (){
                setState(() {
                 stateChanger();
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png')),

        ),

          Expanded(child:
          FlatButton(
              onPressed: (){
                setState(() {
                   stateChanger();
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png')),

          )
        ],
      ),
    );
  }
}






