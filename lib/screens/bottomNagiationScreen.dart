

import 'package:flutter/material.dart';
import 'package:new_app/screens/home_page_screen.dart';
import 'package:new_app/screens/favourite_screen.dart';
import 'package:new_app/screens/search_screen.dart';

import 'application_screen.dart';
import 'cart_screen/cart_screen.dart';

class BottomNavgitionBarScreen extends StatefulWidget {
  BottomNavgitionBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavgitionBarScreen> createState() => _BottomNavgitionBarScreenState();
}

class _BottomNavgitionBarScreenState extends State<BottomNavgitionBarScreen> {
  int selectedIndex = 0;

  List<Widget> screens = [
    CartScreen(),
    HomePageScreen(),
    FavouritScreen(),

    SearchScree(),
    ApplicationScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
                label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
            label: 'Shopping',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'application',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'personal',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.teal[800],
        onTap: (index){

           setState(() {
             selectedIndex= index;
           });
        },
      ),
    );
  }
}
