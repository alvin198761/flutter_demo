import 'package:dio/dio.dart';
import 'package:flutter_event_bus/stores/Core.dart';
import 'package:flutter_event_bus/stores/NewsBean.dart';

class NewsApi {
/*
  获取新闻列表
 */
  static Future<Response> queryList() async {
    return await Core.dio.get("http://192.168.1.78:8000/api/news/queryList");
  }

  /*
   保存新闻
   */
  static Future<Response> save(NewsBean news) async {
    return await Core.dio
        .post("http://192.168.1.78:8000/api/news/save", data: news.toJson());
  }
}
