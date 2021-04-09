import 'package:flutter/material.dart';
import 'package:newsio/components/rounded_buttons.dart';
import 'package:newsio/components/rounded_textfield.dart';
import 'package:newsio/constants.dart';
import 'package:newsio/models/Feeds.dart';

class CreateFeeds extends StatelessWidget {
  Feeds newPost = Feeds();
  String title;
  String textContent;
  List<String> titleValdationError = [];
  List<String> descriptionValidationError = [];

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Create Post"),
          leading: FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 25,
              ))),
      body: Form(
        key: _formkey,
        child: Column(children: [
          SizedBox(height: 10),
          RoundedInputField(
            validator: (val) {
              if (val.isEmpty) {
                return "Title cannot be empty";
              } else if (val.length < 5) {
                return ("Titile cannot be less than 5 letters");
              }
            },
            onChanged: (value) => title = value,
            icon: null,
            hintText: 'Title',
          ),
          RoundedInputField(
            onChanged: (value) => textContent = value,
            icon: null,
            hintText: 'Description',
          ),
          RoundedButton(
            text: "Post",
            press: () {
              if (_formkey.currentState.validate()) {
                newPost.setTitle = title;
                newPost.setTextContent = textContent;
                Feeds.allFeeds.add(newPost);
                Navigator.pop(context);
              } else {
                print("error occured");
              }
            },
          )
        ]),
      ),
    );
  }
}
