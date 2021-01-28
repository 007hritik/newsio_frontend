import 'package:flutter/material.dart';
import 'package:newsio/models/User.dart';
import 'package:newsio/screens/home/home.dart';
import 'package:newsio/screens/login/login.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("rebuilding wrapper");
    print(User.authToken);
    return Consumer<User>(
      builder: (context, user, child) {
        return User.authToken == null ? Login() : HomeScreen();
      },
    );
  }
}
