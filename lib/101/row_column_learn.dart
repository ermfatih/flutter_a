import 'package:flutter/material.dart';

class RowColumnLearn extends StatelessWidget {
  const RowColumnLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
          Expanded(flex: 3,child: Container(color: Colors.white)),
          Expanded(flex: 2,child: Container(color: Colors.black)),
          Expanded(flex: 1,child: Container(color: Colors.blue)),
          Expanded(flex: 1,child: Container(color: Colors.lime)),
        ],
      ),
    );
  }
}
