import 'package:conmetlabs_news/homepage.dart';
import 'package:conmetlabs_news/search.dart';
import 'package:flutter/material.dart';

import 'discover.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({Key? key}) : super(key: key);

  @override
  _NavigationBarPageState createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgets = <Widget>[
    HomePage(),
    DiscoverPage(),
    Search(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: _widgets.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.blueGrey[300],
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          elevation: 0.0,
          items: [
            BottomNavigationBarItem(
              icon: _selectedIndex == 0 ? Icon(Icons.home) : Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1 ? ImageIcon(AssetImage('assets/images/globe_filled.png')) : ImageIcon(AssetImage('assets/images/globe.png')),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            )
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
