import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 200,
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: [
              SliverFixedExtentList(
                itemExtent: 50,
                delegate: SliverChildListDelegate([
                  Container(height: 100, color: Colors.purple),
                  Container(height: 100, color: Colors.green),
                  Container(height: 100, color: Colors.orange),
                  Container(height: 100, color: Colors.red),
                  Container(height: 100, color: Colors.yellow),
                  Container(height: 100, color: Colors.pink),
                ]),
              )
            ],
          ),
        ),
        Container(
          width: 200,
          height: 200,
          child: CustomScrollView(
            scrollDirection: Axis.horizontal,
            slivers: [
              SliverFixedExtentList(
                itemExtent: 50,
                delegate: SliverChildListDelegate([
                  Container(height: 100, color: Colors.purple),
                  Container(height: 100, color: Colors.green),
                  Container(height: 100, color: Colors.orange),
                  Container(height: 100, color: Colors.red),
                  Container(height: 100, color: Colors.yellow),
                  Container(height: 100, color: Colors.pink),
                ]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
