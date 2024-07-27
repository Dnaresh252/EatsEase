import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_grocery/constants/constants.dart';
import 'package:multi_vendor_grocery/startingpages/onboard.dart';
import 'package:multi_vendor_grocery/views/cart/cart_provider.dart';
import 'package:multi_vendor_grocery/views/entrypoint.dart';
import 'package:provider/provider.dart';

Widget defaultHome=MainScreen();
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (context, child) {
        return MultiProvider(
          providers:[
            ChangeNotifierProvider(create: (_) => CartProvider()),
          ],
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'FoodNest',
            // You can use the library anywhere in the app even in theme
            theme: ThemeData(
             scaffoldBackgroundColor: kOffWhite,
              iconTheme: IconThemeData(color: kDark),
              primarySwatch: Colors.grey,
            ),
            home: defaultHome,
          ),
        );
      },

    );
  }
}

