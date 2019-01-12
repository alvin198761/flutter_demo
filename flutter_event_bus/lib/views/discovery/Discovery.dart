import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_event_bus/api/NewsApi.dart';
import 'package:flutter_event_bus/stores/NewsBean.dart';

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
    return new MaterialApp(
        theme: new ThemeData(primaryColor: Colors.white),
        home: Scaffold(
            appBar: AppBar(
              title: Text("表单测试"),
            ),
            body: Center(
              child: Form(
                  child: Column(
                children: <Widget>[
                  TextFormField(),
                  RadioListTile(
                    value: false,
                    groupValue: "aaa",
                    onChanged: null,
                    title: Text("asdf"),
                  ),
                  RaisedButton(
                    child: Text("提交"),
                    onPressed: () {
                      NewsBean bean = new NewsBean(
                          title: "title",
                          url: "url",
                          clickCount: 1,
//                          time: DateTime.now(),
                          mark: 1,
                          icon: "icon");
                      NewsApi.save(bean);
                    },
                  )
                ],
              )),
            )));
  }
}
