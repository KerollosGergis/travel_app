import 'package:flutter/material.dart';
import 'package:travel_app/screen/forget_password_screen.dart';
import 'package:travel_app/screen/home_screen.dart';
import 'package:travel_app/screen/main_home_screen.dart';

class VerificationPasswordScreen extends StatelessWidget {
  const VerificationPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [

                // appbar
                AppBar(
                  backgroundColor: Colors.white,
                  leading: IconButton(
                      color: Colors.black,
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed:(){Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPassword()),
                              (route) => false);}
                  ),
                ),

                // text
                Text('OTP Verification',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),),

                SizedBox(height: 10),

                //text
                Text('Please check your email www.uihut@gmail.com',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),),
                Text('to see the verification code',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),),

                SizedBox(height: 20),

                // text email
                Text('OTP Code',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),),

                SizedBox(height: 20),

                // container => numbers
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      color: Colors.grey,
                      padding: EdgeInsets.only(top: 16,bottom: 16,right: 30,left: 30),
                      child: Text('8',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),

                    SizedBox(width: 20),

                    Container(
                      color: Colors.grey,
                      padding: EdgeInsets.only(top: 16,bottom: 16,right: 30,left: 30),                      child: Text('6',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),),
                    ),

                    SizedBox(width: 20),

                    Container(
                      color: Colors.grey,
                      padding: EdgeInsets.only(top: 16,bottom: 16,right: 30,left: 30),                      child: Text('9',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),),
                    ),

                    SizedBox(width: 20),

                    Container(
                      color: Colors.grey,
                      padding: EdgeInsets.only(top: 16,bottom: 16,right: 30,left: 30),                      child: Text('5',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),),
                    ),
                  ],
                ),

                SizedBox(height: 40),

                //ElevatedButton => verify
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(
                      left: 143,
                      right: 143,
                      top: 18,
                      bottom: 18,
                    ),
                    backgroundColor: Colors.blueAccent,
                  ),
                  onPressed: () {
                    {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreenn()),
                              (route) => false);
                    }
                    //print("");
                  },
                  child: Text('Verify',
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
      ),
    );
  }
}
