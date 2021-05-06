
// import 'dart:io';


import 'package:flutter/material.dart';
import 'package:http_req/providers/Service_Provider.dart';
import 'package:http_req/screens/LoginPageScreen.dart';
import 'package:provider/provider.dart';


class secondScreen extends StatefulWidget {
  static const routeName = "/secondScreen";
  @override
  _secondScreenState createState() => _secondScreenState();
}

class _secondScreenState extends State<secondScreen> {

  bool _loading = true;

  Future<void> _showDialog(String msg) async {
    return showDialog<void>(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text("Error"),
          content: Text("$msg"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"))
          ],
        );
      },
      barrierDismissible: false,
    );
  }

  void serviceCall() {
    Provider.of<ServiceProviders>(context).terminalDownload().then(  (value) {
      value
          ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Request Success  "),
      ))
          : ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Request Failed"),
        ),
      );
      setState(() {
        _loading = false;
      });
      Future.delayed(Duration(seconds: 3), () {
        value
            ? Navigator.of(context).pushNamed(LoginPageScreen.routename)
            : ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Request Failed"),
          ),
        );
      }).catchError((e) {
        print(e.message);
      });
    }).catchError((e) {
      _showDialog(e as String);
    });
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   // _checkNetworkConnectivity()
  //   //     .then((_) => {
  //   if (_loading) {
  //     serviceCall();
  //   }
  // }

  void didChangeDependencies() {
    super.didChangeDependencies();
    // _checkNetworkConnectivity()
    //     .then((_) => {
    if (_loading) {
      serviceCall();
    }

  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: _size.width*0.20,
              height: _size.height*0.10,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed("/", arguments : {
                    "name" : "Eswaran Palanivel",
                    "Gender" : "Male"

                  });
                },
                child: Text("Login123", style: TextStyle( color: Colors.white),),
                style: ElevatedButton.styleFrom( primary: Colors.redAccent ),
              ),
            )
          ],
        ),
      ),

    );
  }
}

