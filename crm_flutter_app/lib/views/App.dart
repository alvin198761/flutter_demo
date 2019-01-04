import 'package:crm_flutter_app/views/Home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//        primaryColor: Colors.white,
//        primaryColorBrightness: Brightness.dark,

        primarySwatch: Colors.orange,
        primaryColor: Colors.grey[100],
        primaryColorBrightness: Brightness.light,

      ),
      home: Home(),
      routes: {
//        "searchPage" : (BuildContext context) => new SearchPage()
//        "nameRoute":(BuildContext context)=>new SecondPage(),
      },
    );
  }
}
