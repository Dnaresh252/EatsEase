import 'package:flutter/material.dart';
import 'package:multi_vendor_grocery/Common/app_style.dart';
import 'package:multi_vendor_grocery/constants/constants.dart';
import 'package:multi_vendor_grocery/views/entrypoint.dart';

import 'singup.dart';


class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Positioned.fill(
              child:Image.network("https://ecommercephotographyindia.com/assets/img/gallery/burger-photography.jpg",fit: BoxFit.cover,),
            ),


            Container(
              margin: EdgeInsets.only(top: 320, left: 20, right: 20),
              child: Column(
                children: [

                  SizedBox(height: 50),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: kGrayLight,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "LOGIN",
                            style:appStyle(17,Colors.blueGrey, FontWeight.bold),
                          ),
                          SizedBox(height: 30),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: appStyle(10,Colors.black,FontWeight.w900),
                              prefixIcon: Icon(Icons.email_outlined),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle:  appStyle(10,Colors.black,FontWeight.w900),
                              prefixIcon: Icon(Icons.lock),
                            ),
                          ),
                          SizedBox(height: 20),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "Forget Password?",
                              style:  appStyle(10,Colors.black,FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 40),
                          GestureDetector(
                            onTap: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));
                            },
                            child: Material(
                              elevation: 5,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 12.0),
                                width: 200,
                                decoration: BoxDecoration(
                                  color:Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "LOGIN",
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontFamily: 'Font Main',
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                      },

                      child: Text("Don't have an account? Sing up",style: appStyle(12,Colors.white70,FontWeight.w600),)),
                ],
              ),
            ),
          ],
        ),

    );
  }
}
