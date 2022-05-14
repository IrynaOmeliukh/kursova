import 'dart:io';

import 'package:kursova/screens/category_list.dart';

import './first_map.dart';
import './db.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainNavigator extends StatefulWidget {
  static String routeName = '/navigator';

  @override
  _MainNavigatorState createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int _selectedTabIndex = 1;

  List _pages = [
    FirstMap(),
    Category_list(),
    Database(),
  ];

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex,
        backgroundColor: Colors.white,
        onTap: _changeIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map_outlined,
            ),
            label: "Map"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: "List"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
              ),
              label: "Info"
          ),
        ],
      ),
    );
  }
}