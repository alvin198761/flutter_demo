import 'package:crm_flutter_app/beans/UserInfo.dart';
import 'package:crm_flutter_app/views/Home.dart';
import 'package:crm_flutter_app/views/login/Login.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _AppState();
  }
}

class _AppState extends State<App> {
  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: Colors.grey[100],
        primaryColorBrightness: Brightness.light,
      ),
      home: createHomePage(),
      routes: {},
    );
  }

  Widget createHomePage() {
    if (isLogin == false) {
      return Login(toHome);
    } else {
      return Home(toHome);
    }
  }

  void toHome(UserInfo userInfo) {
    setState(() {
      isLogin = true;
    });
  }
}
