import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsio/components/rounded_buttons.dart';
import 'package:newsio/components/rounded_passwordfiled.dart';
import 'package:newsio/components/rounded_textfield.dart';
import 'package:newsio/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsio/models/User.dart';
import 'package:newsio/screens/loading/Loading.dart';
import 'package:newsio/screens/login/components/background.dart';
import 'package:newsio/screens/signup/signup.dart';
import 'package:newsio/screens/welcome/welcome.dart';
import 'package:newsio/services/auth_service.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isLoading = false;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context, listen: false);
    String nameOrEmail;
    String password;
    Size size = MediaQuery.of(context).size;
    return isLoading
        ? Loading()
        : Background(
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(children: [
                  Text('Login',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  SizedBox(height: size.height * 0.05),
                  SvgPicture.asset('assets/icons/login.svg'),
                  Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          RoundedInputField(
                            validator: (val) {
                              if (val.isEmpty) {
                                return "Please Enter Email or Text";
                              }
                              if (val.toString().length < 5) {
                                return "length cannot be less than 5";
                              }
                            },
                            onChanged: (val) {
                              nameOrEmail = val;
                            },
                            hintText: "Name or Email",
                          ),
                          RoundedPasswordField(onChanged: (value) {
                            password = value;
                          }),
                          RoundedButton(
                              color: kPrimaryColor,
                              text: "Login",
                              press: () async {
                                if (_formkey.currentState.validate()) {
                                  setState(() => isLoading = true);
                                  AuthService()
                                      .login(nameOrEmail, password)
                                      .then((val) {
                                    if (val.data['success']) {
                                      user.setAuthToken(val.data['token']);
                                    }
                                  });
                                }
                                print('Login Button Pressed');
                              }),
                          SizedBox(height: size.height * 0.05),
                          GestureDetector(
                              onTap: () {
                                ;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()));
                              },
                              child: Container(
                                child: Text("Dont't have an Account ? Sigh Up",
                                    style: TextStyle(
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.w600)),
                              ))
                        ],
                      ))
                ]),
              ),
            ),
          );
  }
}
