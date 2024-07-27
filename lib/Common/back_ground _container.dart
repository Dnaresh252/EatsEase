import 'package:flutter/material.dart';
import 'package:multi_vendor_grocery/constants/constants.dart';
class BackGroundContainer extends StatelessWidget {
  const BackGroundContainer({super.key,required this.color,required this.child});
final Widget child;
final Color color;


  @override
  Widget build(BuildContext context) {
    return  Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          color: kPrimary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
            image: DecorationImage(
              image: AssetImage("assets/images/restaurant_bk.png"),
              fit: BoxFit.cover,

            ),


        ),
        child: child,

    );
  }
}
