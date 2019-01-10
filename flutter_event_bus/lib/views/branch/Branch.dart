import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Branch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _BranchState();
  }
}

class _BranchState extends State<Branch> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child:  Text("门店"),
      ),
    );
  }
}
