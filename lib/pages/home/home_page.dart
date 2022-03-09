import 'package:flutter/material.dart';
import 'package:food_delivery/pages/cart/cart_history.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:food_delivery/pages/home/setting_page.dart';
import 'package:food_delivery/pages/home/settings.dart';
import 'package:food_delivery/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  
  List pages = [

    MainFoodPage(),


   
  
    cartHistory(),

    SettingsUI(),
      
  
  ];
  void ontapNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Appcolors.mainColor,
          unselectedItemColor: Colors.amberAccent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0.0,
          unselectedFontSize: 0.0,
          currentIndex: _selectedIndex,
          onTap: ontapNav,
          items: const [
            BottomNavigationBarItem(
              icon: Icon( 
                Icons.home_outlined,
              ),
              label: ("Home"),
            ),
           
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: ("Cart"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: ("Profile"),
            ),
          ]),
    );
  }
}
