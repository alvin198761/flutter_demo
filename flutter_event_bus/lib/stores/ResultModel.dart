class ResultModel {
  final int code;
  final String errorMsg;
  final dynamic data;

  ResultModel(this.code, this.errorMsg, this.data);

  static ResultModel fromJson(data) {
    return new ResultModel(data["code"], data["errorMsg"], data["data"]);
  }
}
