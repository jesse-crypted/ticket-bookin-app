import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:ticket_booking/screens/home_screen.dart';
import 'package:ticket_booking/screens/search_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedindex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const Text("Tickets"),
    const Text("Profile"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: _widgetOptions[_selectedindex]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedindex,
          onTap: _onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(0xFF526480),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.home_12_regular),
                activeIcon: Icon(FluentIcons.home_12_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.search_12_regular),
                activeIcon: Icon(FluentIcons.search_12_filled),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.ticket_horizontal_20_regular),
                activeIcon: Icon(FluentIcons.ticket_horizontal_20_filled),
                label: "Ticket"),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.person_12_regular),
                activeIcon: Icon(FluentIcons.person_12_filled),
                label: "Profile"),
          ],
        ),
      ),
    );
  }
}
