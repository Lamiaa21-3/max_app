import 'package:flutter/material.dart';

import 'onBoardingComponent.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel(this.image, this.title, this.body);
}

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  List<BoardingModel> boardingList = [
    BoardingModel('assets/onBoarding.jpeg', 'request Buy',
        'You can use this application to buy anything you want easly from e-commerce'),
    BoardingModel('assets/onBoarding4.png', 'shose bougths',
        'You can  shose anything you want easly from e-commerce')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: PageView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return buildColumnOnboarding(boardingList[index]);
          },
          itemCount: boardingList.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {},
        child: Icon(Icons.arrow_forward_sharp),
      ),
    );
  }

  Column buildColumnOnboarding(BoardingModel model) {
    return Column(
      children: [
        Image.asset('${model.image}'),
        SizedBox(
          height: 30,
        ),
        Text(
          '${model.title}',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '${model.body}',
          style: TextStyle(
            fontSize: 18,
          ),
          maxLines: 2,
          overflow: TextOverflow.visible,
        ),
      ],
    );
  }
}
