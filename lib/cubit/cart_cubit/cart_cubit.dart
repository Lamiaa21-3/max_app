import 'dart:convert';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:new_app/components/api.dart';
import 'package:new_app/components/constants.dart';
import 'package:new_app/cubit/homePage_cubit/homePage_state.dart';
import 'package:new_app/models/homePage_model.dart';
import 'package:http/http.dart' as http;

import '../../models/cart_model.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartStates> {
  static CartCubit get(context) => BlocProvider.of(context);
  Set<String> favouriteId={};

  CartCubit() : super(CartInitialState());
  //HomePageModel? homePageModel;

  bool? isChange;
  Color? color ;
  void isTap(){
    if(isChange == true)
      {
       color=Colors.red;
       
       isChange=false;
       emit(CartTrueSuccesseState());
      }
    else{
      color=Colors.black;
      isChange=true;
      emit(CartFalseSuccesseState());
    }
  }

  List<CartHomePage> cartList = [];


  Future getCart() async {
    emit(CartLoadingState());
    var  response =   await Api().get(url: 'http://85.93.89.54:8020/Home/GetBestSelling',header: {
      'Authorization':' Bearer $token',
    });
    //print(response.body);
    List<dynamic> data = jsonDecode(response.body);

    for (int i = 0; i < data.length; i++) {
      cartList.add(CartHomePage.fromJson(data[i]));
      //favouriteId.add(data['']);
      
    }
   // print('lllllllllllllllll${cartList[2].nameInEnglish}');
    emit(CartSuccesseState());

  }
}

