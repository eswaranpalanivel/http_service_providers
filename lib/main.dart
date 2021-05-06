import 'package:flutter/material.dart';
import 'package:http_req/screens/LoginPageScreen.dart';
import 'package:http_req/screens/Second_Screen.dart';
import 'package:http_req/providers/Service_Provider.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>ServiceProviders(),)
      ],
      child: MyApp()));

  // runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPageScreen(),
      routes: {
        LoginPageScreen.routename: (context) => LoginPageScreen(),
        secondScreen.routeName: (context) => secondScreen(),
      },


    );
  }
}



