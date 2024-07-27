import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:multi_vendor_grocery/Common/app_style.dart';
import 'package:provider/provider.dart';
import '../views/cart/cart_provider.dart';
import '../views/search/fooditem.dart';

class ItemDetailPage extends StatefulWidget {
  final FoodItem item;

  ItemDetailPage({required this.item});

  @override
  _ItemDetailPageState createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  bool addedToCart = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(widget.item.imageurl, fit: BoxFit.cover,),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(color: Colors.black.withOpacity(0.7),),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios_sharp, color: Colors.white,),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.network(
                    widget.item.imageurl,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2.5,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 10,),
                Text(widget.item.title, style: appStyle(19, Colors.white70, FontWeight.w700),),
                SizedBox(height: 1,),
                Text('Rating:  ⭐ ${widget.item.rating.toStringAsFixed(1)} (3.8k)', style: appStyle(11, Colors.white70, FontWeight.w700),),
                SizedBox(height: 1,),
                Text('Price: ${widget.item.price.toStringAsFixed(1)}', style: appStyle(11, Colors.white70, FontWeight.w700),),
                SizedBox(height: 20),
                Text(widget.item.description, style: appStyle(14, Colors.white54, FontWeight.w700),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("Delivery Time", style: appStyle(18, Colors.white70, FontWeight.bold),),
                    SizedBox(width: 2,),
                    Icon(Icons.alarm, color: Colors.white,),
                    SizedBox(width: 5,),
                    Text("10 AM", style: appStyle(13, Colors.white54, FontWeight.w600),),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            addedToCart = !addedToCart;
                          });
                          if (addedToCart) {
                            Provider.of<CartProvider>(context, listen: false).addToCart(widget.item);
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 50,
                          margin: EdgeInsets.only(left: 70),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: addedToCart
                                ? LinearGradient(colors: [Colors.white70, Colors.white10])
                                : LinearGradient(colors: [Colors.red, Colors.deepOrangeAccent]),
                          ),
                          child: Center(
                            child: Text(
                              addedToCart ? "Added to Cart" : "Add to Cart",
                              style: appStyle(19, Colors.black, FontWeight.bold),
                            ),
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
  }
}
