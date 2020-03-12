import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.black,
    Colors.blue,
    Colors.brown,
    Colors.pinkAccent
  ];
  Random random = new Random();

  int index = 0;

  void _changeindex() {
    setState(() => index = random.nextInt(7));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('test app'),
        ),
        body: Stack(
          children: [
            Center(
              child: Text(
                'Hey there',
                style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              onTap: _changeindex,
            ),
          ],
        ),
        backgroundColor: colors[index],
      ),
    );
  }
}