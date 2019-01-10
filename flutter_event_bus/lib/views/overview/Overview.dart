import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_event_bus/views/overview/AddPage.dart';
import 'package:flutter_event_bus/views/overview/SearchPage.dart';
import 'package:flutter_event_bus/views/overview/TestTabView.dart';

class Overview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _OverviewState();
  }
}

class _OverviewState extends State<Overview> {
  final List<Tab> _tabs = [
    Tab(text: "计划"),
    Tab(text: "首页"),
    Tab(text: "健身"),
    Tab(text: "跑步"),
    Tab(text: "KIT"),
    Tab(text: "瑜伽"),
    Tab(text: "行走"),
    Tab(text: "骑行")
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: DefaultTabController(
          length: _tabs.length,
          child: Scaffold(
            appBar: AppBar(
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: _searchPressed,
                  tooltip: '查询',
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _addPressed,
                  tooltip: '添加',
                )
              ],
              title: Text("运动"),
              bottom: new TabBar(
                tabs: _tabs,
                isScrollable: true,
              ),
            ),
            body: new TabBarView(
                children: _tabs.map((Tab tab) {
                  return TestTabView();
                }).toList()),
          )),
    );
  }

  void _searchPressed() {
    Navigator.pushNamed(context,"/overview/search");
  }

  void _addPressed() {
    Navigator.pushNamed(context,"/overview/add");
  }
}
