import 'package:flutter/material.dart';
import 'package:ebook/components/drawer.dart';
import 'package:ebook/components/book_type.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: <Color>[Color.fromRGBO(0, 0, 0, 0.8), Colors.blue])),
        ),
      ),
      drawer: new DrawerBook(),
      body: Container(
        child:Types(),
      ),
    );
  }
}
