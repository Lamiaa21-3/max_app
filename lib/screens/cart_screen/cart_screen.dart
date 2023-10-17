import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/screens/search_screen.dart';

import '../../components/components.dart';
import '../../cubit/homePage_cubit/homePage_cubit.dart';
import '../../cubit/homePage_cubit/homePage_state.dart';
import 'compoents.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    HomePageCubit.get(context).getCart();
    return BlocConsumer<HomePageCubit,HomePageStates>(
    listener: (context, state) {},
    builder: (context, state) {
      return Scaffold(
        body:
          Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: buildTextFormField(),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_cart_outlined),
                        iconSize: 38,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Category',
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      //itemCount:2,
                      itemCount: HomePageCubit.get(context).cartList.length,

                      itemBuilder: (BuildContext context, int index) {
                        return buildColumnListView(index: HomePageCubit.get(context).cartList.length, context: context);
                      },
                      // children: <Widget>[
                      //   // Image.asset(
                      //   //     '${bookData.items[in]}')
                      // ]
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Best Selling Items',
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(width: 140,),
                      IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon:  Icon( Icons.arrow_forward_sharp,color: Colors.black,),
                       ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: GridView.builder(

                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: HomePageCubit.get(context).homePageList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return buildGrideView();
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    );
  }


}
