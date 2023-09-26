import 'package:flutter/material.dart';
import 'package:travel_app/screen/home_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

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
                      '                 Search',
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
                          "Cancel",
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

                  // TextFormField => search
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20,top: 5,bottom:10 ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.mic,
                        size: 30,),
                        prefixIcon: Icon(Icons.search,
                          size: 40,),
                        hintText: 'Search Places',
                        suffixStyle:TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  //text
                  Text('Search Places                                          ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),),

                  SizedBox(height: 20),

                  Row(
                    children: [
                      Image.asset('assets/Group 235.png',
                      height: 270,
                      width: 190,),
                      Image.asset('assets/Group 237.png',
                      height: 270,
                      width: 190,),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );;
  }
}
