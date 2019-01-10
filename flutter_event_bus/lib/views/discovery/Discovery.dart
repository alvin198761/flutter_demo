import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Discovery extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _DiscoveryState();
  }
}

class _DiscoveryState extends State<Discovery> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child:  Text("发现")
      ),
    );
  }
}
