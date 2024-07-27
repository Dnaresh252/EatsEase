import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_grocery/Common/app_style.dart';
import 'package:multi_vendor_grocery/constants/constants.dart';

import '../../Common/itemdetailpage.dart';
import 'fooddata.dart';
 // Import the FoodData class

class ItemPage extends StatelessWidget {
  final  String title;

  // Constructor with required parameter
 ItemPage({required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text('Items Page',style: appStyle(15, kOffWhite, FontWeight.w700),),
        backgroundColor: Colors.black12,

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid
            crossAxisSpacing: 10, // Spacing between columns
            mainAxisSpacing: 10, // Spacing between rows
            childAspectRatio: 3 / 4, // Aspect ratio of each grid item
          ),
          itemCount: FoodData.foodItems.length,
          itemBuilder: (context, index) {
            final item = FoodData.foodItems[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemDetailPage(item: item),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [Colors.black87,Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        item.imageurl,
                        width: double.infinity,
                        height: 120.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.title, style:appStyle(20, Colors.white, FontWeight.w700)),
                          SizedBox(height: 5),
                          Text('Rs ${item.price}',style: appStyle(11, Colors.white54, FontWeight.w500),),
                          SizedBox(height: 5),
                          Text('Rating: ⭐ ${item.rating}',style:  appStyle(11, Colors.white54, FontWeight.w500),),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(Icons.home_work_outlined,color: Colors.white54,size: 19,),
                              SizedBox(width: 10,),
                              Text(title,style:  appStyle(11, Colors.white54, FontWeight.w500),),
                            ],
                          )

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
