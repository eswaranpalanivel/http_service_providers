class MerchantInfo {
  String instId;
  String merchantId;
  String merchantName;
  String merchantStatus;
  String binId;
  String productId;
  String subProductId;
  String merchantTypeId;
  String firstName;
  String middleName;
  String lastName;
  String mobileNum1;
  String mailId1;

  MerchantInfo(
      {this.instId,
      this.merchantId,
      this.merchantName,
      this.merchantStatus,
      this.binId,
      this.productId,
      this.subProductId,
      this.merchantTypeId,
      this.firstName,
      this.middleName,
      this.lastName,
      this.mobileNum1,
      this.mailId1});

  MerchantInfo.fromJson(Map<String, dynamic> json) {
    instId = json['inst_id'];
    merchantId = json['merchant_id'];
    merchantName = json['merchant_name'];
    merchantStatus = json['merchant_status'];
    binId = json['bin_id'];
    productId = json['product_id'];
    subProductId = json['sub_product_id'];
    merchantTypeId = json['merchant_type_id'];
    firstName = json['first_name'];
    middleName = json['middle_name'];
    lastName = json['last_name'];
    mobileNum1 = json['mobile_num_1'];
    mailId1 = json['mail_id_1'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['inst_id'] = this.instId;
    data['merchant_id'] = this.merchantId;
    data['merchant_name'] = this.merchantName;
    data['merchant_status'] = this.merchantStatus;
    data['bin_id'] = this.binId;
    data['product_id'] = this.productId;
    data['sub_product_id'] = this.subProductId;
    data['merchant_type_id'] = this.merchantTypeId;
    data['first_name'] = this.firstName;
    data['middle_name'] = this.middleName;
    data['last_name'] = this.lastName;
    data['mobile_num_1'] = this.mobileNum1;
    data['mail_id_1'] = this.mailId1;
    return data;
  }
}
