import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/cubit/homePage_cubit/homePage_cubit.dart';
import 'package:new_app/cubit/login_cubit/login_cubit.dart';
import 'package:new_app/cubit/login_cubit/login_state.dart';

import '../components/constants.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        HomePageCubit.get(context).getHome();
        print('object');
    print(LogInCubit.get(context).autherModel?.userName);
    return BlocConsumer<LogInCubit,LogInStates>(
      listener: (context,state) {},
      builder: (context,state) {
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
            elevation: 0,
            title: Text('HomePage', style: TextStyle(color: Colors.black),),
          ),
          body:GridView.builder(
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 30,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.teal,

                        ),
                        child: Center(child: Text('12% OFF')),
                      ),
                      Image.network(
                          'https://www.pngwing.com/en/search?q=watches'),
                      Center(child: Text('watch')),
                    ],
                  ),
                ),
              );
            }



          ),

        );
      },
    );
  }
      }





