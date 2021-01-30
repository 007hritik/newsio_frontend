import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class AuthService {
  final Dio dio = new Dio();

  Future<Response> login(String name, String password) async {
    Response loginResponse;
    try {
      loginResponse = await dio.post(
          "https://awt-auth.herokuapp.com/authenticate",
          data: {"name": name, "password": password},
          options: Options(contentType: Headers.formUrlEncodedContentType));
      return loginResponse;
    } on DioError catch (e) {
      Fluttertoast.showToast(
          msg: e.response.data['msg'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.redAccent,
          fontSize: 16.0);
      return null;
    }
  }

  Future<Response> signup(String name, String password) async {
    Response signupResponse;
    try {
      signupResponse = await dio.post("https://awt-auth.herokuapp.com/adduser",
          data: {"name": name, "password": password},
          options: Options(contentType: Headers.formUrlEncodedContentType));
      return signupResponse;
    } on DioError catch (e) {
      Fluttertoast.showToast(
          msg: e.response.data['msg'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.redAccent,
          fontSize: 16.0);
      return null;
    }
  }
}
