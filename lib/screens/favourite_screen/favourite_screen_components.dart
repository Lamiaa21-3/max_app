

import 'package:flutter/material.dart';
import 'package:new_app/cubit/favourite_cubit/favourite_cubit.dart';

class FavouruteListComponents extends StatelessWidget {
   FavouruteListComponents({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return   Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Image.asset('assets/favourite.png',width: 100,height: 100,),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12,),
                Row(
                  children: [
                    Text(
                      '${FavouriteCubit.get(context).favouriteLisy[index].product}',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    SizedBox(
                      width: 180,
                    ),

                    Icon(Icons.highlight_remove),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text('${FavouriteCubit.get(context).favouriteLisy[index].date}',style: TextStyle( fontSize: 18),),
                SizedBox(
                  height: 8,
                ),
                Row(

                  children: [
                    Text('\$ ${FavouriteCubit.get(context).favouriteLisy[index].product?.price}',style: TextStyle( fontSize: 18),),
                    SizedBox(
                      width: 170,
                    ),

                    Icon(Icons.shopping_cart_rounded),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }
  }

