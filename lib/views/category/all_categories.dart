import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_grocery/Common/app_style.dart';
import 'package:multi_vendor_grocery/Common/back_ground%20_container.dart';
import 'package:multi_vendor_grocery/Common/reusable_text.dart';
import 'package:multi_vendor_grocery/constants/constants.dart';
import 'package:multi_vendor_grocery/constants/uidata.dart';
import 'package:multi_vendor_grocery/views/category/category_page.dart';
import 'package:multi_vendor_grocery/views/category/widgets/category_tile.dart';
class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOffWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title:Center(
          child: ReusableText(text: "Categories",
            style: appStyle(12, kDark, FontWeight.bold),
          ),
        )
      ),
      body:
      BackGroundContainer(
        color: Colors.deepOrange,
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),

          ),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns
              crossAxisSpacing: 15.w,
              mainAxisSpacing: 10.h,
              childAspectRatio: 1,
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {

              return CategoryTile(index:index);

            },
          ),
        ),
      ),
    );
  }


}

