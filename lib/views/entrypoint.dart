import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_grocery/constants/constants.dart';
import 'package:multi_vendor_grocery/controllers/tab_index_controller.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:multi_vendor_grocery/views/cart/cart_page.dart';

import 'package:multi_vendor_grocery/views/home/home_page.dart';
import 'package:multi_vendor_grocery/views/profile/profile_page.dart';
import 'package:multi_vendor_grocery/views/search/search_page.dart';
class MainScreen extends StatelessWidget {
 MainScreen({super.key});
List<Widget>pageList=const[
  HomePage(),
  SearchPage(),
  CartPage(),
  ProfilePage(),
];
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(()=> Scaffold(
      body: Stack(
        children: [
          pageList[controller.tabindex],
          Align(
            alignment: Alignment.bottomCenter,
            child: Theme(data: Theme.of(context).copyWith(canvasColor:Colors.black87),
              child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedIconTheme: const IconThemeData(color:Colors.greenAccent),
                unselectedIconTheme: const IconThemeData(color: Colors.white),
                onTap: (value)
                {
                  controller.setTabIndex=value;
                },
                currentIndex: controller.tabindex,
                items: [
                  BottomNavigationBarItem(icon:
                  controller.tabindex==0?
                  Icon(AntDesign.appstore1):
                  Icon(AntDesign.appstore_o)
                      ,label:'Home'),

                  BottomNavigationBarItem(icon:Icon(Icons.search),label:'Search'),

                  BottomNavigationBarItem(icon:
                  Badge(
                    label: Text('1'),
                      child: Icon(FontAwesome.opencart))
                      ,label:'Cart'),

                  BottomNavigationBarItem(icon:
                      controller.tabindex==3?
                      Icon(FontAwesome.user_circle):
                      Icon(FontAwesome.user_circle_o)
                      ,label:'Profile'),

                ],
              ),),

          )
        ],
      ),
    ));
  }
}
