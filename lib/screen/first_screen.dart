import 'package:flutter/material.dart';
import 'package:travel_app/screen/second_screen.dart';
import 'package:travel_app/screen/sign_in_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  // image
                  Image.asset(
                    'assets/afbea499038243 1.png',
                    //height: 444,
                    width: MediaQuery.of(context).size.height * 0.9,
                  ),

                  // skip
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                      top: 56,
                      right: 20,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return SignINScreen();
                        }));
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffCAEAFF)),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              Container(
                child: Center(
                  child: Column(
                    children: [
                      // text
                      Text(
                        'Life is short and the',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      //text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'world is',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            ' wide',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.wavy,
                              decorationThickness: 2,
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              color: Colors.deepOrange,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 13),

                      // text
                      Text(
                        'At Friends tours and travel, we customize',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        ' reliable and trutworthy educational tours to',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        ' destinations all over the world',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      SizedBox(height: 25),

                      // container rectangles
                      Container(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 7,
                                width: 35,
                                color: Color(0xff0D6EFD),
                              ),
                              SizedBox(width: 5),
                              Container(
                                height: 7,
                                width: 13,
                                color: Color(0xffCAEAFF),
                              ),
                              SizedBox(width: 4),
                              Container(
                                height: 7,
                                width: 6,
                                color: Color(0xffCAEAFF),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 30),

                      // elevatedbutton => get start
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.only(
                            top: 18,
                            bottom: 18,
                            right: 126,
                            left: 126,
                          ),
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondScreen()),
                                (route) => false);
                          }
                        },
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
