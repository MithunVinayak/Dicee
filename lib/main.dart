import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  void randomNumber(){
    setState(() {
      LeftButtonNumber=Random().nextInt(6)+1;
      RightButtonNumber=Random().nextInt(6)+1;
    });
  }
  @override
  int LeftButtonNumber = 1 ;
  int RightButtonNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                randomNumber();
              },
              child: Image.asset('images/dice$LeftButtonNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                randomNumber();
              },
              child: Image.asset('images/dice$RightButtonNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
