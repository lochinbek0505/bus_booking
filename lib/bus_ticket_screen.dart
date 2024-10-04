import 'package:bus_ticket/profil.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    ActiveTicketsScreen(),
    HistoryScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
                size: 33,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.confirmation_num,
                color: Colors.grey,
                size: 33,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
                color: Colors.grey,
                size: 33,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
                size: 33,
              ),
              label: ''),
        ],
      ),
    );
  }
}
