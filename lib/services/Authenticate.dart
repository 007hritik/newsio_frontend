import 'package:flutter/material.dart';
import 'package:newsio/screens/home/home.dart';
import 'package:newsio/screens/login/login.dart';

class Authenticate extends StatelessWidget {
  bool isAuthenticated = false;
  @override
  Widget build(BuildContext context) {
    return isAuthenticated ? HomeScreen() : Login();
  }
}
