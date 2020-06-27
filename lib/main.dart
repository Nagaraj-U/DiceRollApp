import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

//class DicePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    var leftButton=2;
//    var rightButton=3;
//    return Center(
//      child: Row(
//        children: <Widget>[
//          Expanded(
//            child: FlatButton(
//              onPressed: (){
//                print('left button presses');
//              },
//              child: Image(
//                image: AssetImage('images/dice$leftButton.png'),
//              ),
//            ),
//          ),
//
//          Expanded(
//            child: FlatButton(
//              onPressed: (){
//                print('right button pressed');
//              },
//              child: Image(
//                image: AssetImage('images/dice$rightButton.png'),
//              ),
//            ),
//          ),
//
//        ],
//      ),
//    );
//  }
//}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButton=1;
  int rightButton=1;

  void diceFaceChange(){
    setState(() {
      rightButton=Random().nextInt(5) + 1;
      leftButton=Random().nextInt(5) + 1;
      //print('right button pressed');
    });

  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){

                diceFaceChange();

              },
              child: Image(
                image: AssetImage('images/dice$leftButton.png'),
              ),
            ),
          ),

          Expanded(
            child: FlatButton(
              onPressed: (){
                  diceFaceChange();
              },
              child: Image(
                image: AssetImage('images/dice$rightButton.png'),
              ),
            ),
          ),

        ],
      ),
    );
  }
  }

