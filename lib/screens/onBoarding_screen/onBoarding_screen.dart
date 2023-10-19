import 'package:flutter/material.dart';
import 'package:new_app/screens/register_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onBoardingComponent.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel(this.image, this.title, this.body);
}

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<BoardingModel> boardingList = [
    BoardingModel('assets/onboss.png', 'request Buy',
        'You can use this application to buy anything you want easly from e-commerce'),
    BoardingModel('assets/onBoa5.png', 'shose bougths',
        'You can  shose anything you want easly from e-commerce')
  ];

  var boardingController = PageController();

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0, actions: [
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
          },
          child: Text(
            'SKIP',
            style: TextStyle(color: Colors.deepPurple,fontSize: 18),
          ),
        ),
      ]),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (int index){
                if(index == boardingList.length -1)
                  {
                    setState(() {
                      isLast=true;
                    });
                    print('the last');
                  }
                else{
                  setState(() {
                    isLast=false;
                  });
                  print('not last');
                }
              },
              controller: boardingController,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return buildColumnOnboarding(boardingList[index]);
              },
              itemCount: boardingList.length,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                SmoothPageIndicator(
                    effect: ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: Colors.deepPurple,
                      dotHeight: 10,
                      dotWidth: 10,
                      spacing: 0.5,
                      expansionFactor: 4,
                    ),
                    controller: boardingController,
                    count: boardingList.length),
                Spacer(),
                FloatingActionButton(
                  backgroundColor: Colors.deepPurple,
                  onPressed: () {
                    if(isLast)
                      {
                       setState(() {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                       });

                      }
                    else {
                      boardingController.nextPage(
                          duration: Duration(milliseconds: 750),
                          curve: Curves.fastLinearToSlowEaseIn);
                    }
                  },
                  child: Icon(Icons.arrow_forward_sharp),
                ),
              ],
            ),
          )
        ],
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
            fontSize: 15,
          ),
          maxLines: 2,
          overflow: TextOverflow.visible,
        ),
      ],
    );
  }
}
