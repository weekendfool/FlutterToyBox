//　パッケージのインストール
import 'package:flutter/material.dart';

//　メイン関数、返り値なし
void main() {
  // myappの起動
  runApp(MyApp());
}

// MyAppの宣言
// StatelessWidgetを継承している
class MyApp extends StatelessWidget {
  @override
  // 大元となるウィジェットのビルド
  //　ビルドメソッド
  Widget build(BuildContext context) {
    //　ウィジェットツリーを返す
    return MaterialApp(
      // 大枠ウィジェットのタイトル
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      // MyHomePageをホームに指定
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// StateFulWidgetを継承して作成
//　基本的なものは全てcreateStateで指定した関数に実装する
class MyHomePage extends StatefulWidget {
  // コンストラクター
  MyHomePage({Key key, this.title}) : super(key: key);

  // 受け取った文字を格納する変数の宣言
  final String title;

  @override
  //　関数
  //　返り値は_MyHomePageState
  State<StatefulWidget> createState() => _MyHomePageState();
}

// stateを継承したクラス
//　状態を保持する、更新する機能を持つ
class _MyHomePageState extends State<MyHomePage> {

  //　状態の保持と更新を記録する変数の宣言
  int _counter = 0;

  // 関数の宣言、戻り値なし
  void _incounterCounter() {
    //　setStateで囲むことでUIに変更を伝達するルール
    setState(() {
      // _counterに一加算する
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incounterCounter,
        tooltip: 'Incount',
        child: Icon(Icons.add)
      ),
    );
  }
}