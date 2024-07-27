import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../Common/app_style.dart';
import '../../../constants/constants.dart';
import '../../../constants/uidata.dart';
import '../category_page.dart';
class CategoryTile extends StatelessWidget {
  final index;
  const CategoryTile({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20), // Rounded corners for grid items
      child: GestureDetector(
        onTap: ()
        {
          Get.to(()=>const CategoryPage());
          transtion:Transition.fadeIn;
          duration: const Duration(milliseconds: 100);
        },
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white24,Colors.black12],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                categories[index]['imageUrl']!,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 8.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Text(
                      categories[index]['title']!,
                      style: appStyle(16, kDark, FontWeight.w700),),
                  ),

                  Container(
                    height: 40,
                    width: 30,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                    child: Icon(Icons.favorite_border_outlined,color: Colors.black,size: 15 ),
                  )
                ],



              ),

            ],
          ),
        ),
      ),
    );
  }
}
