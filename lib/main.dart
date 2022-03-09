import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/auth_controller.dart';
import 'package:food_delivery/controllers/cart_controller.dart';
import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/routes/route_helper.dart';
import 'package:get/get.dart';
import 'controllers/recommended_product_controller.dart';
import 'helper/dependencies.dart' as dep;
import 'dart:async';

Future<void> main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  
  runApp( MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<CartController>().getCartData;
    return GetBuilder<PopularProductController>(
      builder: (_) {
        return GetBuilder<RecommendedProductController>(builder: (_) {
          return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
//home: SplashScreen(),
              //home:MainFoodPage(),
              initialRoute: RouteHelper.getSplashPage(),
              getPages: RouteHelper.routes);
        });
      },
    );
  }
}
