import 'package:flutter/material.dart';
import 'package:newsio/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    @required this.child,
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [0.1, 0.9],
                      colors: [kPrimaryColor, kPrimaryLightColor]))),
          child
        ],
      ),
    );
  }
}
