import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column & Row',
      home: Container(
        child: Center(
          child: Row(
          children:<Widget> [
            Container(color: Colors.blue, width: 100, height: 100),
            Container(color: Colors.red, width: 100, height: 100),
            ],
          ),
        ),
      ),
    );
  }
}