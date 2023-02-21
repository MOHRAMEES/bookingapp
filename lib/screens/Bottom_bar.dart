// ignore_for_file: prefer_final_fields

import 'package:bookingapp/screens/Home_Screen.dart';
import 'package:bookingapp/screens/Profile_Screen.dart';
import 'package:bookingapp/screens/TicketScreen.dart';
import 'package:bookingapp/screens/search_sreen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedindex = 0;
  // ignore: unused_field
  static final List<Widget> _widgetoptions = <Widget>[
    // const Text('home'),
    const HomeSreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];
  void _onitemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
    // _selectedindex = index;
    // print('Tapped index is ${_selectedindex}');
    // print('Tapped index is' + _selectedindex.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetoptions[_selectedindex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedindex,
          onTap: _onitemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526480),
          type: BottomNavigationBarType.fixed,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: 'search'),
            const BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_airplane_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_airplane_filled),
                label: 'ticket'),
            const BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: 'profile'),
          ]),
    );
  }
}
