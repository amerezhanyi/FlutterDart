import 'package:flutter/material.dart';

import 'pages/account.dart';
import 'pages/home.dart';
import 'pages/reels.dart';
import 'pages/search.dart';
import 'pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _children = const <Widget>[
    UserHomePage(),
    SearchPage(),
    ReelsPage(),
    ShopPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: 'Reals'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Account'),
          ],
        ));
  }

  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
