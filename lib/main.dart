import 'package:flutter/material.dart';
import 'screens/first_map.dart';
import 'screens/navigator.dart';
import 'screens/category_list.dart';
import 'screens/infoPages/infoPageCardBoard.dart';
import 'screens/infoPages/infoPageGlass.dart';
import 'screens/infoPages/infoPageMetal.dart';
import 'screens/infoPages/infoPagePaper.dart';
import 'screens/infoPages/infoPagePlastics.dart';
import 'screens/infoPages/infoPageResidual.dart';
import 'screens/infoPages/infoPageRubber.dart';
import 'screens/infoPages/infoPageSpecial.dart';
import 'screens/infoPages/infoPageTextiles.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kelp',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Category_list(),
      initialRoute: '/navigator',
      routes: {
        Category_list.routeName: (context) => Category_list(),
        // Map.routeName: (context) => Map(),
        MainNavigator.routeName: (context) => MainNavigator(),
        Plastics.routeName: (context) => Plastics(),
        Glass.routeName: (context) => Glass(),
        CardBoard.routeName: (context) => CardBoard(),
        Paper.routeName: (context) => Paper(),
        Rubber.routeName: (context) => Rubber(),
        Textiles.routeName: (context) => Textiles(),
        Metal.routeName: (context) => Metal(),
        Residual.routeName: (context) => Residual(),
        Special.routeName: (context) => Special()
      },
    );
  }
}