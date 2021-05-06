class StoreInfo {
  String instId;
  String merchantId;
  String storeId;
  String storeStatus;
  String storeName;
  String storeLocation;

  StoreInfo(
      {this.instId,
      this.merchantId,
      this.storeId,
      this.storeStatus,
      this.storeName,
      this.storeLocation});

  StoreInfo.fromJson(Map<String, dynamic> json) {
    instId = json['inst_id'];
    merchantId = json['merchant_id'];
    storeId = json['store_id'];
    storeStatus = json['store_status'];
    storeName = json['store_name'];
    storeLocation = json['store_location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['inst_id'] = this.instId;
    data['merchant_id'] = this.merchantId;
    data['store_id'] = this.storeId;
    data['store_status'] = this.storeStatus;
    data['store_name'] = this.storeName;
    data['store_location'] = this.storeLocation;
    return data;
  }
}
