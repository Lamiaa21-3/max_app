import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:new_app/components/api.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:http/http.dart' as http;
import 'package:new_app/cubit/login_cubit/login_state.dart';

class LogInCubit extends Cubit<LogInStates> {
  LogInCubit() : super(LogInInitialState());

  static LogInCubit get(context) => BlocProvider.of(context);

  Future<void> loginPost(
      {required String email, required String password}) async {
    emit(LogInInitialState());
    await Api()
        .post(url: 'http://85.93.89.54:8020/token', body: {
      'userName': email,
      'Password': password, //lamiaa213 #2132000lola#
      'grant_type' :'password',
    }).then((value) {
      if(value.statusCode == 200){
        print(value.body);
        emit(LogInPasswordSucessState());
      }
      else if (value.statusCode == 400)
        {
          print(value.body);
          final reponse = json.decode(value.body);
            Fluttertoast.showToast(msg: '${reponse['error_description']}');
          emit(LogInPasswordErorrState());
        }

    }).catchError((error) {
      print(error);
      emit(LogInFailureState());
    });
  }
  Icon suffix = Icon(Icons.visibility);
  bool hidePassword = true;
  void isVisibility ()
  {
    hidePassword = !hidePassword;
    suffix = hidePassword ? Icon(Icons.visibility) : Icon(Icons.visibility_off);
    emit(LogInChangeVisibilityState());
  }

}
// 'Name': 'lamiaa',
// 'Address': 'minia',
// 'Email': 'lamiaa213',
// 'Password': 123,
// 'ConfirmPassword': 123,
// 'IsRepresentative': true,
