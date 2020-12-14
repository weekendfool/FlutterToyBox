import 'package:flutter/material.dart';

void main() {
  runApp(MyApp2());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row',
      home: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
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

class MyApp2 extends StatelessWidget {
  @override
  // 大枠のウィジェット作成
  Widget build(BuildContext context) {
    // 戻り値として作成したウィジェットを返す？
    return MaterialApp(
      //　ウィジェットの名前
      title: 'Column',
      // 大元になる形式？
      home: Container(
        // 子要素、場所の指定
        child: Center(
          // 子要素、形式の指定
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // 子要素の子要素、何個ウィジェットを持つかを配列で指定
            children:<Widget>[
              // Column内のContainerの詳細を設定
              Container(color: Colors.blue, width: 100, height: 100),
              Container(color: Colors.red, width: 100, height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp3 extends StatelessWidget {
  @override
  // 大枠のウィジェット作成
  Widget build(BuildContext context) {
    //　戻り値として大枠ウィジェットを返す？
    return MaterialApp(
      // 大枠のウィジェットのタイトル
      title: 'Column & Row',
      // 大枠ウィジェットの形式
      home: Container(
        // 子要素１の形式指定
        child: Row(
          // 子要素１の子要素を配列で作成
          children: <Widget>[
            // 子要素１の子要素１の形式指定
          Column(
            // 子要素１の子要素１の子要素を配列に格納
          children: <Widget>[
            // 子要素１の子要素１の子要素の詳細実装
            Container(color: Colors.blue, width: 100, height: 100),
            Container(color: Colors.red, width: 100, height: 100),
          ],
        ),
            // 子要素１の子要素２の子要素を配列に格納
        Column(
          children: <Widget>[
            // 子要素１の子要素２の子要素の詳細実装
            Container(color: Colors.green, width: 100, height: 100),
            Container(color: Colors.orange, width:100, height: 100),
          ],
        ),
        ],
        ),
      ),
    );
  }
}
