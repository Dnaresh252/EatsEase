
import 'package:flutter/material.dart';

import 'login.dart';



class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child:Image.network("https://ecommercephotographyindia.com/assets/img/gallery/burger-photography.jpg",fit: BoxFit.cover,),
          ),

          Center(
            child: Container(
              width: 180,
              height: 360,
              decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 13),borderRadius: BorderRadius.circular(20)
              ),
              child: Center(child: Text("No \nqu \neu \nes",style:TextStyle(fontWeight: FontWeight.w900,fontSize: 50,color: Colors.white,))),

            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child:Container(
                margin: EdgeInsets.only(bottom: 130),
                child: Text("No queues,\njust a seamless \n food experience \n for you",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center, ),
              )
          ),
          Align(alignment: Alignment.bottomCenter,

            child: GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 50),
                height:50,
                width:  200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),
                child: Center(
                  child: Text("Get Started",style: TextStyle(fontSize:22,fontWeight: FontWeight.w900,color: Colors.blueGrey),),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }


}
