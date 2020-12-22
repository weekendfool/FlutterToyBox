import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue[500],
      ),
      home: MyHomePage(title: 'Flutter Calculator Sample'),
    );
  }
}

class MyHomePage extends StateFulWidget {

  MyHomePage({Key key})
}