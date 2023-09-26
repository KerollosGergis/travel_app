import 'package:flutter/material.dart';
import 'package:travel_app/screen/calendar_screen.dart';

class PopularPackageScreen extends StatelessWidget {
  const PopularPackageScreen({Key? key}) : super(key: key);

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
                    '               Popular Package',
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
                                builder: (context) => CalendarScreen()),
                                (route) => false);
                      }),

                ),

                SizedBox(height: 30),

                // text
                Text('All Popular Trip Package                      ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),),

                SizedBox(height: 20),

                Image.asset('assets/Group 153.png',
                height: 180,
                width: 380,
                ),
                Image.asset('assets/Group 156.png',
                  height: 180,
                  width: 380,
                ),
                Image.asset('assets/Group 154.png',
                  height: 180,
                  width: 380,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
