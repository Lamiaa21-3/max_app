import 'package:flutter/material.dart';
import 'package:new_app/cubit/login_cubit/login_cubit.dart';
import 'package:new_app/screens/home_page_screen.dart';
import 'package:new_app/screens/favourite_screen/favourite_screen.dart';
import 'package:new_app/screens/register_screen.dart';
import 'package:new_app/screens/search_screen.dart';
import 'package:new_app/shared_perference/cash/cash_helper.dart';

import '../components/constants.dart';
import 'application_screen.dart';
import 'cart_screen/cart_screen.dart';

class BottomNavgitionBarScreen extends StatefulWidget {
  BottomNavgitionBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavgitionBarScreen> createState() =>
      _BottomNavgitionBarScreenState();
}

class _BottomNavgitionBarScreenState extends State<BottomNavgitionBarScreen> {
  int selectedIndex = 0;

  List<Widget> screens = [
    CartScreen(),
    FavouritScreen(),
    HomePageScreen(),
    SearchScree(),
    ApplicationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [

            Container(

              height: 190,
              width: double.infinity,
              color: Colors.indigo,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Container(

                    width: 90,
                    height: 90,
                    decoration:BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        image: DecorationImage(

                          image: AssetImage(
                            'assets/drawer.jpg',

                          ),
                          fit: BoxFit.contain,
                        )
                    ) ,


                  ),
                  SizedBox(height: 10,),
                  Text('Lamiaa Gamal',style: TextStyle(color: Colors.white,fontSize: 30),),
                  SizedBox(height: 10,),
                  Text('lamiaa@gamail.com',style: TextStyle(color: Colors.white,fontSize: 15),),
                ],
              ),
            ),
            SizedBox(
              height: 20,

            ),
            Row(
              children: [
                Icon(Icons.home_outlined
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Home',style: TextStyle(fontSize: 22),),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Icon(Icons.favorite_border_outlined),
                SizedBox(
                  width: 20,
                ),
                Text('Favourite',style: TextStyle(fontSize: 22),),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Icon(Icons.build_circle_outlined),
                SizedBox(
                  width: 20,
                ),
                Text('ChangePaswword',style: TextStyle(fontSize: 22),),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Icon(Icons.more_time_rounded),
                SizedBox(
                  width: 20,
                ),
                Text('Updates',style: TextStyle(fontSize: 22),),
              ],
            ),
            SizedBox(height: 25,),


               Row(
                children: [
                  IconButton(

             onPressed: ()async {
            await CashDate.deletData(key: 'token') ;


                 Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context) => RegisterScreen()));
                 print('log out $token');



               }, icon: Icon(Icons.settings),),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Log Out',style: TextStyle(fontSize: 22),),
                ],
              ),

          ],
        ),
      ),

      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
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
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
