import 'package:flutter/material.dart';
import 'package:patra/screens/category_screen.dart';
import 'package:patra/screens/home_screen.dart';

class MindsClikBottomNavigationBar extends StatefulWidget {
  final void Function(int)? onTap;
  final int? selectedIndex;
  const MindsClikBottomNavigationBar({Key? key, this.onTap, this.selectedIndex}) : super(key: key);

  @override
  State<MindsClikBottomNavigationBar> createState() =>
      _MindsClikBottomNavigationBarState();
}

class _MindsClikBottomNavigationBarState
    extends State<MindsClikBottomNavigationBar> {


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Account',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
      ],
      onTap: widget.onTap,
      currentIndex: widget.selectedIndex!,
    );
  }
}
