import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox.fromSize(size: const Size(30,30),),
          Container(
              height: 50,
              width: 50,
              color: ColorsItems.saddle,
              child: const Text('data'))
        ],
      ),
    );
  }
}
class ColorsItems{
  static const Color pharlap= Color(0xFF9B827D);
  static const Color saddle= Color.fromRGBO(78,42,34,1);
}
