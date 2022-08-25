import 'package:flutter/material.dart';
import 'package:patra/constants.dart';
import 'package:patra/screens/home_screen.dart';
import 'package:patra/widgets/navbar.dart';

import 'widgets/nav_drawer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Constants.theme1,
      title: 'Material App',
      home: const Scaffold(
          drawer: NavDrawer(), appBar: NavBar(), body: HomeScreen()),
    );
  }
}



 