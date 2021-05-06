import 'merchantInfo_model.dart';
import 'reqInfo_model.dart';
import 'respInfo_model.dart';
import 'storeInfo_model.dart';
import 'terminalInfo_model.dart';

class MasterKeyInfo {
  MerchantInfo merchantInfo;
  ReqInfo reqInfo;
  RespInfo respInfo;
  StoreInfo storeInfo;
  TerminalInfo terminalInfo;

  MasterKeyInfo(
      {this.merchantInfo,
      this.reqInfo,
      this.respInfo,
      this.storeInfo,
      this.terminalInfo});

  MasterKeyInfo.fromJson(Map<String, dynamic> json) {
    merchantInfo = json['merchant_info'] != null
        ? new MerchantInfo.fromJson(json['merchant_info'])
        : null;
    reqInfo = json['req_info'] != null
        ? new ReqInfo.fromJson(json['req_info'])
        : null;
    respInfo = json['resp_info'] != null
        ? new RespInfo.fromJson(json['resp_info'])
        : null;
    storeInfo = json['store_info'] != null
        ? new StoreInfo.fromJson(json['store_info'])
        : null;
    terminalInfo = json['terminal_info'] != null
        ? new TerminalInfo.fromJson(json['terminal_info'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.merchantInfo != null) {
      data['merchant_info'] = this.merchantInfo.toJson();
    }
    if (this.reqInfo != null) {
      data['req_info'] = this.reqInfo.toJson();
    }
    if (this.respInfo != null) {
      data['resp_info'] = this.respInfo.toJson();
    }
    if (this.storeInfo != null) {
      data['store_info'] = this.storeInfo.toJson();
    }
    if (this.terminalInfo != null) {
      data['terminal_info'] = this.terminalInfo.toJson();
    }
    return data;
  }
}
