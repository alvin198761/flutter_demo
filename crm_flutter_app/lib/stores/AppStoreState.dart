import 'package:flutter/cupertino.dart';

class AppStoreState extends InheritedWidget {
  String name = "测试系统"; //系统名称
  String version = "0.0.1"; //版本
  bool isLogin = false; //是否登录

  @override
  bool updateShouldNotify(AppStoreState oldWidget) {
    // TODO: implement updateShouldNotify
    return oldWidget.isLogin != this.isLogin;
  } //系统版本

}
