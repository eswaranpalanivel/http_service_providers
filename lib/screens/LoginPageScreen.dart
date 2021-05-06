import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http_req/providers/Service_Provider.dart';
import 'package:provider/provider.dart';
// import 'package:http_req/screens/Second_Screen.dart';
// import 'package:provider/provider.dart';


class LoginPageScreen extends StatelessWidget {
  static const routename = "/LoginPage";
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: _size.width*0.20,
                height: _size.height*0.10,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed("/secondScreen", arguments : {
                      "name" : "Eswaran Palanivel",
                      "Gender" : "Male"

                    });
                  },
                  child: Text("Login", style: TextStyle( color: Colors.white),),
                  style: ElevatedButton.styleFrom( primary: Colors.redAccent ),
                ),


              ),

              Container(
                width: _size.width*0.20,
                height: _size.height*0.10,
                child: ElevatedButton(
                  onPressed: (){
                    Provider.of<ServiceProviders>(context,listen:false).setMerchName( "Eswar");
                  },

                  child: Provider.of<ServiceProviders>(context).isLoading ? Text( "Login" , style: TextStyle( color: Colors.white),) : Text(  Provider.of<ServiceProviders>(context).masterKeyInfo.merchantInfo.merchantName, style: TextStyle( color: Colors.white),),
                  style: ElevatedButton.styleFrom( primary: Colors.redAccent ),
                ),


              )
            ],
          ),
        ),
      ),
    );
  }
}
