import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/home.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.white
    ),
    home: Home(),
  ));
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}