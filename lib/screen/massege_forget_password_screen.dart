import 'package:flutter/material.dart';
import 'package:travel_app/screen/verification_password_screen.dart';

class MassegeForgetPasswordScreen extends StatelessWidget {
  const MassegeForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                // container => text massege
                Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Check your email',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),),

                      SizedBox(height: 10),

                      Text('We have send password recovery',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),),
                      Text(' instruction to your email',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),),
                    ],
                  ),
                ),

                SizedBox(height: 50),

                //ElevatedButton => OK
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
                              builder: (context) => VerificationPasswordScreen()),
                              (route) => false);
                    }
                    //print("");
                  },
                  child: Text('OK',
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
