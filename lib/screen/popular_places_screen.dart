import 'package:flutter/material.dart';
import 'package:travel_app/screen/home_screen.dart';

class PopularPlacesScreen extends StatelessWidget {
  const PopularPlacesScreen({Key? key}) : super(key: key);

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
                    '                Popular Places',
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

                ),

                SizedBox(height: 30),

                //text
                Text('All Popular Places                                ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),),

                SizedBox(height: 25),

                Row(
                  children: [
                    Image.asset('assets/Group 97.png',
                    height: 250,
                    width: 190,),
                   // SizedBox(width: 5),
                    Image.asset('assets/Group 97 (1).png',
                    height: 250,
                    width: 190,),
                  ],
                ),

                SizedBox(height: 20),

                Row (
                  children: [
                    Image.asset('assets/Group 97 (4).png',
                      height: 250,
                      width: 190,),
                    // SizedBox(width: 5),
                    Image.asset('assets/Group 97(5).png',
                      height: 250,
                      width: 190,),
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
