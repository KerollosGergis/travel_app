import 'package:flutter/material.dart';
import 'package:travel_app/screen/home_screen.dart';
import 'package:travel_app/screen/main_home_screen.dart';
import 'package:travel_app/screen/sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Container(
              child: Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    // appbar
                    AppBar(
                      backgroundColor: Colors.white,
                      leading: IconButton(
                          color: Colors.black,
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed:(){
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignINScreen()),
                                    (route) => false);
                          }
                      ),
                    ),

                    SizedBox(height: 40),

                    // text
                    Text('Sign up now',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),),

                    SizedBox(height: 10),

                    //text
                    Text('Please fill the details and create account',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),),

                    SizedBox(height: 30),

                    // text your name
                    Text('Your Name                                                  ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),),

                    SizedBox(height: 5),

                    //TextFormField => name
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 20,top: 5,bottom:10 ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Inter Your Name',
                          suffixStyle:TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        validator: (String? text){
                          if(text!.isEmpty){
                            return 'Your Email-ID cannot be empty!';
                          }else {
                            return null;
                          }
                        },
                      ),
                    ),

                    // text email
                    Text('Email-ID                                                     ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 5),

                    //TextFormField ==> email
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 20,top: 5,bottom:10 ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Inter Your Emil',
                          suffixStyle:TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        validator: (String? text){
                          if(text!.isEmpty){
                            return 'Your Email-ID cannot be empty!';
                          }else if(!text.contains('@')  && !text.contains('.')){
                            return 'Your email is incorrect!';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),

                    //text password
                    Text('Password                                                     ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    //TextFormField => password
                    Container(
                      margin: EdgeInsets.only(top: 8,bottom: 5,right: 20,left: 20),
                      child: TextFormField(
                        obscureText: isPasswordObscure,
                        decoration: InputDecoration(
                          hintText: 'Enter Your Password',
                          suffixStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          border: OutlineInputBorder(),
                        ),
                        validator: (String? text){
                          if(text!.isEmpty){
                            return 'Your Password cannot be empty!';
                          }else {
                            return null;
                          }
                        },
                      ),
                    ),


                    SizedBox(height: 30),

                    //ElevatedButton => sing UP
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
                        if (formKey.currentState!.validate())
                        {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainHomeScreen()),
                                  (route) => false);
                        }
                        //print("");
                      },
                      child: Text('Sign Up',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    SizedBox(height: 30),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // text
                        Text('Already have an account',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                        SizedBox(width: 8),
                        // GestureDetector ==> sign IN
                        GestureDetector(
                          onTap: () {
                            {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignINScreen()),
                                      (route) => false);
                            }
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),

                    Text('Or connect',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),),

                    SizedBox(height: 30),

                    // iconButton
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        //facebook
                        Container(
                          child: IconButton(
                              icon: Image.asset('assets/Vector.png'),
                              iconSize: 45,
                              onPressed:(){}
                          ),
                        ),

                        SizedBox(width: 20),

                        //instagram
                        Container(
                          child: IconButton(
                              icon: Image.asset('assets/Group 334.png'),
                              iconSize: 45,
                              onPressed:(){}
                          ),
                        ),

                        SizedBox(width: 20),

                        //twiter
                        Container(
                          child: IconButton(
                              icon: Image.asset('assets/Group 333.png'),
                              iconSize: 45,
                              onPressed:(){}
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
