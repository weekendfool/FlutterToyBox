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
        primaryColor: Colors.black54,
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
          body: ListView(
            children: [
              _menuItem('$bookNameList[0]',Icon(Icons.settings)),
              _menuItem('$bookNameList[1]',Icon(Icons.settings)),
              _menuItem('$bookNameList[2]',Icon(Icons.settings)),
            ],
          ),
        ),
      ),
    );
  }
}