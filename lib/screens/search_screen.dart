import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/cubit/search_cubit/search_cubit.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${SearchCubit.get(context).searchList[index].nameInEnglish}',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\$ ${SearchCubit.get(context).searchList[index].price}',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
            itemCount: SearchCubit.get(context).searchList.length));
  }
}
