import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_grocery/Common/custom_appbar.dart';
import 'package:multi_vendor_grocery/Common/custom_container.dart';
import 'package:multi_vendor_grocery/Common/heading.dart';
import 'package:multi_vendor_grocery/constants/constants.dart';
import 'package:multi_vendor_grocery/views/home/all_fastest_food.dart';
import 'package:multi_vendor_grocery/views/home/all_nearby_restaurants.dart';
import 'package:multi_vendor_grocery/views/home/recommendation_page.dart';
import 'package:multi_vendor_grocery/views/home/widgets/category_list.dart';
import 'package:multi_vendor_grocery/views/home/widgets/discount.dart';
import 'package:multi_vendor_grocery/views/home/widgets/try_new.dart';
import 'package:multi_vendor_grocery/views/home/widgets/nearby_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:PreferredSize(preferredSize: Size.fromHeight(130.h),child: CustomAppbar()),

      body: SafeArea(
        child: CustomContainer(conatinerContent:Column(
          children: [
           const CategoryList(),
            Heading(text: "Top Discounts",
                onTap:(){
                  Get.to(()=>AllFastestFood(),
                      transition:Transition.cupertino,
                      duration:const Duration(milliseconds:900));
                }),
          DiscountCarousel(),
            Heading(text: "Try Something New",
                onTap:(){
                  Get.to(()=>RecommendationPage(),
                      transition:Transition.cupertino,
                      duration:const Duration(milliseconds:900));
                }),
            FoodList(l:"Add To cart"),
          Heading(text: "Nearby Restaurants",
              onTap:(){
            Get.to(()=>AllNearbyRestaurants(),
                transition:Transition.cupertino,
                duration:const Duration(milliseconds:900));

              }),
             NearbyList(),



          ],
        )),
      ),
    );
  }
}
