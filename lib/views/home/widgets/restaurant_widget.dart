import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_grocery/Common/app_style.dart';
import 'package:multi_vendor_grocery/Common/itemspage.dart';
import 'package:multi_vendor_grocery/Common/reusable_text.dart';
import 'package:multi_vendor_grocery/constants/constants.dart';
class RestaurantWidget extends StatelessWidget {
  const RestaurantWidget({super.key,required this.image,required this.title, this.onTap,required this.time});
  final String image;
  final String title;
  final String time;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.only(right: 2.w),
        child: Container(
          margin: EdgeInsets.only(right: 10.w),
          padding: EdgeInsets.only(top: 0.h),

          width:MediaQuery.of(context).size.width/1.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,


          ),
          child: Row(

            children: [
           Align(
             alignment: Alignment.topRight,
             child:Container(
               margin: EdgeInsets.only(right: 10.w),
               padding: EdgeInsets.only(top: 0.h),
               width: MediaQuery.of(context).size.width / 2.7,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 image: DecorationImage(
                   image: NetworkImage(image),
                   fit: BoxFit.cover, // You can change this to fit the image as needed
                 ),
               ),
             )

           ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text("⭐4.8",style: appStyle(13, kGrayLight, FontWeight.w600),),
                  Text(title,style: appStyle(13,kOffWhite, FontWeight.w700),),
                  Text("Free Delivery",style: appStyle(13,kGray, FontWeight.w700),),
                  Text(time,style: appStyle(10, kOffWhite, FontWeight.bold),),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemPage(title:title)));
                    },
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: kOffWhite),

                      height: 30,
                      width: 100,
                      child: Center(child: ReusableText(text: "Oder Now",style: appStyle(10, kDark, FontWeight.bold),),),

                    ),
                  )



                ],

              )


            ],
          ),
        ),

        );
  }
}
