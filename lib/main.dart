import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.deepPurpleAccent.shade400,
      ),
      body: Center(
        child: Container(
          child: Ball(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.purple,
                  Colors.blue,
                ]),
          ),
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/ball$ballNumber.png'),
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                  // print('I got clicked.');
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
