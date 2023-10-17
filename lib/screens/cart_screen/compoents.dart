




import 'package:flutter/material.dart';
import 'package:new_app/cubit/homePage_cubit/homePage_cubit.dart';

import '../../cubit/cart_cubit/cart_cubit.dart';

Padding buildGrideView() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          blurRadius: 40.0,
          offset: Offset(10,10),
        ),
      ]),
      child: Card(


        shadowColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [



            Row(
              children: [
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined)),
              ],
            ),
            Image.network(
                'https://www.befunky.com/images/prismic/5ddfea42-7377-4bef-9ac4-f3bd407d52ab_landing-photo-to-cartoon-img5.jpeg?auto=avif,webp&format=jpg&width=863',height: 60

            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                      'lamiaa'),
                  SizedBox(width: 60,),
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.green,



                      ),
                      child: Icon(Icons.arrow_forward_sharp,color: Colors.white,))
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}



TextFormField buildTextFormField() {
  return TextFormField(
    //controller: searchController,
    decoration: InputDecoration(
        hintText: 'Search here....',
        labelStyle: TextStyle(color: Colors.black),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
          const BorderSide(color: Colors.indigo),
          borderRadius: BorderRadius.circular(8),
        )),
  );
}