import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:newsio/models/User.dart';
import 'package:provider/provider.dart';

class AuthService {
  final Dio dio = new Dio();
  login(name, password) async {
    try {
      return await dio.post("https://awt-auth.herokuapp.com/authenticate",
          data: {"name": name, "password": password},
          options: Options(contentType: Headers.formUrlEncodedContentType));
    } on DioError catch (e) {
      Fluttertoast.showToast(
          msg: e.response.data['msg'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.redAccent,
          fontSize: 16.0);
    }
  }

  signup(String userName, String password) async {
    try {
      return await dio.post("https://awt-auth.herokuapp.com/adduser",
          data: {"name": userName, "password": password},
          options: Options(contentType: Headers.formUrlEncodedContentType));
    } on DioError catch (e) {
      Fluttertoast.showToast(
          msg: e.response.data['msg'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.redAccent,
          fontSize: 16.0);
    }
  }
  // Stream<User> get user {
  //   return
  //   }
}
