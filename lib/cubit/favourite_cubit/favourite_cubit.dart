import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:new_app/components/api.dart';
import 'package:new_app/components/constants.dart';
import 'package:new_app/cubit/favourite_cubit/favourite_state.dart';
import 'package:new_app/cubit/homePage_cubit/homePage_state.dart';
import 'package:new_app/models/favourite_model.dart';
import 'package:new_app/models/homePage_model.dart';
import 'package:http/http.dart' as http;

import '../../models/cart_model.dart';


class FavouriteCubit extends Cubit<FavouriteStates> {
  static FavouriteCubit get(context) => BlocProvider.of(context);

  FavouriteCubit() : super(FavouriteInitialState());
  //HomePageModel? homePageModel;


  List<FavouriteModel> favouriteLisy = [];


  Future getFavourite() async {
    emit(FavouriteLoadingState());
    var  response =   await Api().get(url: 'http://85.93.89.54:8020/Home/ShowCartItems',header: {
      'Authorization':' Bearer $token',
    });
    //print(response.body);
  final data = jsonDecode(response.body);
  print('ddddddddddddddddd$data');

    for (int i = 0; i < data.length; i++) {
      favouriteLisy.add(FavouriteModel.fromJson(data[i]));
    }
   // print('lamiaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');
    //print('llllllllllllllllmmmmmmml${favouriteLisy[2].productDetail?.addedDate}');
    emit(FavouriteSuccesseState());

  }
}

