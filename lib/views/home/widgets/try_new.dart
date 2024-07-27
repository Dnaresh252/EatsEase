import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_grocery/constants/constants.dart';
import 'package:multi_vendor_grocery/views/search/fooditem.dart';
import 'package:provider/provider.dart';

import '../../../Common/app_style.dart';
import '../../../Common/reusable_text.dart';
import '../../../constants/uidata.dart';
import '../../cart/cart_provider.dart';

class FoodList extends StatefulWidget {
  FoodList({super.key, required this.l});
  final String l;

  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  List<bool> addedToCart = [];

  List<FoodItem> getFoodItems() {
    return foods.map((food) => FoodItem.fromMap(food)).toList();
  }

  @override
  void initState() {
    super.initState();
    addedToCart = List<bool>.filled(foods.length, false);
  }

  @override
  Widget build(BuildContext context) {
    List<FoodItem> foodItems = getFoodItems();
    return Container(
      height: 230.h,
      padding: EdgeInsets.only(left: 12.w, top: 15.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(foods.length, (i) {
          var foodItem = foodItems[i];
          return Container(
            margin: EdgeInsets.only(right: 10.w),
            width: MediaQuery.of(context).size.width / 1.5,
            child: Stack(
              children: [
                // Background image
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    foodItem.imageurl,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: double.infinity,
                  ),
                ),
                // Container with content
                Container(
                  padding: EdgeInsets.only(top: 4.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 100, left: 20, top: 20),
                        child: Text(
                          foodItem.title,
                          style: appStyle(17, kOffWhite, FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20, right: 150),
                        child: Text(
                          "Rs ${foodItem.price}",
                          style: appStyle(17, kOffWhite, FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2, left: 20, right: 140),
                        child: Text(
                          "⭐ ${foodItem.rating}(3.8k)",
                          style: appStyle(10, kOffWhite, FontWeight.w700),
                        ),
                      ),
                      Spacer(),
                      Container(
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.only(bottom: 15),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  addedToCart[i] = !addedToCart[i];
                                });
                                Provider.of<CartProvider>(context, listen: false).addToCart(foodItem);
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 20, bottom: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: addedToCart[i] ? Colors.deepOrangeAccent : kOffWhite,
                                ),
                                height: 40,
                                width: 150,
                                child: Center(
                                  child: ReusableText(
                                    text: addedToCart[i] ? 'Added' : widget.l,
                                    style: appStyle(10, kDark, FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              height: 50,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blueGrey,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.snapchat_rounded,
                                  color: kOffWhite,
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              height: 50,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blueGrey,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.favorite_border_sharp,
                                  color: kOffWhite,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
