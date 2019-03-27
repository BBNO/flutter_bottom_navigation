import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/email_screen.dart';
import 'pages/airplay_screen.dart';
import 'pages/person_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(AirplayScreen())
      ..add(PersonScreen());
    super.initState(); //无名无参需要调用
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //脚手架
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _BottomNavigationColor,
              ),
              title: Text(
                '首页',
                style: TextStyle(color: _BottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: _BottomNavigationColor,
              ),
              title: Text(
                '邮箱',
                style: TextStyle(color: _BottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                color: _BottomNavigationColor,
              ),
              title: Text(
                '播放器',
                style: TextStyle(color: _BottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: _BottomNavigationColor,
              ),
              title: Text(
                '我的',
                style: TextStyle(color: _BottomNavigationColor),
              )),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
