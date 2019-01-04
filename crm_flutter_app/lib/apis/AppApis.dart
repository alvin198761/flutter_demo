import 'package:crm_flutter_app/utils/NetUtil.dart';

class AppApis {
  //获取系统信息
  static void getSysInfo(Function callBack) {
    NetUtil.get("/api/sysinfo", callBack);
  }
}
