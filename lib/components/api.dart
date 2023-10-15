import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api {
  Future post({required String url ,@required dynamic body}) async {
   return await http
        .post(Uri.parse(url), body: body);

  }
  Future<dynamic> get({required String url,required Map<String ,String> header}) async
  {

    return await  http.get(Uri.parse(url),headers:header);


  }
}
//http://85.93.89.54:8020/api/Account/Register
// 'Name': 'lamiaa',
//       'Address': 'minia',
//       'Email': 'lamiaa213',
//       'Password': 123,
//       'ConfirmPassword': 123,
//       'IsRepresentative': true,