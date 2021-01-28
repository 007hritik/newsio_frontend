import 'package:flutter/material.dart';
import 'package:newsio/constants.dart';
import 'package:newsio/models/User.dart';
import 'package:newsio/services/Wrapper.dart';
import 'package:provider/provider.dart';

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
        home: ChangeNotifierProvider<User>(
            create: (_) => User(), child: Wrapper()));
  }
}
