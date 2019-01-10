import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyState();
  }
}

class _MyState extends State<My> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: Text("我的"),
      ),
    );
  }
}
