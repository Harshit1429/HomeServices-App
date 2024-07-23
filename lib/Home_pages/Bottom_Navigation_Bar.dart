import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Account_Page/Account_Main_Page.dart';
import '../Booking_Page/Booking_Main_Page.dart';
import '../Search_Page/Search_Main_Page.dart';
import 'Main_home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final screens =[
     const MainScreenPage(),
    const SearchMainPage(),
    const BookingPage(),
    const AccountMainPage(),
  ];
   int _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(items: const [
        Icon(Icons.home,semanticLabel: "Home "),
        Icon(CupertinoIcons.search),
        Icon(CupertinoIcons.calendar),
        Icon(CupertinoIcons.person_crop_circle),
      ],
        index: _selectedindex,
        onTap: (index) {
          setState(() {
            _selectedindex = index;
          });

        },

        backgroundColor: Colors.black26,
        animationDuration: const Duration(milliseconds: 380),
        height: 68,
        buttonBackgroundColor: Colors.white,


      ),
      body: screens[_selectedindex],
      extendBody: true,
    );
  }
}

