import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alignment',
      home: Center(
        child: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Container(color: Colors.blue, width: 50, height: 50),
              Container(color: Colors.red, width: 50, height: 50),
              Container(color: Colors.green, width: 50, height: 50),
              Container(color: Colors.orange, width: 50, height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(Buildcontext context) {
    
  }
}