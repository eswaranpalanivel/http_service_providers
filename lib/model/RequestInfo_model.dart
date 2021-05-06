class RequestInfo {
  String requestType;
  String termSerialNum;
  String version;

  RequestInfo({this.requestType, this.termSerialNum, this.version});

  RequestInfo.fromJson(Map<String, dynamic> json) {
    requestType = json['RequestType'];
    termSerialNum = json['TermSerialNum'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['RequestType'] = this.requestType;
    data['TermSerialNum'] = this.termSerialNum;
    data['version'] = this.version;
    return data;
  }
}
