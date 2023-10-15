


import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:new_app/components/api.dart';
import 'package:new_app/components/constants.dart';
import 'package:new_app/cubit/homePage_cubit/homePage_state.dart';
import 'package:new_app/models/homePage_model.dart';

class HomePageCubit extends Cubit<HomePageStates> {
  static HomePageCubit get(context) => BlocProvider.of(context);
  HomePageCubit(): super(HomePageInitialState());
  HomePageModel? homePageModel;
  
  Future<void> getHome  () async
  {
    emit(HomePageLoadingState());
   await Api().get(url: 'http://85.93.89.54:8020/Home/GetWishlistItems',header: {
     'Authorization':' Bearer $token',
   }).then((value)
   {

     if(value.statusCode == 200){
       final response  = json.decode(value!.body);


       homePageModel=HomePageModel.fromJson(response);
       print(homePageModel?.date);


       print('uuuuuuuuuuuuuuu${token}');


    emit(HomePageSuccesseState());
     }
     else if (value.statusCode == 400)
     {
       print(value.body);
       final reponse = json.decode(value.body);
       Fluttertoast.showToast(msg: 'error_description');
       emit(HomePagePasswordErorrState());
     }

   }).catchError((error) {
     print(error);
     emit(HomePageFailureState());

   });
  }
}