import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      slivers: [
        SliverFixedExtentList(
          itemExtent: 100,
          delegate: SliverChildListDelegate([
            Container(width: 50, color: Colors.red),
            Container(width: 50, color: Colors.purple),
            Container(width: 50, color: Colors.green),
            Container(width: 50, color: Colors.orange),
            Container(width: 50, color: Colors.yellow),
            Container(width: 50, color: Colors.pink),
          ]),
        )
      ],
    );
  }
}
