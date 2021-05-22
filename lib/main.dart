import 'package:flutter/material.dart';
import 'dart:math';//it contains maths function and random number generator
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dice')),
          backgroundColor: Colors.teal,
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeDiceFace()
  {
    setState(() {
      rightDiceNumber= Random().nextInt(6)+1;
      leftDiceNumber= Random().nextInt(6)+1;//by default range = (0 to max-1)
    });
  }
  @override
  Widget build(BuildContext context) {
    //variable created

    return Center(
      child: Row(
        children: <Widget>[


          Expanded(
            flex: 1,//value of flex is by default one
            child: FlatButton(
                onPressed: (){

                changeDiceFace();
                },//void callback
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: (){
                  changeDiceFace();
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          ),
        ],
      ),
    );
  }
}


