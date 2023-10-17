import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/cubit/cart_cubit/cart_cubit.dart';
import 'package:new_app/cubit/cart_cubit/cart_state.dart';
import 'package:new_app/screens/search_screen.dart';

import '../../components/components.dart';
import '../../cubit/homePage_cubit/homePage_cubit.dart';
import '../../cubit/homePage_cubit/homePage_state.dart';
import '../../models/cart_model.dart';
import 'compoents.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CartCubit.get(context).getCart();
    return BlocConsumer<CartCubit, CartStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: Center(
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
                            icon: const Icon(Icons.shopping_cart_outlined),
                            iconSize: 38,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Category',
                        style: TextStyle(fontSize: 22),
                      ),
                      SizedBox(
                        height: 140,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          //itemCount:2,
                          itemCount: CartCubit.get(context).cartList.length,

                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.all(5),
                              width: 70,
                              child: Column(
                                children: [
                                  Image.network(
                                      'https://canprev.ca/wp-content/uploads/2023/03/1647358198_CP-pH-Pro-90vcaps-RGB-195295-V1_839_1430.png',height: 60

                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '${CartCubit.get(context).cartList[index].nameInEnglish}',
                                    style: TextStyle(fontSize: 15,),
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            );
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
                          const SizedBox(
                            width: 140,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_forward_sharp,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                            itemCount: CartCubit.get(context).cartList.length,
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
        });
  }
}
