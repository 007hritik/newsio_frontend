import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:newsio/screens/loading/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Center(
        child: SpinKitDualRing(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
