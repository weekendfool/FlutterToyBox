// ダートのインポート
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

//　メイン関数の実行
void main() {
  runApp(MyApp());
}

// メインクラスの作成
class MyApp extends StatelessWidget{
  @override
  // 一番大枠のウィジェット作成
  Widget build(BuildContext context) {
    return Container (
      // 背景色決定
      decoration: BoxDecoration(color: Colors.blue),
      child: Center (
        // text担当ウィジェット
        child: Text(
        '冷やし中華始めました',
        textDirection: TextDirection.ltr,
        style: TextStyle(
        fontSize: 32,
        color: Colors.black,
          ),
        ),
      ),
    );
  }
}