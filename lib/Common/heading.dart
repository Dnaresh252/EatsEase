import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_grocery/Common/app_style.dart';
import 'package:multi_vendor_grocery/Common/reusable_text.dart';
import 'package:multi_vendor_grocery/constants/constants.dart';
class Heading extends StatelessWidget {
   const Heading({super.key,required this.text,required this.onTap});
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding: EdgeInsets.only(top: 12.w),
            child: ReusableText(text: text,style: appStyle(15, kDark, FontWeight.bold)),

          ),
          GestureDetector(
            onTap:onTap,
            child:ReusableText(text:"view all",style: appStyle(14, Colors.lightGreen, FontWeight.w700),)
            ,
          )

        ],

      ),
    );
  }
}
