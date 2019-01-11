import 'package:dio/dio.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter_event_bus/stores/UserInfo.dart';

class Core {
  static const CONTENT_TYPE_JSON = "application/json";
  static const CONTENT_TYPE_FORM = "application/x-www-form-urlencoded";
  static const String BASE_URL = "http://192.168.1.78:8080/";

  static EventBus eventBus = new EventBus();

  static UserInfo userInfo;

  // 或者通过传递一个 `options`来创建dio实例
  static Dio dio = new Dio(new Options(
       connectTimeout: 5000, receiveTimeout: 3000));
}
