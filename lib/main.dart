// import 'view/page/login/LoginPage.dart';
import 'package:flutter/material.dart';
import 'view/page/MainPage.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);
    return MaterialApp(
      title: 'Kasir',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(39, 174, 96,1),
        accentColor: Color.fromRGBO(111, 207, 151, 1)
      ),
      home: MainPage(),
      routes: {
        // LoginPage.routeName : (context) => LoginPage(),
        MainPage.routeName  : (context) => MainPage()
      },
    );
  }
}