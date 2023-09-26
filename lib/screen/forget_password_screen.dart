import 'package:flutter/material.dart';
import 'package:travel_app/screen/massege_forget_password_screen.dart';
import 'package:travel_app/screen/sign_in_screen.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

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

                    // text
                    Text('Forgot password',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),),

                    SizedBox(height: 10),

                    //text
                    Text('Enter your email account to reset',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),),
                    Text('your password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),),

                    SizedBox(height: 40),

                    // text email
                    Text('Email-ID',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),),

                    SizedBox(height: 10),

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

                    SizedBox(height: 40),

                    //ElevatedButton => Reset Password
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(
                          left: 110,
                          right: 110,
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
                                  builder: (context) => MassegeForgetPasswordScreen()),
                                  (route) => false);
                        }
                        //print("");
                      },
                      child: Text('Reset Password',
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
        ),
      ),
    );
  }
}
