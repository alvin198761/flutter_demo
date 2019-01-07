import 'package:crm_flutter_app/stores/IndexStore.dart';

class ApiConfig {
  static void init(Function fun, IndexStore store) async {
    //计算初始值，然后再初始化界面
    fun(store);
  }
}
