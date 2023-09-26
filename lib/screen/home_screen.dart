import 'package:travel_app/screen/calendar_screen.dart';
import 'package:travel_app/screen/home_screen.dart';
import 'package:travel_app/screen/main_home_screen.dart';
import 'package:travel_app/screen/messages_screen.dart';
import 'package:travel_app/screen/profile_screen.dart';
import 'package:travel_app/screen/search_screen.dart';
import 'package:flutter/material.dart';

class HomeScreenn extends StatefulWidget {
  HomeScreenn({Key? key}) : super(key: key);

  @override
  State<HomeScreenn> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenn> {
  int screenIndex = 0;

  List<Widget> _screens =[

    MainHomeScreen(),

    CalendarScreen(),

    SearchScreen(),

    MessagesScreen(),

    ProfileScreen(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        currentIndex: screenIndex,
        onTap: (int index){
          setState(() {
            screenIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            label: 'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month,
//color: Colors.black12,
            ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
//color: Colors.black12,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message_outlined,
// color: Colors.black12,
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
// color: Colors.black12,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: _screens[screenIndex],
    );
  }
}