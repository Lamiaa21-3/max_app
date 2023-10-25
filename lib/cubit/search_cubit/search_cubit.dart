import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:new_app/components/api.dart';

import 'package:http/http.dart' as http;
import 'package:new_app/cubit/login_cubit/login_state.dart';
import 'package:new_app/cubit/register_cubit/register_state.dart';
import 'package:new_app/cubit/search_cubit/search_state.dart';
import 'package:new_app/models/search_model.dart';

import '../login_cubit/login_cubit.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(SearchInitialState());

  static SearchCubit get(context) => BlocProvider.of(context);
  //SearchModel? searchModel;
  List<SearchModel> searchList=[];

  Future<void> searchPost({
    required String searchText,
    required String minPriceText,
    required String maxPriceText,
    required String productId,
  }) async {
    emit(SearchLoadingState());
    await Api()
        .post(url: 'http://85.93.89.54:8020/Home/GetFilterProducts', body: {
      'searchText': searchText,
      'minPriceText': minPriceText,
      'maxPriceText': maxPriceText,
      'productId': productId,

    }).then((value) {
      if(value.statusCode == 200){
        //print('searrrrrrrrrrrrrch${value.body}');
        final response  = json.decode(value!.body);
        print('reeeeeeeeeeee$response');

        for(var ietm in response)
          {
            searchList.add(SearchModel.fromJson(ietm));

          }
        print('lisssst${searchList[1].nameInEnglish}');


        // for (int i = 0; i < response.length; i++) {
        //   searchList.add(SearchModel.fromJson(response[i]));
        // }


       // print('modellllllllll${searchList[1].nameInEnglish}');
        emit(SearchSuccesseState());
      }


    }).catchError((error) {
      print(error);
      emit(SearchFailureState());
    });
  }



}
