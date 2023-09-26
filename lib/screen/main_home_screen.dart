import 'package:flutter/material.dart';
import 'package:travel_app/component/category.dart';
import 'package:travel_app/screen/calendar_screen.dart';
import 'package:travel_app/screen/messages_screen.dart';
import 'package:travel_app/screen/notification_screen.dart';
import 'package:travel_app/screen/popular_places_screen.dart';
import 'package:travel_app/screen/profile_screen.dart';
import 'package:travel_app/screen/search_screen.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> _images = [
      "assets/Group 22.png",
      "assets/Group 97.png",
    ];

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [
// appbar
                AppBar(
                  title: Text(
                    'Leonardo',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  titleSpacing: 6,
                  titleTextStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  backgroundColor: Colors.white,
                  leading: IconButton(
                      padding: EdgeInsets.only(left: 20),
                      icon: Image.asset('assets/Mask group.png'),
                      onPressed: () {}),
                  actions: [
                    IconButton(
                      padding: EdgeInsets.only(right: 20),
                      icon: Icon(
                        Icons.notification_add,
                        color: Colors.grey,
                      ),
                      onPressed: () {{
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotificationScreen()),
                                (route) => false);
                      }},
                    ),
                  ],
                ),

                SizedBox(height: 25),

//text
                Text(
                  'Explore the                  ',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w300,
                  ),
                ),

//text
                Row(
                  children: [
                    Text(
                      '  Beautiful',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      ' world!',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w400,
                        color: Colors.deepOrange,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.wavy,
                        decorationThickness: 2,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
//text => best
                    Text(
                      '     Best Destination',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

//GestureDetector => view all
                    GestureDetector(
                      onTap: () {
                        {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PopularPlacesScreen()),
                                  (route) => false);
                        }
                      },
                      child: Text(
                        "View All       ",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

// listview
                Container(
                  height: 400,
                  padding: EdgeInsets.only(left: 20),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      categorys(_images),
                      SizedBox(width: 10),
                      categorys(_images),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget categorys(_images) => Container(
    width: 500,
    height: 500,
    // color: Colors.deepOrange,
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Image.asset('assets/Group 22.png'),
            ),
            SizedBox(width: 20),
            Expanded(child: Image.asset('assets/Group 97.png')),
          ],
        ),
      ],
    ),
  );
}