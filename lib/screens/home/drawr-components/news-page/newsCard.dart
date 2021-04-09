import "package:flutter/material.dart";

Widget newsCard(String title, AssetImage image, String publisherName) {
  return Container(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [Image(image: image), Text(title)],
  ));
}
