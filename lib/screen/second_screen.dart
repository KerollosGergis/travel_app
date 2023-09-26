import 'package:flutter/material.dart';
import 'package:travel_app/screen/sign_in_screen.dart';
import 'package:travel_app/screen/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

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
                    'assets/7f47f9144194941 1.png',
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
                        'It’s a big world out',
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
                            'there go',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            ' explore',
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
                        'To get the best of your adventure you just',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        ' need to leave and go where you like. we are',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        ' waiting for you',
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
                                width: 13,
                                color: Color(0xffCAEAFF),
                              ),
                              SizedBox(width: 4),
                              Container(
                                height: 7,
                                width: 35,
                                color: Color(0xff0D6EFD),
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
                            right: 150,
                            left: 151,
                          ),
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ThirdScreen()),
                                (route) => false);
                          }
                        },
                        child: Text(
                          'Next',
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
