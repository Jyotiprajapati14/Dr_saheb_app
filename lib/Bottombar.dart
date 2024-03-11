import 'package:dr_saheb_app/Appointment_screen.dart';
import 'package:dr_saheb_app/Chatbox_screen.dart';
import 'package:dr_saheb_app/Home_Screen.dart';
import 'package:dr_saheb_app/Menu_page.dart';
import 'package:dr_saheb_app/Wishlist_screen.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    AppointmentScreen(),
    WishlistScreen(),
    ChatboxScreen(),
    EditProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBF6FF),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('lib/assets/images/homee.png'),
              color: Color(0xFF0087FF),
            ),
            label: "Home",
            backgroundColor: Color(0xFFEBF6FF),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('lib/assets/images/tab.png'),
              color: Color(0xFF0087FF),
            ),
            label: "Appointment",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('lib/assets/images/dil.png'),
              color: Color(0xFF0087FF),
            ),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('lib/assets/images/chtt.png'),
              color: Color(0xFF0087FF),
            ),
            label: "ChatBox",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('lib/assets/images/parsion.png'),
              color: Color(0xFF0087FF),
            ),
            label: "Setting",
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(0.6),
        iconSize: 35,
        onTap: _onItemTapped,
        elevation: 5,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
