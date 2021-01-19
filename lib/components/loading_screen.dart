import 'package:flutter/material.dart';
import 'package:newsio/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Scaffold(
            backgroundColor: kPrimaryColor,
            body: SpinKitFadingCube(
              color: kPrimaryLightColor,
              size: 70,
            )),
      ),
    );
  }
}
