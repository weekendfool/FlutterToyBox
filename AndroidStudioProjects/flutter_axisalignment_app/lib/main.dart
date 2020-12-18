import 'package:flutter/material.dart';

void main() {
  runApp(MyApp6());
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alignment2',
        home: Center(
          child: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
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
class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alignment3',
      home: Center(
          child: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

class MyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MainAxisSize',
      home: Center(
        child: Container(
          color: Colors.white,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Container(color: Colors.blue, width: 50 ,height: 50),
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

class MyApp5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MainAxisSize',
      home: Center(
        child: Container(
          color: Colors.white,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
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

class MyApp6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expanded',
      home: Container(
        child: Row(
          children: <Widget> [
            Expanded(
                child: Container(color: Colors.blue),
            ),
            Expanded(
              child: Container(color: Colors.red),
            ),
            Expanded(
              child: Container(color: Colors.green),
            ),
            Expanded(
              child: Container(color: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}