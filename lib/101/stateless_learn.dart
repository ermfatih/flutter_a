import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          TextWidget(text: "fatih"),
          _emptyWidget(),
          TextWidget(text: "fatih"),
        ],
      ),
    );
  }
}

class _emptyWidget extends StatelessWidget {
  const _emptyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 20);
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key, required this.text,}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.headline3,);
  }
}
