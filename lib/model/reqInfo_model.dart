import 'RequestInfo_model.dart';

class ReqInfo {
  RequestInfo requestInfo;

  ReqInfo({this.requestInfo});

  ReqInfo.fromJson(Map<String, dynamic> json) {
    requestInfo = json['RequestInfo'] != null
        ? new RequestInfo.fromJson(json['RequestInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.requestInfo != null) {
      data['RequestInfo'] = this.requestInfo.toJson();
    }
    return data;
  }
}
