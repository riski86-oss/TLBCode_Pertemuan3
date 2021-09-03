import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image(
                image: NetworkImage("https://cdn0-production-images-kly.akamaized.net/tAr72vTJCpF4IF9O5L493CD79kE=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2754932/original/005940800_1552970791-fotoHL_kucing.jpg")
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              width: 200,
              child: Image.network("https://cdn0-production-images-kly.akamaized.net/tAr72vTJCpF4IF9O5L493CD79kE=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2754932/original/005940800_1552970791-fotoHL_kucing.jpg")),
            Container(
              height: 200,
              width: 200,
              child: Image.asset("assets/kucing.jpg"))
          ]
        ),
      )
    );
  }
}