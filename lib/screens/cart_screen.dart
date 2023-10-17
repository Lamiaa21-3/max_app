import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/components.dart';
import '../cubit/homePage_cubit/homePage_cubit.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                      child: TextFormField(
                        controller: searchController,
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
                      ),
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
                    itemCount: 10,

                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.teal,
                              width: 100,
                              height: 70,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('lamiaaaaaaaaaa'),
                        ],
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
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
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
                               SizedBox(height: 20,
                               child:  Image.network(
                                 ''

                               ),),
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
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
