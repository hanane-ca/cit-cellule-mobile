import 'package:flutter/material.dart';
import 'package:learnProvider/screens/address.dart';
import 'package:learnProvider/screens/email.dart';
import 'package:learnProvider/screens/name.dart';
import 'package:learnProvider/screens/phone.dart';

/// This is the stateful widget that the main application instantiates.
class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    NameScreen(),
    PhoneScreen(),
    EmailScreen(),
    AddressScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Phone',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Name',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Address',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: 'Email',
          ),
        ],
        unselectedItemColor: Colors.black.withOpacity(0.5),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
