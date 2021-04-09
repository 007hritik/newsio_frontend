import 'package:flutter/material.dart';
import 'background.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> imgPath = [
    'assets/feeds_profile _images/michael-dam-mEZ3PoFGs_k-unsplash.jpg',
    'assets/feeds_profile _images/michael-henry-5OyGRn_r9Y4-unsplash.jpg',
    "assets/feeds_profile _images/jose-alejandro-cuffia-k1LNP6dnyAE-unsplash.jpg",
    "assets/feeds_profile _images/mateo-avila-chinchilla-x_8oJhYU31k-unsplash.jpg",
    "assets/feeds_profile _images/michael-henry-5OyGRn_r9Y4-unsplash.jpg",
    'assets/feeds_profile _images/shuttergames-9BE8hiqvUM4-unsplash.jpg',
    'assets/feeds_profile _images/steve-halama-dfwFFQLvc0s-unsplash.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      children: [
        Container(
            decoration: BoxDecoration(
                color: const Color(0xff251432),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(100))),
            height: size.height * 0.2,
            width: double.infinity,
            child: Text("Hello"))
      ],
    ));
  }

  Widget timelineStories() {
    return Row(
      children: [
        SizedBox(width: 30),
        ListView.builder(
          itemExtent: 20,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: imgPath.length,
          itemBuilder: (context, i) {
            return singleTimelineStories('user', imgPath[i]);
          },
        )
      ],
    );
  }

  Widget singleTimelineStories(String userName, String imageLocation) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
              radius: 27,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage(imageLocation))
        ],
      ),
    );
  }
}
