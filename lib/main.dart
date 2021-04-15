import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first flutter App'),
          backgroundColor: Colors.deepPurple[700],
        ),
        backgroundColor: Colors.blue[200],
        body: Center(
          child: Image(
            image: AssetImage('assets/tux_sleeping.png'),
          ),
        ),
      ),
    );
  }
}
