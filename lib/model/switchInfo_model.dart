class SwitchInfo {
  String mti;
  String bitmap;
  String fld3;
  String fld11;
  String fld12;
  String fld13;
  String fld24;
  String fld37;
  String fld39;
  String fld41;
  String fld42;
  String fld45;
  String fld58;
  String fld59;
  String fld60;
  String fld61;
  String fld70;

  SwitchInfo(
      {this.mti,
      this.bitmap,
      this.fld3,
      this.fld11,
      this.fld12,
      this.fld13,
      this.fld24,
      this.fld37,
      this.fld39,
      this.fld41,
      this.fld42,
      this.fld45,
      this.fld58,
      this.fld59,
      this.fld60,
      this.fld61,
      this.fld70});

  SwitchInfo.fromJson(Map<String, dynamic> json) {
    mti = json['mti'];
    bitmap = json['bitmap'];
    fld3 = json['fld3'];
    fld11 = json['fld11'];
    fld12 = json['fld12'];
    fld13 = json['fld13'];
    fld24 = json['fld24'];
    fld37 = json['fld37'];
    fld39 = json['fld39'];
    fld41 = json['fld41'];
    fld42 = json['fld42'];
    fld45 = json['fld45'];
    fld58 = json['fld58'];
    fld59 = json['fld59'];
    fld60 = json['fld60'];
    fld61 = json['fld61'];
    fld70 = json['fld70'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mti'] = this.mti;
    data['bitmap'] = this.bitmap;
    data['fld3'] = this.fld3;
    data['fld11'] = this.fld11;
    data['fld12'] = this.fld12;
    data['fld13'] = this.fld13;
    data['fld24'] = this.fld24;
    data['fld37'] = this.fld37;
    data['fld39'] = this.fld39;
    data['fld41'] = this.fld41;
    data['fld42'] = this.fld42;
    data['fld45'] = this.fld45;
    data['fld58'] = this.fld58;
    data['fld59'] = this.fld59;
    data['fld60'] = this.fld60;
    data['fld61'] = this.fld61;
    data['fld70'] = this.fld70;
    return data;
  }
}

