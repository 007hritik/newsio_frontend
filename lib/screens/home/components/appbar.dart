import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverAppBar(
      toolbarHeight: 60,
      title: Text(""),
      floating: true,
      elevation: 0,
      backgroundColor: Colors.white,
      actions: [
        InkWell(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            width: 60,
            height: 60,
            padding: EdgeInsets.all(10),
            child: Material(
              shadowColor: Colors.grey,
              elevation: 10,
              child:
                  Icon(Icons.menu, size: size.width * 0.1, color: Colors.black),
            ),
          ),
        ),
        SizedBox(width: size.width - size.width * 0.35),
        InkWell(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            width: 60,
            height: 60,
            padding: EdgeInsets.all(10),
            child: Material(
              shadowColor: Colors.grey,
              elevation: 10,
              child: Icon(Icons.search,
                  size: size.width * 0.1, color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
