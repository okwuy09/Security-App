import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:security_app/bottomNav_Pages/find_friend.dart';
import 'package:security_app/bottomNav_Pages/notification_page.dart';
import 'package:security_app/bottomNav_Pages/sos.dart';
import 'package:security_app/components/new_comment_page.dart';
import 'package:security_app/constants.dart';
import 'package:security_app/bottomNav_pages/home_page.dart';

class MyBottomNavigation extends StatefulWidget {
  static const String id = 'MyBottomNavigation';
  const MyBottomNavigation({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
   List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Sos(),
    NotificationPage(),
    CommentScreen(),
    FindFriend(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
             body: _widgetOptions.elementAt(_selectedIndex),
            bottomNavigationBar: BottomNavigationBar(
              elevation: 3.0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.aod),
              label: 'SOS',
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.live_tv),
              label: 'Live',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notification_add),
              label: 'Notif',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_search),
              label: 'Friends',
            ),
          ],
          iconSize: 26,
          unselectedLabelStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          selectedIconTheme: IconThemeData(color: Colors.yellow[800], size: 26),
          unselectedItemColor: kbottomnavigationIconColor,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.yellow[800],
          showSelectedLabels: true,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
