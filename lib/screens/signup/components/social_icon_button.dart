import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsio/constants.dart';

class SocialButton extends StatelessWidget {
  Function onPress;
  Widget child;
  Color color;
  SocialButton({
    this.child,
    this.color = kPrimaryColor,
    Key key,
    this.onPress,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: onPress,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: this.color, width: 1),
              shape: BoxShape.circle),
          child: this.child,
        ));
  }
}
