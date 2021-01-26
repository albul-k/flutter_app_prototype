import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_app_prototype/views/NavigationBar/src/NavBarItem.dart';

class NavBarBottom extends StatefulWidget {
  @override
  _NavBarBottomState createState() => _NavBarBottomState();
}

class _NavBarBottomState extends State<NavBarBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Column(
        children: [
          NavBarItem(
            icon: Feather.calendar,
          ),
          NavBarItem(
            icon: Feather.log_out,
          ),
        ],
      ),
    );
  }
}
