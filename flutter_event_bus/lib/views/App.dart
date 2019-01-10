import 'package:flutter/material.dart';
import 'package:flutter_event_bus/routers/RouterConfig.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _AppState();
  }
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: new ThemeData(primaryColor: Colors.white),
      routes: getRoutes(context),
      initialRoute: '/login',
    );
  }
}
