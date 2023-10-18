import 'package:flutter/material.dart';
import 'package:new_app/screens/favourite_screen/favourite_screen_components.dart';

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
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return FavouruteListComponents();
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey,
          );
        },
        itemCount: 11,
      ),
    );
  }


}
