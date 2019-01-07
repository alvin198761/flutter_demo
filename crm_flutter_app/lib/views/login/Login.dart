import 'package:crm_flutter_app/beans/UserInfo.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final _userNameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final Function toHome;

  Login(this.toHome);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text("用户登录"),
      ),
      body: new Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20.0,
              ),
              new TextFormField(
                textCapitalization: TextCapitalization.words,
                decoration: const InputDecoration(
                    labelText: "用户名",
                    hintText: "请输入用户名",
                    helperText: "拉出来溜溜",
                    hasFloatingPlaceholder: true,
                    helperStyle: TextStyle(color: Colors.red)),
                validator: (value) {
                  if (value.isEmpty) {
                    return '请输入用户名';
                  }
                },
                controller: _userNameTextController,
              ),
              const SizedBox(
                height: 20.0,
              ),
              new TextFormField(
                obscureText: true,
                decoration:
                    const InputDecoration(labelText: "密码", hintText: "请输入密码"),
                controller: _passwordTextController,
                validator: (value) {
                  if (value.isEmpty) {
                    return '请输入密码';
                  }
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: SizedBox(
                  width: 300,
                  child: Row(
                    children: <Widget>[
                      new RaisedButton(
                          child: new Text("登录"), onPressed: submit),
                      const SizedBox(
                        width: 50,
                      ),
                      new RaisedButton(
                          child: new Text("重置"), onPressed: () => {}),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }

  void submit() {
    if (_formKey.currentState.validate()) {
      _loginRequest();
    }
  }

  Future _loginRequest() async {
    return Future.delayed(Duration(seconds: 3), () {
      toHome(new UserInfo());
    });
  }
}
