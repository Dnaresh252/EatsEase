import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_grocery/Common/app_style.dart';
import 'package:multi_vendor_grocery/Common/reusable_text.dart';

import '../constants/constants.dart';
class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 6.h),
      height: 110.h,
      width: width,
      color: kOffWhite,
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end  ,

              children: [
                CircleAvatar(
                  radius: 25.r,
                  backgroundColor: kSecondary,
                  backgroundImage: const NetworkImage("https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXN8ZW58MHx8MHx8fDA%3D"),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom:6.h,left: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     ReusableText(text: "Hey 👋🏻 I want ...", style:appStyle(13, kDark,FontWeight.bold)),
                      SizedBox(
                        width: width*0.65,
                        child: Text("1234342 Maple Street Avp Mehena",
                          overflow: TextOverflow.ellipsis,
                          style: appStyle(11,kGrayLight ,FontWeight.w400), ),
                        ),

                    ],
                  ),
                ),
                Text(getTimeDate(),style: const
                 TextStyle(fontSize: 35),),
              ],

            ),
          ],
        ),
      ),
    );
  }
  String getTimeDate()
  {
    DateTime now=DateTime.now();
    int hour=now.hour;
    if(hour>=0 && hour<12)
      {
            return'🔆';
      }
    else if(hour>=12 && hour<16)
      {
        return'🌥️';

      }
    else
      {
        return '🌙';
      }
  }
}
