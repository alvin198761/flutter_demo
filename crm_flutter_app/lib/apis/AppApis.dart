 import 'package:dio/dio.dart';

class AppApis {
  //获取系统信息
  static void getSysInfo() async {
    Dio dio = new Dio();
    Response response=await dio.get("http://192.168.1.78:8000/api/test");
    print(response.data);


//    Options options = new Options(
//        baseUrl: "http://localhost:8000",
//        connectTimeout: 5000,
//        receiveTimeout: 3000);
//      Dio dio = new Dio();
//      Response response;
//      response = await dio.get(
//          "http://localhost:8000/api/test");
//      print(response.statusCode);
//      if (response.statusCode == HttpStatus.ok) {
//        var data = response.data;
//      }

//    NetUtil.get("/api/test", callBack);
  }
}
