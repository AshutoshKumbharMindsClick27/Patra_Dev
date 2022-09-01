import 'package:flutter/material.dart';
import 'package:patra/config/constants.dart';
import 'package:patra/config/themes.dart';
import 'package:patra/routes.dart';
import 'package:patra/screens/home_screen.dart';
import 'package:patra/widgets/navbar.dart';
import 'screens/category_screen.dart';
import 'widgets/bottom_navigation_bar.dart';
import 'widgets/nav_drawer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final screens = {
    0: const HomeScreen(),
    1: CategoryScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.theme1,
      title: 'Material App',
      routes: Routes.routes,
      home: Scaffold(
        drawer: const NavDrawer(),
        appBar: const NavBar(),
        body: screens[_selectedIndex],
        bottomNavigationBar: MindsClikBottomNavigationBar(
          onTap: _onItemTapped,
          selectedIndex: _selectedIndex,
        ),
      ),
    );
  }
}
