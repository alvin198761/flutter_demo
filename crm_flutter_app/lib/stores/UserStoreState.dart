import 'package:crm_flutter_app/beans/UserInfo.dart';
import 'package:flutter/material.dart';

class UserStoreState extends InheritedWidget {

  UserInfo sessionUser;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return false;
  }
}
