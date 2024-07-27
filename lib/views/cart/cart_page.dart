import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../Common/app_style.dart';
import '../../Common/reusable_text.dart';
import '../../constants/constants.dart';
import 'cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Cart')),
          automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartProvider.cartItems.length,
              itemBuilder: (context, index) {
                final item = cartProvider.cartItems[index];
                return Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                  width: double.infinity,
                  height: 175,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
                  ,color: Colors.black),
                  child:Row(
                    children: [
                      Align(
                          alignment: Alignment.topRight,
                          child:Container(
                            margin: EdgeInsets.only(right: 10.w),
                            padding: EdgeInsets.only(top: 0.h),
                            width: MediaQuery.of(context).size.width / 2.7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage(item.imageurl),
                                fit: BoxFit.cover,
                              ),
                              gradient: LinearGradient(
                                colors: [Colors.black.withOpacity(0.0), Colors.black.withOpacity(0.6)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,

                              ),
                          )

                      ),
                      ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),

                          Text(item.title,style: appStyle(22,kOffWhite, FontWeight.w700),),

                          Text('Rs ${item.price.toStringAsFixed(3)}',style: appStyle(15, kOffWhite, FontWeight.bold),),

                          Text('Restaurant: ${item.restaurant}',style: appStyle(15,kOffWhite, FontWeight.w700),),
                          Row(
                            children: [
                              Container(
                                height:30,

                              margin: EdgeInsets.only(top: 20,left:10),
                                  decoration: BoxDecoration(gradient: LinearGradient(
                                    colors: [Colors.redAccent,Colors.redAccent],

                                  ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: ()
                                      {
                                        cartProvider.decrementQuantity(item);
                                      },

                                      child:Icon(Icons.remove,color: Colors.white)
                                                ,

                                    ),
                                    SizedBox(width: 20,),
                                    Text(item.quantity.toString(),style: appStyle(10, Colors.white, FontWeight.bold),),

                                    SizedBox(width: 20,),
                                    GestureDetector(
                                      onTap: ()
                                                {
                                                cartProvider.incrementQuantity(item);
                                                },

                                      child: Icon(Icons.add,color: Colors.white),
                                      ),

                                  ],

                                ),


                              ),
                              SizedBox(width: 30,),
                              GestureDetector(
                                onTap:()
                              {
                                cartProvider.removeFromCart(item);
                              },
                                child: Container(
                                margin: EdgeInsets.only(top:20),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),gradient: LinearGradient(
                                    colors: [Colors.redAccent,Colors.orangeAccent]
                                  )),
                                  height:30,
                                  width:79,

                                  child: Center(child: Text("Remove",style: appStyle(12, Colors.black, FontWeight.bold),)),
                                ),
                              )
                            ],
                          ),


                        ]
                  )
                    ]
                )
                );
              },
            ),
      ),


          Container(
            margin: EdgeInsets.only(bottom: 70,left: 5,right: 5),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
    color: Colors.black87),


            child: Row(

              children: [
                Container(
                  margin: EdgeInsets.only(left: 20,top: 5,bottom: 5),
                  height: 40,
                  width:120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),gradient:
                      LinearGradient(
                        colors: [Colors.redAccent,Colors.deepOrangeAccent],
                      )
                  ),
                  child: Center(child:
                    Text("Buy Now",style: appStyle(15, Colors.black87, FontWeight.w700),),),
                ),
                SizedBox(width: 50,
                ),
                Text(
                  'Total:      Rs ${cartProvider.totalAmount.toStringAsFixed(3)}',
                  style: appStyle(15,Colors.white, FontWeight.w700)
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
