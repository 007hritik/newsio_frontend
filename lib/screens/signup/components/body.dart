import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:newsio/components/rounded_passwordfiled.dart';
import 'package:newsio/components/rounded_buttons.dart';
import 'package:newsio/components/rounded_textfield.dart';
import 'package:newsio/screens/loading/Loading.dart';
import 'package:newsio/screens/signup/components/orDivider.dart';
import 'package:newsio/screens/signup/components/social_icon_button.dart';
import 'package:newsio/services/auth_service.dart';

import '../../../constants.dart';
import 'background.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formkey = GlobalKey<FormState>();

  bool isLoading;
  @override
  void initState() {
    isLoading = false;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String nameOrEmail, password;
    Size size = MediaQuery.of(context).size;
    return isLoading
        ? Loading()
        : Background(
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(children: [
                  Text('SignUP',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  SvgPicture.asset('assets/icons/signup.svg'),
                  Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          RoundedInputField(
                            onChanged: (val) => nameOrEmail = val,
                            validator: (value) {
                              if (value.isEmpty) {
                                return null;
                              }
                            },
                            hintText: "userId or Email",
                          ),
                          RoundedPasswordField(onChanged: (value) {
                            password = value;
                          }),
                          RoundedButton(
                              color: kPrimaryColor,
                              text: "Login",
                              press: () async {
                                if (_formkey.currentState.validate()) {
                                  setState(() => isLoading = !isLoading);
                                  Response authLoginResponse =
                                      await AuthService()
                                          .signup(nameOrEmail, password);
                                  if (authLoginResponse.data['success'] ==
                                      true) {
                                    setState(() => isLoading = !isLoading);
                                    Fluttertoast.showToast(
                                        msg: authLoginResponse.data['msg'],
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.BOTTOM,
                                        backgroundColor: Colors.red,
                                        fontSize: 16.0);
                                  }
                                  if (authLoginResponse.data["success"] ==
                                      false) {
                                    setState(() {
                                      isLoading = !isLoading;
                                      Fluttertoast.showToast(
                                          msg: authLoginResponse.data['msg'],
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          backgroundColor: Colors.red,
                                          fontSize: 16.0);
                                    });
                                  } else {}
                                }

                                print('Signup Button Pressed');
                              }),
                          SizedBox(height: size.height * 0.05),
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
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
