import 'package:flutter/material.dart';
import 'package:travel_app/screen/home_screen.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                children: [

                  //appbar
                  AppBar(
              title: Text(
              '                 Messages',
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
      Icons.more_vert,
      color: Colors.grey,
    ),
    onPressed: () {},
  ),
],
            ),
                  
                  SizedBox(height: 20),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('       Messages',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),),

                      Icon(Icons.bookmark_added_outlined)
                    ],
                  ),

                  SizedBox(height: 10),

                  // TextFormField => search
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20,top: 5,bottom:10 ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,
                        size: 40,),
                        hintText: 'Search for chats & messages',
                        suffixStyle:TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  Image.asset('assets/Group 385.png',
                  width: 370,),
                  SizedBox(height: 20),
                  Image.asset('assets/Group 389.png',
                  width: 370,),
                  SizedBox(height: 20),
                  Image.asset('assets/Group 393.png',
                  width: 370,),
                  SizedBox(height: 20),
                  Image.asset('assets/Group 397.png',
                  width: 370,),
                  SizedBox(height: 20),
                  Image.asset('assets/Group 401.png',
                  width: 370,),

                ],
              ),
            ),
          ),
        ),
      ),
    );;
  }
}
