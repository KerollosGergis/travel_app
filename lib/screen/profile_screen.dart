import 'package:flutter/material.dart';
import 'package:travel_app/screen/home_screen.dart';
import 'package:travel_app/screen/main_home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
                    '                      Profile',
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
                        Icons.border_color_outlined,
                        color: Colors.blue,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),

                SizedBox(height: 20),

                // image
                Image.asset('assets/Mask group.png'),
                
                SizedBox(height: 5),
                
                //text
                Text('Leonardo',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),),
                
                SizedBox(height: 5),
                
                //text
                Text('Leonardo@gmail.com',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),),

                SizedBox(height: 30),

                //row => text
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Reward Points',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),),
                    Text('Travel Trips',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),),
                    Text('Bucket List',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),),
                  ],
                ),
                
                SizedBox(height: 10),
                
                // row => number
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('360',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueAccent,
                    ),),
                    Text('238',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent,
                      ),),
                    Text('473',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent,
                      ),),
                  ],
                ),

                SizedBox(height: 30),

                // row => outlinedbutton
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.only(left: 20,right: 230),
                            fixedSize: Size(343, 57)),
                        onPressed: () {},
                        label: Text("Profile",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1B1E28),
                        ),),
                        icon: Icon(Icons.person_outline,
                            color: Colors.grey,),
                      ),

                    ),
                    Icon(Icons.outbound),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.only(left: 20,right: 180),
                            fixedSize: Size(343, 57)),
                        onPressed: () {},
                        label: Text("Bookmarked",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff1B1E28),
                          ),),
                        icon: Icon(Icons.mark_chat_read_sharp,
                            color: Colors.grey,),
                      ),

                    ),
                    Icon(Icons.outbound),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.only(left: 20,right: 165),
                            fixedSize: Size(343, 57)),
                        onPressed: () {},
                        label: Text("Previous Trips",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff1B1E28),
                          ),),
                        icon: Icon(Icons.wordpress_outlined,
                            color: Colors.grey,),
                      ),

                    ),
                    Icon(Icons.outbound),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.only(left: 20,right: 200),
                            fixedSize: Size(343, 57)),
                        onPressed: () {},
                        label: Text("Settings",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff1B1E28),
                          ),),
                        icon: Icon(Icons.settings,
                        color: Colors.grey,),
                      ),

                    ),
                    Icon(Icons.outbound),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.only(left: 20,right: 200),
                            fixedSize: Size(343, 57)),
                        onPressed: () {},
                        label: Text("Version",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff1B1E28),
                          ),),
                        icon: Icon(Icons.content_paste_search_rounded,
                          color: Colors.grey,),
                      ),

                    ),
                    Icon(Icons.outbound),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

