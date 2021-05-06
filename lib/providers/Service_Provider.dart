import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http_req/config/Text_String.dart';
import 'package:http_req/model/masterKeyInfo_model.dart';
import 'package:http_req/model/reqInfo_model.dart';
import 'package:http_req/model/RequestInfo_model.dart';


class ServiceProviders with ChangeNotifier {
  MasterKeyInfo _masterKeyInfo;
  MasterKeyInfo get masterKeyInfo => _masterKeyInfo;
  bool isLoading = true;

  static Uri _url = Uri.parse(TextString.serviceURL);

  ReqInfo _requestInfo = ReqInfo(
    requestInfo: RequestInfo(
      requestType: "MasterKeyInfo",
      termSerialNum: "0821642298",
      version: "V_1.1.2",
    ),
  );

  void setMerchName( String name ){

    _masterKeyInfo.merchantInfo.merchantName = name;
    notifyListeners();
  }

  ReqInfo get requestInfo => _requestInfo;

  Future<bool> terminalDownload() async{
    try {
      http.Response response = await http.post(_url, body: jsonEncode(requestInfo)).timeout(Duration(seconds: 5));

      _masterKeyInfo = MasterKeyInfo.fromJson(jsonDecode(response.body));
      isLoading = false;
      print("${jsonEncode(masterKeyInfo.merchantInfo.merchantName)}");
      print(masterKeyInfo.toJson());
      notifyListeners();
      //masterKeyInfo.merchantInfo.merchantName ="Eswaran";
      return true;
    } on HttpException catch(e){
      print(" HttpException ${e.message}");
      return false;
    } on SocketException catch(e){
      print(" SocketException ${e.message}");
      return false;
    }catch (e) {
      print(" default exception ${e.message}");
      return false;
    }
  }
}
