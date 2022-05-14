import 'package:flutter/material.dart';
import 'screens/first_map.dart';
import 'screens/navigator.dart';
import 'screens/category_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Category_list(),
      initialRoute: '/navigator',
      routes: {
        Category_list.routeName: (context) => Category_list(),
        // Map.routeName: (context) => Map(),
        MainNavigator.routeName: (context) => MainNavigator(),
      }, // NewProduct(),
    );
  }
}