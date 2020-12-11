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
           //　表示されている四角形のウィジェット
          child: Container (
            //　色の設定
            color: Colors.blue,
            //　面積の設定
            width: 300.0,
            height: 300.0,
            //　textの設定
            child: Text('冷やし中華始めました'),
              //　場所の指定
            margin: const EdgeInsets.all(50.0),
          ),
        ),
      ),
    );

  }
}