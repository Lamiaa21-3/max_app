

import 'package:flutter/material.dart';

class FavouruteListComponents extends StatelessWidget {
  const FavouruteListComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.green,
              width: 100,
              height: 100,
            ),
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
                      'LAMIAA',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    SizedBox(
                      width: 120,
                    ),

                    Icon(Icons.highlight_remove),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text('22-11-2020',style: TextStyle( fontSize: 18),),
                SizedBox(
                  height: 8,
                ),
                Row(

                  children: [
                    Text('\$ 23',style: TextStyle( fontSize: 18),),
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

