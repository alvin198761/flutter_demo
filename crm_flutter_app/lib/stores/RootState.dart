import 'package:crm_flutter_app/stores/AppStoreState.dart';
import 'package:crm_flutter_app/stores/UserStoreState.dart';
import 'package:flutter/material.dart';

/*
 * 全局状态管理器
 */
class RootState {
  List<InheritedWidget> stores = new List();

  AppStoreState appStoreState; //系统状态
  UserStoreState userStoreState; //用户状态

  bool isLogin;
}
