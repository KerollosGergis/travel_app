import 'package:flutter/material.dart';
import 'package:travel_app/screen/home_screen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

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
                    '                 Notification',
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
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Clear all",
                        style: TextStyle(
                          height: 2.5,
                          color: Colors.blueAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                // row => title
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Recent",
                        style: TextStyle(
                          height: 2.5,
                          color: Colors.blueAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    Text('Earlier',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),),
                    
                    Text('Archieved',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),

                SizedBox(height: 20),

                Image.asset('assets/Group 369.png'),
                SizedBox(height: 20),
                Image.asset('assets/Group 370.png'),
                SizedBox(height: 20),
                Image.asset('assets/Group 373.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
