import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    @required this.child,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Image.asset('assets/images/main_top.png',
                width: size.width * 0.5),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset('assets/images/login_bottom.png',
                  height: size.height * 0.12)),
          child
        ],
      ),
    );
  }
}
