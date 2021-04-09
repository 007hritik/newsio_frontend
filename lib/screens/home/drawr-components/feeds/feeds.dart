import 'package:flutter/material.dart';
import 'package:newsio/constants.dart';
import 'components/body.dart';
import 'components/createFeeds.dart';

class Feeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Text("+"),
          backgroundColor: kPrimaryColor,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreateFeeds()));
          }),
      body: Body(),
    );
  }
}
