import 'package:flutter/material.dart';
import 'package:flutter_app_prototype/Dashboard/Dashboard.dart';
import 'package:flutter_app_prototype/NavigationBar/NavigationBar.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            NavigationBar(),
            DashBoard(),
          ],
        ),
      ),
    );
  }
}
