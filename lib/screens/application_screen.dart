import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApplicationScreen extends StatefulWidget {
  ApplicationScreen({Key? key}) : super(key: key);

  @override
  State<ApplicationScreen> createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<ApplicationScreen> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ExpansionTile(
            title: Text(
              'Order 1',
              style: TextStyle(fontSize: 23),
            ),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Num : 32334',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Order Status :',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Delivered',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Total : \$2000',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/application1.jpeg',width: 100,height: 100,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Air pods max by Apple',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'Price: \$200',
                                style:
                                TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                              Text(
                                'Qty: 4',
                                style:
                                TextStyle(fontSize: 18, color: Colors.grey),
                              ), Text(
                                'Total: \$ 800',
                                style:
                                TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18,),
                    Row(
                      children: [
                        Image.asset('assets/application2.jpeg',width: 100,height: 100,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Air pods min by Apple',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'Price: \$700',
                                style:
                                TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                              Text(
                                'Qty: 9',
                                style:
                                TextStyle(fontSize: 18, color: Colors.grey),
                              ), Text(
                                'Total: \$1200',
                                style:
                                TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          ExpansionTile(
            title: Text(
              'Order 1',
              style: TextStyle(fontSize: 23),
            ),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Num : 32334',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Order Status :',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Delivered',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Total : \$2000',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/application1.jpeg',width: 100,height: 100,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Air pods max by Apple',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'Price: \$200',
                                style:
                                TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                              Text(
                                'Qty: 4',
                                style:
                                TextStyle(fontSize: 18, color: Colors.grey),
                              ), Text(
                                'Total: \$ 800',
                                style:
                                TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18,),
                    Row(
                      children: [
                        Image.asset('assets/application2.jpeg',width: 100,height: 100,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Air pods min by Apple',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                'Price: \$700',
                                style:
                                TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                              Text(
                                'Qty: 9',
                                style:
                                TextStyle(fontSize: 18, color: Colors.grey),
                              ), Text(
                                'Total: \$1200',
                                style:
                                TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
