import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:new_app/components/api.dart';
import 'package:new_app/components/constants.dart';
import 'package:new_app/cubit/homePage_cubit/homePage_state.dart';
import 'package:new_app/models/homePage_model.dart';
import 'package:http/http.dart' as http;

class HomePageCubit extends Cubit<HomePageStates> {
  static HomePageCubit get(context) => BlocProvider.of(context);

  HomePageCubit() : super(HomePageInitialState());
  //HomePageModel? homePageModel;

  List<HomePageModel> homePageList = [];

  Future getHomePage() async {
    emit(HomePageLoadingState());
    var  response =   await Api().get(url: 'http://85.93.89.54:8020/Home/GetWishlistItems',header: {
'Authorization':' Bearer $token',
  });
      //print(response.body);
      List<dynamic> data = jsonDecode(response.body);

      for (int i = 0; i < data.length; i++) {
        homePageList.add(HomePageModel.fromJson(data[i]));
      }
      print('${homePageList[2].date}');
    emit(HomePageSuccesseState());

  }
}
//   Future<HomePageModel> getHome  () async
//   {
//     emit(HomePageLoadingState());
//     var  response =   await Api().get(url: 'http://85.93.89.54:8020/Home/GetWishlistItems',header: {
//      'Authorization':' Bearer $token',
//    });
//     var  data = json.decode(response.body);
//     print('data$data');
//
//
//
//
//
//        homePageModel=HomePageModel.fromJson(response);
//        // print(homePageModel?.date);
//        //
//        //
//        // print('uuuuuuuuuuuuuuu${token}');
//
//
//     emit(HomePageSuccesseState());
//
//
//   }
// }
