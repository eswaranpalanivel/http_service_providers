class TerminalInfo {
  String instId;
  String merchantId;
  String storeId;
  String termId;
  String terminalStatus;
  String terminalName;
  String machineId;
  String termLoc;
  String mcc;
  String countryCode;
  String currCode;
  String tmk;
  String tpk;
  String mack;
  String batchId;
  String routeId;
  int echoInterval;

  TerminalInfo(
      {this.instId,
      this.merchantId,
      this.storeId,
      this.termId,
      this.terminalStatus,
      this.terminalName,
      this.machineId,
      this.termLoc,
      this.mcc,
      this.countryCode,
      this.currCode,
      this.tmk,
      this.tpk,
      this.mack,
      this.batchId,
      this.routeId,
      this.echoInterval});

  TerminalInfo.fromJson(Map<String, dynamic> json) {
    instId = json['inst_id'];
    merchantId = json['merchant_id'];
    storeId = json['store_id'];
    termId = json['term_id'];
    terminalStatus = json['terminal_status'];
    terminalName = json['terminal_name'];
    machineId = json['machine_id'];
    termLoc = json['term_loc'];
    mcc = json['mcc'];
    countryCode = json['country_code'];
    currCode = json['curr_code'];
    tmk = json['tmk'];
    tpk = json['tpk'];
    mack = json['mack'];
    batchId = json['batch_id'];
    routeId = json['route_id'];
    echoInterval = json['echo_interval'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['inst_id'] = this.instId;
    data['merchant_id'] = this.merchantId;
    data['store_id'] = this.storeId;
    data['term_id'] = this.termId;
    data['terminal_status'] = this.terminalStatus;
    data['terminal_name'] = this.terminalName;
    data['machine_id'] = this.machineId;
    data['term_loc'] = this.termLoc;
    data['mcc'] = this.mcc;
    data['country_code'] = this.countryCode;
    data['curr_code'] = this.currCode;
    data['tmk'] = this.tmk;
    data['tpk'] = this.tpk;
    data['mack'] = this.mack;
    data['batch_id'] = this.batchId;
    data['route_id'] = this.routeId;
    data['echo_interval'] = this.echoInterval;
    return data;
  }
}
