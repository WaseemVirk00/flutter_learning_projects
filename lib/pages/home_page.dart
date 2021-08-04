import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Change me";

  void _changeText() {
    myText = Random().nextInt(10).toString();
    setState(() {});
  }

  Widget _bodyWidget() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                myText,
                style: new TextStyle(
                  fontSize: 22.0,
                ),
              ),
              // new RaisedButton(
              //   child: new Text(
              //     "Click",
              //     style: new TextStyle(
              //       color: Colors.white,
              //       fontSize: 20.0,
              //     ),
              //   ),
              //   onPressed: _changeText,
              //   color: Colors.redAccent,
              // )
            ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
        centerTitle: true,
      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add), onPressed: _changeText),
    );
  }
}
