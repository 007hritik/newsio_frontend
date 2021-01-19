import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsio/components/rounded_passwordfiled.dart';
import 'package:newsio/components/rounded_buttons.dart';
import 'package:newsio/components/rounded_textfield.dart';
import 'package:newsio/screens/signup/components/orDivider.dart';
import 'package:newsio/screens/signup/components/social_icon_button.dart';
import 'package:newsio/screens/welcome/welcome.dart';

import '../../../constants.dart';
import 'background.dart';

class Body extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Text('SignUP',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SvgPicture.asset('assets/icons/signup.svg'),
            Form(
                key: _formkey,
                child: Column(
                  children: [
                    RoundedInputField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return null;
                        }
                      },
                      hintText: "userId or Email",
                    ),
                    RoundedPasswordField(onChanged: (value) {
                      print(value);
                    }),
                    RoundedButton(
                        color: kPrimaryColor,
                        text: "SignUp",
                        press: () {
                          if (_formkey.currentState.validate()) {
                            Scaffold.of(context)
                                .showSnackBar(SnackBar(content: Text("Empty")));
                          }
                        }),
                    SizedBox(height: size.height * 0.05),
                    GestureDetector(
                        onTap: () {
                          ;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WelcomeScreen()));
                        },
                        child: Container(
                          child: Text("Already have an Account ? Login",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w600)),
                        )),
                    OrDivider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SocialButton(
                              onPress: () {
                                print("facebook tapped");
                              },
                              child: SvgPicture.asset(
                                  'assets/icons/facebook.svg',
                                  width: size.width * 0.08,
                                  color: kPrimaryColor)),
                          SocialButton(
                              onPress: () {
                                print("google tapped");
                              },
                              child: SvgPicture.asset(
                                  'assets/icons/google-plus.svg',
                                  color: kPrimaryColor,
                                  width: size.width * 0.08)),
                          SocialButton(
                            onPress: () {
                              print("twittter tapped");
                            },
                            child: SvgPicture.asset(
                              'assets/icons/twitter.svg',
                              width: size.width * 0.08,
                              color: kPrimaryColor,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ))
          ]),
        ),
      ),
    );
  }
}
