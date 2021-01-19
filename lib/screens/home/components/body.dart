import 'package:flutter/material.dart';

import 'appbar.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SafeArea(
          child: CustomScrollView(
        slivers: <Widget>[
          HomeAppBar(),
          NestedScrollView(
            scrollDirection: Axis.horizontal,
            body: SliverFixedExtentList(
              itemExtent: 100,
              delegate: SliverChildListDelegate([
                Container(color: Colors.red),
                Container(color: Colors.purple),
                Container(color: Colors.green),
                Container(color: Colors.orange),
                Container(color: Colors.yellow),
                Container(color: Colors.pink),
              ]),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 150.0,
            delegate: SliverChildListDelegate(
              [
                Container(color: Colors.red),
                Container(color: Colors.purple),
                Container(color: Colors.green),
                Container(color: Colors.orange),
                Container(color: Colors.yellow),
                Container(color: Colors.pink),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
