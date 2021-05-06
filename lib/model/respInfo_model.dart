import 'switchInfo_model.dart';

class RespInfo {
  String errCode;
  String errDesc;
  String respCode;
  String respDesc;
  SwitchInfo switchInfo;

  RespInfo(git
      {this.errCode,
      this.errDesc,
      this.respCode,
      this.respDesc,
      this.switchInfo});

  RespInfo.fromJson(Map<String, dynamic> json) {
    errCode = json['err_code'];
    errDesc = json['err_desc'];
    respCode = json['resp_code'];
    respDesc = json['resp_desc'];
    switchInfo = json['switch_info'] != null
        ? new SwitchInfo.fromJson(json['switch_info'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['err_code'] = this.errCode;
    data['err_desc'] = this.errDesc;
    data['resp_code'] = this.respCode;
    data['resp_desc'] = this.respDesc;
    if (this.switchInfo != null) {
      data['switch_info'] = this.switchInfo.toJson();
    }
    return data;
  }
}
