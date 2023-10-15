import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:new_app/components/api.dart';

import 'package:http/http.dart' as http;
import 'package:new_app/cubit/login_cubit/login_state.dart';
import 'package:new_app/cubit/register_cubit/register_state.dart';

import '../login_cubit/login_cubit.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);

  Future<void> registerPost({
    required String email,
    required String password,
    required String address,
    required String confirmPassword,
  }) async {
    emit(RegisterLoadingState());
    await Api()
        .post(url: 'http://85.93.89.54:8020/api/Account/Register', body: {
      'Address': address,
      'Email': email,
      'Password': password,
      'ConfirmPassword': confirmPassword,
'IsRepresentative':'true',
    }).then((value) {
      log(value.body.toString());
      emit(RegisterSuccesseState());
    }).catchError((error) {
      print(error);
      emit(RegisterFailureState());
    });
  }

  Icon suffix = Icon(Icons.visibility);
  bool hidePassword = true;

  void isVisibility() {
    hidePassword = !hidePassword;
    suffix = hidePassword ? Icon(Icons.visibility) : Icon(Icons.visibility_off);
    emit(RegisterChangeVisibilityState());
  }
}
