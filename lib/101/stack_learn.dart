import 'package:flutter/material.dart';
import 'package:flutter_a/core/asset_image.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          AssetImageRandom(),
          IconButton(onPressed: () {
            
          }, icon: Icon(Icons.add))
        ],
      )
    );
  }
}
