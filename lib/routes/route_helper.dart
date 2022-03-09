import 'package:flutter/material.dart';
import 'package:food_delivery/pages/cart/cart_page.dart';
import 'package:food_delivery/pages/food/popular_food_detail.dart';
import 'package:food_delivery/pages/home/home_page.dart';
import 'package:food_delivery/pages/home/login.dart';
import 'package:food_delivery/pages/splash/splash_page.dart';
import 'package:get/route_manager.dart';

import '../pages/food/recommended_food_detail.dart';

class RouteHelper {
  static const String splashPage = "/splash-page";
  static const String initial = "/";
  static const popularFood = "/popular-food";
static const Login = "/Login";

  static String getInitial() => '$initial';

  static const String recommendedFood = "/recommended-food";
  static const String cartPage = "/cart-page";
  static String getPopularFood(int pageId) => '$popularFood?pageId=$pageId';
  static String getRecommendedFood(int pageId) =>
      '$recommendedFood?pageId=$pageId';
  static String getCartPage() => '$cartPage';
  static String getSplashPage() => '$splashPage';

   static String getLoginPage() => '$Login';
   
 

  static List<GetPage> routes = [
    GetPage(name: splashPage, page: () => const SplashScreen()),
    
    GetPage(name: initial, page: () => const HomePage()),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return PopularFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          var pageId = Get.parameters['pageId'];

          return RecommendedFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
    GetPage(
        name: cartPage,
        page: () {
          return const CartPage();
        },
        transition: Transition.fadeIn),
            GetPage(
              name: Login, page: () => const LoginPage()),

              

  ];
}
