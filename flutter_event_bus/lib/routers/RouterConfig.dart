import 'package:flutter/material.dart';
import 'package:flutter_event_bus/views/branch/Branch.dart';
import 'package:flutter_event_bus/views/discovery/Discovery.dart';
import 'package:flutter_event_bus/views/home/Home.dart';
import 'package:flutter_event_bus/views/login/Login.dart';
import 'package:flutter_event_bus/views/my/My.dart';
import 'package:flutter_event_bus/views/overview/Overview.dart';
import 'package:flutter_event_bus/views/overview/SearchPage.dart';

Map<String, WidgetBuilder> getRoutes(context) {
  return {
    "/": (BuildContext context) => Home(),
    "/login": (BuildContext context) => Login(),
    "/overview": (BuildContext context) => Overview(),
    "/overview/search" : (BuildContext context) => SearchPage(),
    "/overview/add" : (BuildContext context) => SearchPage(),
    "/discovery": (BuildContext context) => Discovery(),
    "/my": (BuildContext context) => My(),
    "/branch": (BuildContext context) => Branch(),


  };
}
