import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          SizedBox(
            width: 400,
            height: 300,
            child: PngImages(name: ImageItems().bat),
          ),
          Image.network('https://www.freepngs.com/starfish-pngs?pgid=jemqu0d2-5cc09163-5461-11e8-a9ff-063f49e9a7e4',
            errorBuilder: (context, error, stackTrace) => PngImages(name: ImageItems().Spiderman),)
        ]));
  }
}

class ImageItems {
  final String Screenshot = 'Screenshot';
  final String Screenshot2 = 'Screenshot2';
  final String Screenshot3 = 'Screenshot3';
  final String Spiderman = 'spiderman';
  final String bat = 'bat';
}

class PngImages extends StatelessWidget {
  const PngImages({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return buildImage();
  }

  Image buildImage() => Image.asset('assets/png/$name.png');
}
