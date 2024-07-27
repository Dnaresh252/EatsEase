import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_grocery/Common/app_style.dart';
import 'package:multi_vendor_grocery/Common/reusable_text.dart';
import 'package:multi_vendor_grocery/constants/constants.dart';
import 'package:multi_vendor_grocery/constants/uidata.dart';
import 'package:multi_vendor_grocery/controllers/category_controller.dart';
import 'package:multi_vendor_grocery/views/category/all_categories.dart';

import 'category_widget.dart';
class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(CategoryController());
    return Container(
      height: 80.h,
      padding: EdgeInsets.only(left: 12.w,top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(categories.length, (i)
        {
            var category=categories[i];
                return CategoryWidget( category: category);
        })
      ),
    );
  }
}



