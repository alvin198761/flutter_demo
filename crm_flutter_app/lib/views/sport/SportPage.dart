import 'package:crm_flutter_app/views/sport/AddPage.dart';
import 'package:crm_flutter_app/views/sport/SearchPage.dart';
import 'package:crm_flutter_app/views/sport/TestTabView.dart';
import 'package:flutter/material.dart';

class SportPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _SportPageState();
  }
}

class _SportPageState extends State<SportPage> {
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
    print("查询");
    Navigator.push<String>(context,
        new MaterialPageRoute(builder: (BuildContext context) {
      return new SearchPage();
    })).then((String result) {});
  }

  void _addPressed() {
    print("添加");
    Navigator.push<String>(context,
        new MaterialPageRoute(builder: (BuildContext context) {
      return new AddPage();
    })).then((String result) {});
  }
}
