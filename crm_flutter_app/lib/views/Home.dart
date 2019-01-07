import 'package:crm_flutter_app/views/community/CommunityPage.dart';
import 'package:crm_flutter_app/views/discovery/DiscoveryPage.dart';
import 'package:crm_flutter_app/views/my/MyPage.dart';
import 'package:crm_flutter_app/views/sport/SportPage.dart';
import 'package:flutter/material.dart';

//首页状态
class Home extends StatefulWidget {
  final Function toHome;

  Home(this.toHome);

  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

//首页页面
class _HomePageState extends State<Home> {
  int _selectedIndex = 0;

  final _tabPageViews = [
    SportPage(),
    DiscoveryPage(),
    CommunityPage(),
    MyPage()
  ];

  @override
  Widget build(BuildContext context) {
    print(_tabPageViews);
    return Scaffold(
//      appBar: AppBar(
//        title: Text('BottomNavigationBar Sample'),
//      ),
      body: _tabPageViews.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('运动'),
              backgroundColor: Colors.black12),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user),
              title: Text('发现'),
              backgroundColor: Colors.black12),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('社区'),
              backgroundColor: Colors.black12),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('我'),
              backgroundColor: Colors.black12),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
