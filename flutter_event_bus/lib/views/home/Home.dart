import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_event_bus/views/branch/Branch.dart';
import 'package:flutter_event_bus/views/discovery/Discovery.dart';
import 'package:flutter_event_bus/views/my/My.dart';
import 'package:flutter_event_bus/views/overview/Overview.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final _tabPageViews = [Overview(), Branch(), Discovery(), My()];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: _tabPageViews.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
              backgroundColor: Colors.black12),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user),
              title: Text('门店'),
              backgroundColor: Colors.black12),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('发现'),
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
