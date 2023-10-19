import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/cubit/favourite_cubit/favourite_cubit.dart';
import 'package:new_app/cubit/favourite_cubit/favourite_state.dart';
import 'package:new_app/screens/favourite_screen/favourite_screen_components.dart';

class FavouritScreen extends StatelessWidget {
  const FavouritScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FavouriteCubit.get(context).getFavourite();
    print('favourite');
    return BlocConsumer<FavouriteCubit,FavouriteStates>(
      listener: (context,state){},
      builder: (context,state){
       return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Favourite Screen',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return FavouruteListComponents(index: index,);
            },
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey,
              );
            },
            itemCount: FavouriteCubit.get(context).favouriteLisy.length,
          ),
        );
      },

    );
  }


}
