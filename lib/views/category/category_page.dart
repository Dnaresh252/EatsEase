import 'package:flutter/material.dart';
import 'package:multi_vendor_grocery/constants/constants.dart';
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: Center(child: Text("Category page")),
      ),
      body: Center(
        child: Text("hiii"),
      ),
    );
  }
}
