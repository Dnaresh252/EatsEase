import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_grocery/constants/constants.dart';
import 'package:multi_vendor_grocery/views/home/widgets/restaurant_widget.dart';

import '../../../Common/app_style.dart';
import '../../../Common/reusable_text.dart';
import '../../../constants/uidata.dart';
// Replace with the actual path

class NearbyList extends StatelessWidget {
  const NearbyList({super.key});


  @override
  Widget build(BuildContext context) {
    final List<Color> containerColors = [
      Colors.black,
      Colors.greenAccent,
      Colors.deepOrangeAccent,
      Colors.grey,

    ];


    return Container(
        height: 180.h,
        padding: EdgeInsets.only(left: 12.w,top:15.h),
       child: ListView(
       scrollDirection: Axis.horizontal,
     children: List.generate(restaurants.length, (i)
    {

     var restaurant=restaurants[i];
      return RestaurantWidget(image: restaurant['imageUrl'],title: restaurant['title'],time: restaurant['time'],);
    }
    ),
    ),
    );
  }
}
