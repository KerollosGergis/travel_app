import 'package:flutter/material.dart';
import 'package:travel_app/screen/home_screen.dart';
import 'package:travel_app/screen/popular_package_screen.dart';
import 'package:travel_app/screen/popular_places_screen.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [

                //appbar
                AppBar(
                  title: Text(
                    '                    Schedule',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // titleSpacing: 6,
                  titleTextStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  backgroundColor: Colors.white,
                  leading: IconButton(
                      padding: EdgeInsets.only(left: 20),
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.grey,
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreenn()),
                                (route) => false);
                      }),
                  actions: [
                    IconButton(
                      padding: EdgeInsets.only(right: 20),
                      icon: Icon(
                        Icons.notification_add,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),


                // image
                Image.asset('assets/Group 65.png',
                height: 200,
                width: 330,),


                // row => title & view all
                Row(
                  children: [
                    Text('    My Schedule',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),),

                    GestureDetector(
                      onTap: () {
                        {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PopularPackageScreen()),
                                  (route) => false);
                        }
                      },
                      child: Text(
                        "                                                  View All",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),

                // images => scaroll
                Image.asset('assets/Group 74.png',
                width: 380,
                //height: 150,
                ),
                Image.asset('assets/Group 76.png',
                width: 380,
                ),
                Image.asset('assets/Group 75(5).png',
                width: 380,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
