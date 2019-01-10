import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_event_bus/stores/Core.dart';
import 'package:flutter_event_bus/stores/UserInfo.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _LoginState();
  }
}

class _LoginState extends State<Login> {
  final _userNameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Core.userInfo != null) {
      Navigator.pushNamed(context, "/");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          leading: new Text(""),
          title: Text("登录"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Center(
                child: SizedBox(
              height: 100,
              width: 100,
              child: DecoratedBox(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new ExactAssetImage(
                        'assets/rabbit_48px_1182406_easyicon.net.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            )),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    new TextFormField(
                      textCapitalization: TextCapitalization.words,
                      decoration: const InputDecoration(
                          labelText: "用户名",
                          hintText: "请输入用户名",
                          helperStyle: TextStyle(color: Colors.red)),
                      validator: (value) {
                        if (value.isEmpty) {
                          return '请输入用户名';
                        }
                        return null;
                      },
                      controller: _userNameTextController,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    new TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          labelText: "密码", hintText: "请输入密码"),
                      controller: _passwordTextController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return '请输入密码';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: <Widget>[],
                    ),
                    new RaisedButton(child: new Text("登录"), onPressed: submit)
                  ],
                ),
              ),
            ),
            Text("Or")
          ],
        ));
  }

  void submit() {
//    _formKey.currentState.deactivate();
    print("-----");
    if (_formKey.currentState.validate()) {
      Core.userInfo = UserInfo();
      Core.userInfo.id = 1;
      Core.userInfo.name = _userNameTextController.text;
      Core.userInfo.password = _passwordTextController.text;

      _userNameTextController.clear();
      _passwordTextController.clear();
      Navigator.pushNamed(context, "/");
    }
  }
}