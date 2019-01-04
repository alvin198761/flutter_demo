import 'package:flutter/material.dart';

class TestTabView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _TestTabView();
  }
}

class _TestTabView extends State<TestTabView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(itemCount: 30, itemBuilder: listItemBuild);
  }

  Widget listItemBuild(BuildContext context, int index) {
    //设置分割线
    if (index.isOdd) return new Divider();
    //设置字体样式
    TextStyle textStyle =
        new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0);
    //设置Padding
    return new Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("列表项 $index", style: textStyle));
  }
}
