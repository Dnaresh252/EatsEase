import 'package:flutter/material.dart';
import 'package:multi_vendor_grocery/Common/app_style.dart';
import 'package:multi_vendor_grocery/constants/constants.dart';

import '../../Common/reusable_text.dart';
class AllFastestFood extends StatelessWidget {
  const AllFastestFood({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        title: ReusableText(text: "All Fastest Food",
          style: appStyle(13, kGray, FontWeight.w600),
          
        ),
        

      ),
      body: Center(
        child: Text("all faster food"),
      ),
    );
  }
}
