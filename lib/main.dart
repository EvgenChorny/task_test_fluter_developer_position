import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(TestTask());
}

class TestTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color randomColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: randomColor,
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: colorChanger,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Hey there'),
            ],
          ),
        ),
      ),
    );
  }

  colorChanger() {
    setState(() {
      randomColor = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }
}
