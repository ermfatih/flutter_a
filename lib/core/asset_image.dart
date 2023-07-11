import 'package:flutter/material.dart';

class AssetImageRandom extends StatelessWidget {
  const AssetImageRandom({Key? key, this.height=100}) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/png/bat.png',height: height,);
  }
}
