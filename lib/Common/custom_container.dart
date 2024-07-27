import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_grocery/constants/constants.dart';
class CustomContainer extends StatelessWidget {
 CustomContainer({super.key,required this.conatinerContent});
  Widget conatinerContent;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: MediaQuery.of(context).size.height*0.800 ,
       child: ClipRRect(
         borderRadius: BorderRadius.only(
           bottomLeft: Radius.circular(0),
           bottomRight: Radius.circular(0),
         ),
         child: Container(
           width:width,
           color: Colors.white,
           child: SingleChildScrollView(
             child: conatinerContent,
           ),
         ),
       ),
    );
  }
}
