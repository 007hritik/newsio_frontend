import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsio/components/rounded_buttons.dart';
import 'package:newsio/screens/login/login.dart';
import 'package:newsio/screens/signup/signup.dart';
import 'package:newsio/screens/welcome/component/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welocome to App"),
          SizedBox(height: size.height * 0.05),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.45,
          ),
          SizedBox(height: 20),
          RoundedButton(
            text: "Login",
            press: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
          ),
          RoundedButton(
              text: "SignUp",
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Signup()));
              })
        ],
      ),
    );
  }
}
