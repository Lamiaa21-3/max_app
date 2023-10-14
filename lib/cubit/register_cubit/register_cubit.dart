import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:new_app/components/api.dart';

import 'package:http/http.dart' as http;

class RegisterCubit extends Cubit {
  RegisterCubit(super.initialState);

  Future<dynamic> registerPost() async {
   http.Response response = await Api().post(url: 'http://85.93.89.54:8020/api/Account/Register',
       body: {
      'Name': 'lamiaa',
      'Address': 'minia',
      'Email': 'lamiaa213',
      'Password': 123,
      'ConfirmPassword': 123,
      'IsRepresentative': true,
    });
  }
}
