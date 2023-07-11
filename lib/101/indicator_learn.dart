import 'package:flutter/material.dart';
import 'package:flutter_a/101/custom_widget_learn.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const[
          CenterProgressIndicator()
        ],
      ),
      body: const LinearProgressIndicator(
        value: 1,
      )
    );
  }
}

class CenterProgressIndicator extends StatelessWidget {
  const CenterProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Center(child: CircularProgressIndicator(
      value: 1,
    ),);
  }
}
