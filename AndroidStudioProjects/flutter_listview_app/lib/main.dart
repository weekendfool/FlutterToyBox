import 'package:flutter/material.dart';

void main() {
  runApp(MyApp4());
}

class MyApp extends StatelessWidget {
  @override
  //　大枠のビルド
  Widget build(BuildContext context) {
    //　リストに表示するデータの配列の格納と宣言
    const data = [
      Text("item0"), Text("item1"), Text("item2"), Text("item3"), Text("item4")
    ];
    //　画面表示する部分？
    return MaterialApp(
      home: Scaffold(
        //　listの実装部分
          body: ListView(
            //　リストの持つデータとして、dataを指定
            children: data
          ),
        ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: ListView(
          children: [
            _menuItem("メニュー1", Icon(Icons.settings)),
            _menuItem("メニュー2", Icon(Icons.map)),
            _menuItem("メニュー3", Icon(Icons.room)),
            _menuItem("メニュー4", Icon(Icons.local_shipping)),
            _menuItem("メニュー5", Icon(Icons.airplanemode_active)),
          ],
        ),
      ),
    );
  }

  Widget _menuItem(String title, Icon icon) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: new BoxDecoration(
          border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))
        ),
        child: Row(
          children: <Widget> [
            Container(
              margin: EdgeInsets.all(10.0),
              child: icon,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        print("onTap called.");
      },
    );
  }
}

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: ListView(
          children: [
            _menuItem("メニュー1", Icon(Icons.settings)),
            _menuItem("メニュー2", Icon(Icons.map)),
            _menuItem("メニュー3", Icon(Icons.room)),
            _menuItem("メニュー4", Icon(Icons.local_shipping)),
            _menuItem("メニュー5", Icon(Icons.airplanemode_active)),
          ],
        ),
      ),
    );
  }

  Widget _menuItem(String title, Icon icon) {
    return Container(
      decoration: new BoxDecoration(
        border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))
      ),
      child: ListTile(
        leading: icon,
        title: Text(
        title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0
          ),
          ),
        onTap: () {
          print("onTap called.");
        },
        onLongPress: () {
          print("onLongPress called.");
        },
      ),
    );
  }
}

class MyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = ["メッセージ0", "メッセージ1", "メッセージ2", "メッセージ3", "メッセージ4", "メッセージ5", "メッセージ6"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            if (index >= list.length) {
              list.addAll(["メッセージ0", "メッセージ1", "メッセージ2", "メッセージ3", "メッセージ4", "メッセージ5", "メッセージ6"]);
            }
            return _messageItem(list[index]);
          },
        ),
      ),
    );
  }

  Widget _messageItem(String title) {
    return Container(
      decoration: new BoxDecoration(
        border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0
          ),
        ),
        onTap: () {
          print('onTap called');
        },
        onLongPress: () {
          print('onLongPress called');
        }
      ),
    );
  }
}