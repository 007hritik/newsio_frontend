import 'package:flutter/material.dart';
import 'package:newsio/constants.dart';
import 'package:newsio/screens/home/home.dart';
import 'package:newsio/screens/loading/Loading.dart';
import 'package:newsio/screens/login/login.dart';
import 'package:newsio/services/Authenticate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Auth',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: Authenticate());
  }
}
