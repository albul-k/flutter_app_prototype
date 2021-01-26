import 'package:flutter/material.dart';
import 'package:flutter_app_prototype/views/NavigationBar/NavigationBar.dart';
import 'package:flutter_app_prototype/views/Dashboard/dashboard.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            NavigationBar(),
            Dashboard(),
          ],
        ),
      ),
    );
  }
}
