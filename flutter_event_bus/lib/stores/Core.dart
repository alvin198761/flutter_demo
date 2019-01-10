import 'package:event_bus/event_bus.dart';
import 'package:flutter_event_bus/stores/UserInfo.dart';

class Core {
  static EventBus eventBus = new EventBus();

  static UserInfo userInfo;
}
