import 'package:flutter/material.dart';
import 'package:multi_vendor_grocery/constants/constants.dart';

import '../Common/app_style.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:  Stack(
          children: [
            Positioned.fill(
              child:Image.network("https://ecommercephotographyindia.com/assets/img/gallery/burger-photography.jpg",fit: BoxFit.cover,),
            ),

            Container(
              margin: EdgeInsets.only(top: 330, left: 20, right: 20),
              child: Column(
                children: [

                  SizedBox(height: 50),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/2.1,
                      decoration: BoxDecoration(
                        color: kGrayLight,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "SIGN UP",
                            style:  appStyle(15,Colors.blueGrey,FontWeight.bold),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Name',
                              hintStyle:  appStyle(10,Colors.black,FontWeight.w900),
                              prefixIcon: Icon(Icons.person_outline_outlined),
                            ),
                          ),
                          SizedBox(height: 30),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle:  appStyle(10,Colors.black,FontWeight.w900),
                              prefixIcon: Icon(Icons.email_outlined),
                            ),
                          ),

                          SizedBox(height: 30),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle:  appStyle(10,Colors.black,FontWeight.w900),
                              prefixIcon: Icon(Icons.lock),
                            ),
                          ),

                          SizedBox(height: 40),
                          Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: GestureDetector(
                              onTap: ()
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 12.0),
                                width: 200,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "Get Started",
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

                ],
              ),
            ),
          ],
        ),

    );
  }
}
