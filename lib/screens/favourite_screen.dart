import 'package:flutter/material.dart';

class FavouritScreen extends StatelessWidget {
  const FavouritScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Favourite Screen',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
          ),
          SizedBox(width: 10,),
          Column(
            children: [
              Text('LAMIAA',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              SizedBox(height: 8,),
              Text('22-11-2020'),
              SizedBox(height: 8,),
              Row(
                children: [
                  Text('\$ 23'),
                  SizedBox(width: 8,),
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
