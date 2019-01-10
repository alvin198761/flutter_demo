import 'package:crm_flutter_app/beans/UserInfo.dart';
import 'package:crm_flutter_app/state/UserState.dart';

class IndexStore {
  String name; //系统名称
  String version; //系统版本
  UserInfo userInfo; //用户登录相关信息
  UserState userState; //用户操作管理
  bool isLogin ;//用户登录标志

  IndexStore({this.name ,this.version,this.userInfo,this.userState ,this.isLogin});
}
