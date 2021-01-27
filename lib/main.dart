import 'package:flutter/material.dart';
import 'package:flutter_app_prototype/views/Home/home.dart';
import 'package:flutter_app_prototype/views/Login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> routes = {
      '/': (BuildContext context) => Login(),
      '/home': (BuildContext context) => Home(),
    };
    return MaterialApp(
      initialRoute: '/',
      routes: routes,
      // theme: ThemeData(fontFamily: 'HelveticaNeue'),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
    );
  }
}
