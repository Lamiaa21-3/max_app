import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api {
  Future post({required String url ,@required dynamic body}) async {
    http.Response response = await http
        .post(Uri.parse(url), body: body);
    Map<String,dynamic>data = jsonDecode(response.body);
    print(data);
    return data;
  }
}
//http://85.93.89.54:8020/api/Account/Register
// 'Name': 'lamiaa',
//       'Address': 'minia',
//       'Email': 'lamiaa213',
//       'Password': 123,
//       'ConfirmPassword': 123,
//       'IsRepresentative': true,