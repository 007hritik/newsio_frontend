import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:newsio/components/rounded_buttons.dart';
import 'package:newsio/components/rounded_passwordfiled.dart';
import 'package:newsio/components/rounded_textfield.dart';
import 'package:newsio/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsio/screens/login/components/background.dart';
import 'package:newsio/screens/welcome/welcome.dart';
import 'package:newsio/services/auth_service.dart';

class Body extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String nameOrEmail;
    String password;
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Text('Login',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
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
                        press: () {
                          if (_formkey.currentState.validate()) {
                            AuthService()
                                .login(nameOrEmail, password)
                                .then((val) {
                              if (val.data['success']) {
                                Fluttertoast.showToast(
                                    msg: "Authenticated",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.redAccent,
                                    fontSize: 16);
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
                                  builder: (context) => WelcomeScreen()));
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
