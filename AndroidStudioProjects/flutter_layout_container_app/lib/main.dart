import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    // 大枠ウィジェットのタイトル？
    title: 'Flutter Material Design',
        home: Scaffold(
         body: Center(
          child: Container (
            color: Colors.blue,
            width: 300.0,
        height: 300.0,
          ),
        ),
      ),
    );

  }
}