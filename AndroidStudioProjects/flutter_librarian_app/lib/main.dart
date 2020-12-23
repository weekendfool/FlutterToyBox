import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MHT Librarian',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: MHTLibrarian(),
    );
  }
}

class MHTLibrarian extends StatefulWidget {



  @override
  State<StatefulWidget>  createState() => _MHTLibrarianState();
}

class _MHTLibrarianState extends State<MHTLibrarian> {
  //　図書名のリスト
  var bookNameList = ['book1', 'book2', 'book3'];
  // メンバー名のリスト
  var memberNameList = ['member1', 'member2', 'member3'];
  // クリアした課題を格納する変数
  var readBooksList = [];
  void _readBookCounter() {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'MHTLibrarian',
          ),
        ),
          body: ListView(
            children: [
              _menuItem('$bookNameList[0]',Icon(Icons.settings)),
              _menuItem('$bookNameList[1]',Icon(Icons.settings)),
              _menuItem('$bookNameList[2]',Icon(Icons.settings)),
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
          border: new Border(bottom: BorderSide(width: 1.0, color: Colors.black))
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
    );
  }
}