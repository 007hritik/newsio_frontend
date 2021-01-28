import 'package:flutter/material.dart';
import 'package:newsio/models/User.dart';

import '../../../constants.dart';

//TODO make it state change with diffrent user
Widget drawerHeader() {
  return Container(
    child: UserAccountsDrawerHeader(
      accountName: Text("Hritik Singh"),
      accountEmail: Text("hritiksingh9221@gmial.com"),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: Text('H'),
      ),
    ),
  );
}

Widget drawerTile(String title, Function onTap, context, Icon icon) {
  final size = MediaQuery.of(context).size;
  return InkWell(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: kPrimaryColor, offset: Offset.zero, blurRadius: 15)
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.fromLTRB(10, 15, 10, 10),
      height: size.height * 0.07,
      width: size.width,
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icon,
          Text(title, style: TextStyle(fontSize: 20, color: kPrimaryColor)),
        ],
      )),
    ),
  );
}
