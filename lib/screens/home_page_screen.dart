import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/cubit/homePage_cubit/homePage_cubit.dart';
import 'package:new_app/cubit/login_cubit/login_cubit.dart';
import 'package:new_app/cubit/login_cubit/login_state.dart';
import 'package:new_app/screens/cart_screen/cart_screen.dart';

import '../components/constants.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomePageCubit.get(context).getHomePage();
    print('object');
    print(LogInCubit.get(context).autherModel?.userName);
    return BlocConsumer<LogInCubit, LogInStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
                color: Colors.black,
              ),
            ],
            elevation: 0,
            title: Text(
              'Favourite',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: HomePageCubit.get(context).homePageList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 20.0,
                        offset: Offset(10, 10),
                      ),
                    ]),
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                            ),
                            child: Center(
                              child: Text(
                                ' 34% OFF',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                          Center(
                              child: Image.network(
                            'https://canprev.ca/wp-content/uploads/2023/03/1647358198_CP-pH-Pro-90vcaps-RGB-195295-V1_839_1430.png',
                            height: 90,
                          )),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              '${HomePageCubit.get(context).homePageList[index].product?.nameInEnglish}',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        );
      },
    );
  }
}
